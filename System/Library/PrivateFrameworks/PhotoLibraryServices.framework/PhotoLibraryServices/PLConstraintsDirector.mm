@interface PLConstraintsDirector
- (PLConstraintsDirector)initWithPhotoLibraryURL:(id)a3;
- (void)_requestMediaAnalysisQuickFaceProcessing;
- (void)cameraWatcherDidChangeState:(id)a3;
- (void)informAssetDeferredProcessingOccurring;
- (void)informAssetsFinishedDeferredProcessing;
- (void)informPhotoCapturedThatNeedsDeferredProcessing;
- (void)informPhotoCapturedThatNeedsQuickFace;
@end

@implementation PLConstraintsDirector

- (void)cameraWatcherDidChangeState:(id)a3
{
  isolationQueue = self->_isolationQueue;
  v5 = a3;
  dispatch_assert_queue_V2(isolationQueue);
  v6 = [v5 isCameraRunning];

  if ((v6 & 1) != 0 || self->_deferredProcessingOngoing || self->_outstandingCaptures != 1)
  {
    faceQuickClassificationRequestID = self->_faceQuickClassificationRequestID;
    v8 = +[PLMediaAnalysisServiceRequestAdapter invalidVCPRequestID];
    v9 = v6 ^ 1;
    if (faceQuickClassificationRequestID == v8)
    {
      v9 = 1;
    }

    if ((v9 & 1) == 0)
    {
      v10 = PLAssetAnalysisGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "PLConstraintsDirector cancelling mediaAnalysisService face quick classification because Camera is active...", v13, 2u);
      }

      [PLMediaAnalysisServiceRequestAdapter cancelRequest:self->_faceQuickClassificationRequestID];
      self->_faceQuickClassificationRequestID = +[PLMediaAnalysisServiceRequestAdapter invalidVCPRequestID];
      bonusTimer = self->_bonusTimer;
      if (bonusTimer)
      {
        dispatch_source_cancel(bonusTimer);
        v12 = self->_bonusTimer;
        self->_bonusTimer = 0;
      }
    }
  }

  else
  {

    [(PLConstraintsDirector *)self _requestMediaAnalysisQuickFaceProcessing];
  }
}

- (void)informAssetDeferredProcessingOccurring
{
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PLConstraintsDirector_informAssetDeferredProcessingOccurring__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
}

int64_t __63__PLConstraintsDirector_informAssetDeferredProcessingOccurring__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  v2 = *(*(a1 + 32) + 40);
  result = +[PLMediaAnalysisServiceRequestAdapter invalidVCPRequestID];
  if (v2 != result)
  {
    v4 = PLAssetAnalysisGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "PLConstraintsDirector cancelling mediaAnalysisService face quick classification because deferred finalization started", v5, 2u);
    }

    [PLMediaAnalysisServiceRequestAdapter cancelRequest:*(*(a1 + 32) + 40)];
    result = +[PLMediaAnalysisServiceRequestAdapter invalidVCPRequestID];
    *(*(a1 + 32) + 40) = result;
  }

  return result;
}

- (void)informAssetsFinishedDeferredProcessing
{
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PLConstraintsDirector_informAssetsFinishedDeferredProcessing__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
}

uint64_t __63__PLConstraintsDirector_informAssetsFinishedDeferredProcessing__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 0;
  *(*(a1 + 32) + 12) = 1;
  result = [*(*(a1 + 32) + 32) isCameraRunning];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _requestMediaAnalysisQuickFaceProcessing];
  }

  return result;
}

- (void)informPhotoCapturedThatNeedsDeferredProcessing
{
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PLConstraintsDirector_informPhotoCapturedThatNeedsDeferredProcessing__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
}

- (void)informPhotoCapturedThatNeedsQuickFace
{
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PLConstraintsDirector_informPhotoCapturedThatNeedsQuickFace__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
}

uint64_t __62__PLConstraintsDirector_informPhotoCapturedThatNeedsQuickFace__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (!*(v1 + 12))
  {
    *(v1 + 12) = 1;
  }

  return result;
}

- (PLConstraintsDirector)initWithPhotoLibraryURL:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PLConstraintsDirector;
  v6 = [(PLConstraintsDirector *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = pl_dispatch_queue_create_with_fallback_qos();
    isolationQueue = v6->_isolationQueue;
    v6->_isolationQueue = v8;

    v6->_outstandingCaptures = 0;
    objc_storeStrong(&v6->_photoLibraryURL, a3);
    v10 = [objc_alloc(MEMORY[0x1E69C0690]) initWithDispatchQueue:v6->_isolationQueue delegate:v6];
    cameraWatcher = v6->_cameraWatcher;
    v6->_cameraWatcher = v10;

    [(PFCameraViewfinderSessionWatcher *)v6->_cameraWatcher startWatching];
  }

  return v6;
}

- (void)_requestMediaAnalysisQuickFaceProcessing
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  self->_outstandingCaptures = 0;
  if (self->_bonusTimer)
  {
    v3 = PLAssetAnalysisGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "PLConstraintsDirector skipping processing because timer is already set", buf, 2u);
    }
  }

  else
  {
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_isolationQueue);
    bonusTimer = self->_bonusTimer;
    self->_bonusTimer = v4;

    v6 = PLAssetAnalysisGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "PLConstraintsDirector setting up bonus timer", buf, 2u);
    }

    v7 = self->_bonusTimer;
    v8 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v7, v8, 0x2540BE400uLL, 0x3B9ACA00uLL);
    v9 = self->_bonusTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __65__PLConstraintsDirector__requestMediaAnalysisQuickFaceProcessing__block_invoke;
    handler[3] = &unk_1E75781E8;
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);
    v10 = PLAssetAnalysisGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "PLConstraintsDirector signaling mediaAnalysisService to do face quick classification...", buf, 2u);
    }

    photoLibraryURL = self->_photoLibraryURL;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__PLConstraintsDirector__requestMediaAnalysisQuickFaceProcessing__block_invoke_26;
    v12[3] = &unk_1E7575FA8;
    v12[4] = self;
    self->_faceQuickClassificationRequestID = [PLMediaAnalysisServiceRequestAdapter requestQuickFaceIdentificationForPhotoLibraryURL:photoLibraryURL withOptions:MEMORY[0x1E695E0F8] andCompletionHandler:v12];
    dispatch_resume(self->_bonusTimer);
  }
}

void __65__PLConstraintsDirector__requestMediaAnalysisQuickFaceProcessing__block_invoke(uint64_t a1)
{
  v2 = PLAssetAnalysisGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "PLConstraintsDirector cancelling and nil-ing bonus timer", buf, 2u);
  }

  dispatch_source_cancel(*(*(a1 + 32) + 24));
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;

  v5 = *(*(a1 + 32) + 40);
  if (v5 == +[PLMediaAnalysisServiceRequestAdapter invalidVCPRequestID])
  {
    v6 = PLAssetAnalysisGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 0;
      v7 = "PLConstraintsDirector detected bonus time has expired but mediaAnalysisService has already stopped face quick classification...";
      v8 = &v9;
LABEL_8:
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else
  {
    [PLMediaAnalysisServiceRequestAdapter cancelRequest:*(*(a1 + 32) + 40)];
    *(*(a1 + 32) + 40) = +[PLMediaAnalysisServiceRequestAdapter invalidVCPRequestID];
    v6 = PLAssetAnalysisGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      v7 = "PLConstraintsDirector cancelling mediaAnalysisService face quick classification because bonus time expired...";
      v8 = v10;
      goto LABEL_8;
    }
  }
}

void __65__PLConstraintsDirector__requestMediaAnalysisQuickFaceProcessing__block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__PLConstraintsDirector__requestMediaAnalysisQuickFaceProcessing__block_invoke_2;
  v7[3] = &unk_1E7578848;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __65__PLConstraintsDirector__requestMediaAnalysisQuickFaceProcessing__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PLAssetAnalysisGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "PLConstraintsDirector received completion handler for quick face classification", &v8, 2u);
  }

  if (*(a1 + 32))
  {
    v3 = PLAssetAnalysisGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "Error requesting quick face identification: %@", &v8, 0xCu);
    }
  }

  *(*(a1 + 40) + 40) = +[PLMediaAnalysisServiceRequestAdapter invalidVCPRequestID];
  v5 = *(*(a1 + 40) + 24);
  if (v5)
  {
    dispatch_source_cancel(v5);
    v6 = *(a1 + 40);
    v7 = *(v6 + 24);
    *(v6 + 24) = 0;
  }
}

@end