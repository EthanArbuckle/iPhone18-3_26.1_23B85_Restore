@interface PESaveRequest
- (BOOL)supportsProgress;
- (PESaveRequest)init;
- (PESaveRequest)initWithPhoto:(id)photo compositionController:(id)controller contentEditingOutput:(id)output livePhotoState:(unsigned __int16)state applyVideoOrientationAsMetadata:(BOOL)metadata;
- (PESaveRequest)initWithPhoto:(id)photo contentEditingOutput:(id)output livePhotoState:(unsigned __int16)state applyVideoOrientationAsMetadata:(BOOL)metadata;
- (double)progress;
- (void)_finishWithSuccess:(BOOL)success error:(id)error;
- (void)_performRevertToOriginalOperation;
- (void)_performSaveContentEditingOutput;
- (void)_performSaveEditsOperation;
- (void)_transitionToState:(int64_t)state;
- (void)beginSaveOperationWithCompletionHandler:(id)handler;
- (void)cancelSaveOperation;
@end

@implementation PESaveRequest

- (void)_transitionToState:(int64_t)state
{
  currentState = self->_currentState;
  if (!currentState)
  {
    if ((state & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (currentState != 1 || (state & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
LABEL_6:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PESaveRequest.m" lineNumber:305 description:{@"Invalid transition %ld %ld", self->_currentState, state}];
  }

LABEL_7:
  self->_currentState = state;
}

- (double)progress
{
  result = 1.0;
  if (self->_currentState != 2)
  {
    supportsProgress = [(PESaveRequest *)self supportsProgress];
    result = 0.0;
    if (supportsProgress)
    {
      videoExportProgress = self->_videoExportProgress;
      if (videoExportProgress)
      {

        [(NSProgress *)videoExportProgress fractionCompleted];
      }
    }
  }

  return result;
}

- (BOOL)supportsProgress
{
  compositionController = [(PESaveRequest *)self compositionController];

  if (!compositionController)
  {
    return 0;
  }

  photo = [(PESaveRequest *)self photo];
  if ([photo isVideo])
  {
    IsPlayable = 1;
  }

  else if ([photo isPhotoIris])
  {
    [(PESaveRequest *)self videoComplementState];
    [photo hasAdjustments];
    IsPlayable = PHVideoComplementVisibilityStateIsPlayable();
  }

  else
  {
    IsPlayable = 0;
  }

  return IsPlayable;
}

- (void)_finishWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    currentState = self->_currentState;
    v17 = 134218242;
    v18 = *&currentState;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&dword_25E6E9000, v7, OS_LOG_TYPE_DEFAULT, "[PESaveRequest _finishWithSuccess:error:] - current state: %ld; error: %@", &v17, 0x16u);
  }

  if ((self->_currentState & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    if (successCopy)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    [(PESaveRequest *)self _transitionToState:v9];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v11 = v10;
    beginTimestamp = self->_beginTimestamp;
    v13 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = v11 - beginTimestamp;
      _os_log_impl(&dword_25E6E9000, v13, OS_LOG_TYPE_DEFAULT, "PESaveRequest operation took: %f sec", &v17, 0xCu);
    }

    completionHandler = self->_completionHandler;
    if (completionHandler)
    {
      completionHandler[2](completionHandler, successCopy, errorCopy);
      v15 = self->_completionHandler;
      self->_completionHandler = 0;
    }

    videoExportProgress = self->_videoExportProgress;
    self->_videoExportProgress = 0;
  }
}

- (void)cancelSaveOperation
{
  [(NSProgress *)self->_videoExportProgress cancel];
  v3 = [MEMORY[0x277CCA9B8] ph_errorWithDomain:*MEMORY[0x277CD9C98] code:3072 userInfo:0];
  [(PESaveRequest *)self _finishWithSuccess:0 error:v3];
}

- (void)_performRevertToOriginalOperation
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v3, OS_LOG_TYPE_DEFAULT, "PESaveRequest revert to original...", buf, 2u);
  }

  v4 = PLPhotoEditGetLog();
  self->_saveRequestPerfSignpost = os_signpost_id_generate(v4);
  v5 = v4;
  v6 = v5;
  saveRequestPerfSignpost = self->_saveRequestPerfSignpost;
  if (saveRequestPerfSignpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v6, OS_SIGNPOST_INTERVAL_BEGIN, saveRequestPerfSignpost, "PESaveRequest-Revert", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = [MEMORY[0x277CBEAA8] now];
  if ([(PHAsset *)self->_photo playbackVariation])
  {
    v9 = MEMORY[0x277CF6EC0];
    v22 = *MEMORY[0x277CF6E20];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v23[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    [v9 sendEvent:@"com.apple.photos.CPAnalytics.userChoices.livePhotoEffectRevertedToOriginal" withPayload:v12];
  }

  photoLibrary = [(PHAsset *)self->_photo photoLibrary];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__PESaveRequest__performRevertToOriginalOperation__block_invoke;
  v18[3] = &unk_279A31000;
  v19 = v6;
  selfCopy = self;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __50__PESaveRequest__performRevertToOriginalOperation__block_invoke_60;
  v16[3] = &unk_279A2FFD8;
  v16[4] = self;
  v17 = v8;
  v14 = v8;
  v15 = v6;
  [photoLibrary performChanges:v18 completionHandler:v16];
}

void __50__PESaveRequest__performRevertToOriginalOperation__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(*(a1 + 40) + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v3, OS_SIGNPOST_EVENT, v4, "PESaveRequest-PerformChanges", "", v6, 2u);
  }

  v5 = [MEMORY[0x277CD97B0] changeRequestForAsset:*(*(a1 + 40) + 56)];
  [v5 revertAssetContentToOriginal];
  if ([*(*(a1 + 40) + 56) isLivePhoto])
  {
    [v5 setPhotoIrisVisibilityState:0];
  }
}

void __50__PESaveRequest__performRevertToOriginalOperation__block_invoke_60(uint64_t a1, char a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PLPhotoEditGetLog();
  v7 = v6;
  v8 = *(*(a1 + 32) + 32);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v7, OS_SIGNPOST_INTERVAL_END, v8, "PESaveRequest-Revert", " enableTelemetry=YES ", buf, 2u);
  }

  [*(a1 + 40) timeIntervalSinceNow];
  v10 = v9;
  v11 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = -v10;
    _os_log_impl(&dword_25E6E9000, v11, OS_LOG_TYPE_DEFAULT, "PESaveRequest - PERF - done reverting; duration: %fs", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__PESaveRequest__performRevertToOriginalOperation__block_invoke_61;
  block[3] = &unk_279A30000;
  v12 = *(a1 + 32);
  v16 = a2;
  block[4] = v12;
  v15 = v5;
  v13 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_performSaveContentEditingOutput
{
  v3 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v3, OS_LOG_TYPE_DEFAULT, "PESaveRequest saving content editing output...", buf, 2u);
  }

  v4 = PLPhotoEditGetLog();
  self->_saveRequestPerfSignpost = os_signpost_id_generate(v4);
  v5 = v4;
  v6 = v5;
  saveRequestPerfSignpost = self->_saveRequestPerfSignpost;
  if (saveRequestPerfSignpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v6, OS_SIGNPOST_INTERVAL_BEGIN, saveRequestPerfSignpost, "PESaveRequest-SavingChanges", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = [MEMORY[0x277CBEAA8] now];
  photoLibrary = [(PHAsset *)self->_photo photoLibrary];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__PESaveRequest__performSaveContentEditingOutput__block_invoke;
  v14[3] = &unk_279A31000;
  v15 = v6;
  selfCopy = self;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__PESaveRequest__performSaveContentEditingOutput__block_invoke_53;
  v12[3] = &unk_279A2FFD8;
  v12[4] = self;
  v13 = v8;
  v10 = v8;
  v11 = v6;
  [photoLibrary performChanges:v14 completionHandler:v12];
}

void __49__PESaveRequest__performSaveContentEditingOutput__block_invoke(uint64_t a1)
{
  v2 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v2, OS_LOG_TYPE_DEFAULT, "PESaveRequest saving content editing output - in performChanges", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = v3;
  v5 = *(*(a1 + 40) + 32);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v4, OS_SIGNPOST_EVENT, v5, "PESaveRequest-PerformChanges", "", v10, 2u);
  }

  v6 = [MEMORY[0x277CD97B0] changeRequestForAsset:*(*(a1 + 40) + 56)];
  [v6 setContentEditingOutput:*(*(a1 + 40) + 72)];
  v7 = [*(*(a1 + 40) + 72) accessibilityDescription];
  if (v7)
  {
    v8 = [*(*(a1 + 40) + 72) accessibilityDescription];
    [v6 setAccessibilityDescription:v8];
  }

  if ([*(*(a1 + 40) + 56) isLivePhoto])
  {
    v9 = [v6 photoIrisVisibilityState];
    if (v9 != [*(a1 + 40) videoComplementState])
    {
      [v6 setPhotoIrisVisibilityState:{objc_msgSend(*(a1 + 40), "videoComplementState")}];
    }
  }
}

void __49__PESaveRequest__performSaveContentEditingOutput__block_invoke_53(uint64_t a1, char a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PLPhotoEditGetLog();
  v7 = v6;
  v8 = *(*(a1 + 32) + 32);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E6E9000, v7, OS_SIGNPOST_INTERVAL_END, v8, "PESaveRequest-SavingChanges", " enableTelemetry=YES ", buf, 2u);
  }

  [*(a1 + 40) timeIntervalSinceNow];
  v10 = v9;
  v11 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = -v10;
    _os_log_impl(&dword_25E6E9000, v11, OS_LOG_TYPE_DEFAULT, "PESaveRequest - PERF - done saving content editing output; duration: %fs", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PESaveRequest__performSaveContentEditingOutput__block_invoke_54;
  block[3] = &unk_279A30000;
  v12 = *(a1 + 32);
  v16 = a2;
  block[4] = v12;
  v15 = v5;
  v13 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_performSaveEditsOperation
{
  v3 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25E6E9000, v3, OS_LOG_TYPE_DEFAULT, "PESaveRequest - Rendering image for save", buf, 2u);
  }

  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = objc_alloc_init(PESerializationUtilityExportSettings);
  v6 = [objc_alloc(MEMORY[0x277D2CFA0]) initWithTargetPixelSize:{2048, 2048}];
  [(PESerializationUtilityExportSettings *)v5 setScalePolicy:v6];

  [(PESerializationUtilityExportSettings *)v5 setApplyVideoOrientationAsMetadata:[(PESaveRequest *)self applyVideoOrientationAsMetadata]];
  compositionController = [(PESaveRequest *)self compositionController];
  contentEditingOutput = [(PESaveRequest *)self contentEditingOutput];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__PESaveRequest__performSaveEditsOperation__block_invoke;
  v12[3] = &unk_279A2FFD8;
  v13 = v4;
  selfCopy = self;
  v9 = v4;
  v10 = [PESerializationUtility exportCompositionController:compositionController forContentEditingOutput:contentEditingOutput settings:v5 completionQueue:MEMORY[0x277D85CD0] completion:v12];
  videoExportProgress = self->_videoExportProgress;
  self->_videoExportProgress = v10;
}

void __43__PESaveRequest__performSaveEditsOperation__block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) timeIntervalSinceNow];
  v7 = v6;
  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (a2)
    {
      v9 = @"YES";
    }

    v11 = 138412802;
    v12 = v9;
    v13 = 2112;
    v14 = v5;
    v15 = 2048;
    v16 = -v7;
    _os_log_impl(&dword_25E6E9000, v8, OS_LOG_TYPE_DEFAULT, "PESaveRequest - PERF - rendered image save complete. Success: %@ / Error: %@ / Duration: %fs", &v11, 0x20u);
  }

  v10 = *(a1 + 40);
  if (a2)
  {
    [v10 _performSaveContentEditingOutput];
  }

  else
  {
    [v10 _finishWithSuccess:0 error:v5];
  }
}

- (void)beginSaveOperationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(PESaveRequest *)self _transitionToState:1];
  v5 = [handlerCopy copy];

  completionHandler = self->_completionHandler;
  self->_completionHandler = v5;

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_beginTimestamp = v7;
  compositionController = [(PESaveRequest *)self compositionController];

  if (compositionController)
  {

    [(PESaveRequest *)self _performSaveEditsOperation];
  }

  else if (self->_contentEditingOutput)
  {

    [(PESaveRequest *)self _performSaveContentEditingOutput];
  }

  else
  {

    [(PESaveRequest *)self _performRevertToOriginalOperation];
  }
}

- (PESaveRequest)initWithPhoto:(id)photo compositionController:(id)controller contentEditingOutput:(id)output livePhotoState:(unsigned __int16)state applyVideoOrientationAsMetadata:(BOOL)metadata
{
  photoCopy = photo;
  controllerCopy = controller;
  outputCopy = output;
  v19.receiver = self;
  v19.super_class = PESaveRequest;
  v16 = [(PESaveRequest *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_identifier = atomic_fetch_add(_mediaDestinationRequestIdentifier, 1u) + 1;
    objc_storeStrong(&v16->_photo, photo);
    objc_storeStrong(&v17->_compositionController, controller);
    objc_storeStrong(&v17->_contentEditingOutput, output);
    v17->_currentState = 0;
    v17->_videoComplementState = state;
    v17->_applyVideoOrientationAsMetadata = metadata;
  }

  return v17;
}

- (PESaveRequest)initWithPhoto:(id)photo contentEditingOutput:(id)output livePhotoState:(unsigned __int16)state applyVideoOrientationAsMetadata:(BOOL)metadata
{
  metadataCopy = metadata;
  stateCopy = state;
  photoCopy = photo;
  outputCopy = output;
  if (!outputCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PESaveRequest.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"contentEditingOutput"}];
  }

  v13 = [(PESaveRequest *)self initWithPhoto:photoCopy compositionController:0 contentEditingOutput:outputCopy livePhotoState:stateCopy applyVideoOrientationAsMetadata:metadataCopy];

  return v13;
}

- (PESaveRequest)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PESaveRequest.m" lineNumber:85 description:@"use the designated initializer"];

  return 0;
}

@end