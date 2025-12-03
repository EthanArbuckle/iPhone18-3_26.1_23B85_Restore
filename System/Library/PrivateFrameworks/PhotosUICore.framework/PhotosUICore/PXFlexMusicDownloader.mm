@interface PXFlexMusicDownloader
- (NSString)description;
- (PXFlexMusicDownloader)init;
- (PXFlexMusicDownloader)initWithAsset:(id)asset resource:(int64_t)resource;
- (void)_handleCancellation;
- (void)_queue_finishIfPossible;
- (void)_queue_handleDownloadFinished:(BOOL)finished error:(id)error;
- (void)_queue_handleDownloadProgressChanged;
- (void)_queue_startWithCompletion:(id)completion;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setDownloadFractionCompleted:(double)completed;
- (void)startWithCompletion:(id)completion;
@end

@implementation PXFlexMusicDownloader

- (void)_queue_handleDownloadFinished:(BOOL)finished error:(id)error
{
  v30 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!self->_queue_isFinished)
  {
    v8 = PLAudioPlaybackGetLog();
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_END, v10, "PXFlexMusicDownloaderDownload", " enableTelemetry=YES ", buf, 2u);
      }
    }

    self->_queue_isFinished = 1;
    if (finished)
    {
      v11 = 0;
    }

    else
    {
      if ([errorCopy px_isDomain:@"PXExpectationErrorDomain" code:1])
      {
        [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXFlexMusicDownloaderErrorDomain" code:1 underlyingError:errorCopy debugDescription:{@"%@ timed out", self, v23}];
      }

      else
      {
        [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXFlexMusicDownloaderErrorDomain" code:0 underlyingError:errorCopy debugDescription:{@"%@ encountered an unknown error: %@", self, errorCopy}];
      }
      v11 = ;
      v12 = PLAudioPlaybackGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v28 = 2114;
        v29 = v11;
        _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "%{public}@ download failed with error %{public}@", buf, 0x16u);
      }
    }

    if (!self->_queue_completionHandler)
    {
      PXAssertGetLog();
    }

    resource = [(PXFlexMusicDownloader *)self resource];
    switch(resource)
    {
      case 1:
        v14 = @"com.apple.photos.CPAnalytics.flexMusicSongArtworkDownloaded";
        break;
      case 2:
        v14 = @"com.apple.photos.CPAnalytics.flexMusicSongAudioDownloaded";
        break;
      case 0:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXFlexMusicDownloader.m" lineNumber:204 description:@"Code which should be unreachable has been reached"];

        abort();
      default:
        v14 = 0;
        break;
    }

    v15 = MEMORY[0x1E6991F28];
    downloadSignpostID = self->_downloadSignpostID;
    v17 = *MEMORY[0x1E6991C98];
    v24[0] = *MEMORY[0x1E6991E20];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v24[1] = *MEMORY[0x1E6991E40];
    v25[0] = v19;
    v25[1] = v14;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
    [v15 endSignpost:downloadSignpostID forEventName:v17 withPayload:v20];

    self->_downloadSignpostID = 0;
    (*(self->_queue_completionHandler + 2))();
    queue_completionHandler = self->_queue_completionHandler;
    self->_queue_completionHandler = 0;
  }
}

- (void)_queue_finishIfPossible
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = +[PXFlexMusicLibrary sharedLibrary];
  asset = [(PXFlexMusicDownloader *)self asset];
  v5 = [v3 localURLForAsset:asset resourceType:{-[PXFlexMusicDownloader resource](self, "resource")}];

  if (v5)
  {
    v6 = PLAudioPlaybackGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      selfCopy = self;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ download finished with URL %{public}@", &v7, 0x16u);
    }

    [(PXExpectation *)self->_queue_downloadExpectation fulfill];
  }
}

- (void)_handleCancellation
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PXFlexMusicDownloader__handleCancellation__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(queue, block);
}

void __44__PXFlexMusicDownloader__handleCancellation__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 16) = 1;
  v3 = +[PXFlexMusicLibrary sharedLibrary];
  v2 = [*(a1 + 32) asset];
  [v3 cancelDownloadForAsset:v2 resourceType:{objc_msgSend(*(a1 + 32), "resource")}];
}

- (void)setDownloadFractionCompleted:(double)completed
{
  v10 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_downloadFractionCompleted != completed)
  {
    self->_downloadFractionCompleted = completed;
    v5 = PLAudioPlaybackGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543618;
      selfCopy = self;
      v8 = 2048;
      completedCopy = completed;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ download progress changed: %.f", &v6, 0x16u);
    }

    if (completed == -1.0)
    {
      [(PXExpectation *)self->_queue_downloadExpectation fulfill];
    }

    else
    {
      [(NSProgress *)self->_progress setCompletedUnitCount:(completed * 100.0)];
    }

    if (completed >= 1.0)
    {
      [(PXFlexMusicDownloader *)self _queue_finishIfPossible];
    }
  }
}

- (void)_queue_handleDownloadProgressChanged
{
  if (!self->_queue_isFinished)
  {
    v5 = +[PXFlexMusicLibrary sharedLibrary];
    asset = [(PXFlexMusicDownloader *)self asset];
    [v5 downloadProgressForAsset:asset resourceType:{-[PXFlexMusicDownloader resource](self, "resource")}];
    [(PXFlexMusicDownloader *)self setDownloadFractionCompleted:?];
  }
}

- (void)_queue_startWithCompletion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (self->_queue_completionHandler)
  {
    PXAssertGetLog();
  }

  v5 = +[PXAudioSettings sharedInstance];
  flexSimulateDownloadFailure = [v5 flexSimulateDownloadFailure];

  if (flexSimulateDownloadFailure)
  {
    sleep(2u);
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  else
  {
    v7 = +[PXFlexMusicLibrary sharedLibrary];
    [v7 registerChangeObserver:self context:LibraryContext];
    asset = [(PXFlexMusicDownloader *)self asset];
    resource = [(PXFlexMusicDownloader *)self resource];
    v10 = [v7 hasLocalResourceForAsset:asset resourceType:resource];
    v11 = PLAudioPlaybackGetLog();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "Found existing local resource. Skipping download for %{public}@", buf, 0xCu);
      }

      [(NSProgress *)self->_progress setCompletedUnitCount:100];
      self->_queue_isFinished = 1;
      (*(completionCopy + 2))(completionCopy, 1, 0);
    }

    else
    {
      if (v12)
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "Starting download for %{public}@", buf, 0xCu);
      }

      v13 = [PXExpectation alloc];
      queue = self->_queue;
      v15 = [(PXFlexMusicDownloader *)self description];
      v16 = [(PXExpectation *)v13 initWithQueue:queue labelFormat:@"%@", v15];
      queue_downloadExpectation = self->_queue_downloadExpectation;
      self->_queue_downloadExpectation = v16;

      objc_initWeak(buf, self);
      v18 = self->_queue_downloadExpectation;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __52__PXFlexMusicDownloader__queue_startWithCompletion___block_invoke;
      v28[3] = &unk_1E7749D00;
      objc_copyWeak(&v29, buf);
      [(PXExpectation *)v18 performWhenFulfilled:v28 timeout:30.0];
      v19 = PLAudioPlaybackGetLog();
      WeakRetained = objc_loadWeakRetained(buf);
      v21 = os_signpost_id_make_with_pointer(v19, WeakRetained);

      if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        *v27 = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v21, "PXFlexMusicDownloaderDownload", " enableTelemetry=YES ", v27, 2u);
      }

      self->_downloadSignpostID = [MEMORY[0x1E6991F28] startSignpost];
      [v7 requestDownloadForAsset:asset resourceType:resource];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __52__PXFlexMusicDownloader__queue_startWithCompletion___block_invoke_27;
      aBlock[3] = &unk_1E77472D0;
      objc_copyWeak(&v26, buf);
      v25 = completionCopy;
      v22 = _Block_copy(aBlock);
      queue_completionHandler = self->_queue_completionHandler;
      self->_queue_completionHandler = v22;

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }
  }
}

void __52__PXFlexMusicDownloader__queue_startWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_handleDownloadFinished:a2 error:v5];
}

void __52__PXFlexMusicDownloader__queue_startWithCompletion___block_invoke_27(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = PLAudioPlaybackGetLog();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = os_signpost_id_make_with_pointer(v5, WeakRetained);

  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_END, v7, "PXFlexMusicDownloaderDownload", " enableTelemetry=YES ", v8, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (LibraryContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFlexMusicDownloader.m" lineNumber:91 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = observableCopy;
  if (changeCopy)
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__PXFlexMusicDownloader_observable_didChange_context___block_invoke;
    block[3] = &unk_1E774C318;
    objc_copyWeak(&v17, &location);
    dispatch_async(queue, block);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  if ((changeCopy & 2) != 0)
  {
    objc_initWeak(&location, self);
    v12 = self->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__PXFlexMusicDownloader_observable_didChange_context___block_invoke_2;
    v14[3] = &unk_1E774C318;
    objc_copyWeak(&v15, &location);
    dispatch_async(v12, v14);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __54__PXFlexMusicDownloader_observable_didChange_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_handleDownloadProgressChanged];
}

void __54__PXFlexMusicDownloader_observable_didChange_context___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_finishIfPossible];
}

- (void)startWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PLAudioPlaybackGetLog();
  v6 = os_signpost_id_make_with_pointer(v5, self);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PXFlexMusicDownloaderDownload", " enableTelemetry=YES ", buf, 2u);
    }
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__PXFlexMusicDownloader_startWithCompletion___block_invoke;
  v10[3] = &unk_1E774AA30;
  objc_copyWeak(&v12, buf);
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_async(queue, v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __45__PXFlexMusicDownloader_startWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_startWithCompletion:*(a1 + 32)];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  asset = [(PXFlexMusicDownloader *)self asset];
  resource = [(PXFlexMusicDownloader *)self resource];
  v7 = @"Artwork";
  if (resource == 2)
  {
    v7 = @"Audio";
  }

  if (!resource)
  {
    v7 = @"??";
  }

  v8 = v7;
  v9 = [v3 initWithFormat:@"<%@ %p; Song: %@; Resource: %@>", v4, self, asset, v8];

  return v9;
}

- (PXFlexMusicDownloader)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFlexMusicDownloader.m" lineNumber:59 description:{@"%s is not available as initializer", "-[PXFlexMusicDownloader init]"}];

  abort();
}

- (PXFlexMusicDownloader)initWithAsset:(id)asset resource:(int64_t)resource
{
  assetCopy = asset;
  v9.receiver = self;
  v9.super_class = PXFlexMusicDownloader;
  if ([(PXFlexMusicDownloader *)&v9 init])
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = objc_opt_class();
    NSStringFromClass(v7);
    [objc_msgSend(v6 initWithFormat:@"%@-%@", objc_claimAutoreleasedReturnValue(), assetCopy), "UTF8String"];
    px_dispatch_queue_create_serial();
  }

  return 0;
}

void __48__PXFlexMusicDownloader_initWithAsset_resource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleCancellation];
}

@end