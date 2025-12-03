@interface PFSharingRemaker
+ (id)remakerWithOperations:(id)operations options:(id)options;
- (PFSharingRemaker)init;
- (double)_computeProgress;
- (void)_abortWithUnderlyingOperationError:(id)error;
- (void)_callProgressBlockWithProgress:(double)progress;
- (void)_completeOperationWithUUID:(id)d;
- (void)_configurePhotoOperation:(id)operation withUUID:(id)d dispatchGroup:(id)group;
- (void)_configureVideoOperation:(id)operation withUUID:(id)d dispatchGroup:(id)group;
- (void)_endSessionWithSuccess:(BOOL)success error:(id)error;
- (void)_updateProgress;
- (void)cancelRemaking;
- (void)remakeWithProgressHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation PFSharingRemaker

- (void)_abortWithUnderlyingOperationError:(id)error
{
  v10 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!self->_abortedRemaker)
  {
    *&self->_remakerSuccess = 256;
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    [v5 setObject:errorCopy forKeyedSubscript:*MEMORY[0x1E696AA08]];
    [v5 setObject:@"Underlying operation encountered an error" forKeyedSubscript:*MEMORY[0x1E696A578]];
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PFSharingRemakerErrorDomain" code:2 userInfo:v5];
    remakerError = self->_remakerError;
    self->_remakerError = v6;

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = errorCopy;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PFSharingRemaker] Aborted with underlying operation error: %{public}@", &v8, 0xCu);
    }

    [(NSOperationQueue *)self->_remakeOperationQueue cancelAllOperations];
  }
}

- (void)_completeOperationWithUUID:(id)d
{
  v10 = [(NSMutableDictionary *)self->_inProgressOperationByUUID objectForKey:d];
  _videoOperation = [v10 _videoOperation];
  _imageOperation = [v10 _imageOperation];
  if (_videoOperation && [_videoOperation isFinished] && (objc_msgSend(_videoOperation, "success") & 1) == 0 && !objc_msgSend(_videoOperation, "isCancelled"))
  {
    operationError = [_videoOperation operationError];
    [(PFSharingRemaker *)self _abortWithUnderlyingOperationError:operationError];

    if (!_imageOperation)
    {
      goto LABEL_22;
    }

    v6 = 1;
  }

  else
  {
    if (!_imageOperation)
    {
      goto LABEL_14;
    }

    v6 = 0;
  }

  if ([_imageOperation isFinished] && (objc_msgSend(_imageOperation, "success") & 1) == 0 && (objc_msgSend(_imageOperation, "isCancelled") & 1) == 0)
  {
    operationError2 = [_imageOperation operationError];
    [(PFSharingRemaker *)self _abortWithUnderlyingOperationError:operationError2];
    goto LABEL_21;
  }

  if (v6)
  {
    goto LABEL_22;
  }

  if ([_imageOperation isFinished] && objc_msgSend(_imageOperation, "success"))
  {
    resultingFileURL = [_imageOperation resultingFileURL];
    [v10 _setImageOutputURL:resultingFileURL];
  }

LABEL_14:
  if (_videoOperation && [_videoOperation isFinished] && objc_msgSend(_videoOperation, "success"))
  {
    operationError2 = [_videoOperation resultingFileURL];
    [v10 _setVideoOutputURL:operationError2];
LABEL_21:
  }

LABEL_22:
}

- (void)_configurePhotoOperation:(id)operation withUUID:(id)d dispatchGroup:(id)group
{
  operationCopy = operation;
  dCopy = d;
  groupCopy = group;
  _options = [(PFSharingRemaker *)self _options];
  shouldStripAllMetadata = [_options shouldStripAllMetadata];
  shouldStripLocation = [_options shouldStripLocation];
  shouldStripCaption = [_options shouldStripCaption];
  shouldStripAccessibilityDescription = [_options shouldStripAccessibilityDescription];
  shouldConvertToSRGB = [_options shouldConvertToSRGB];
  outputDirectoryURL = [_options outputDirectoryURL];
  imageURL = [operationCopy imageURL];
  absoluteString = [imageURL absoluteString];
  pathExtension = [absoluteString pathExtension];

  outputFilename = [_options outputFilename];
  v18 = outputFilename;
  v26 = pathExtension;
  v27 = dCopy;
  if (outputFilename)
  {
    v19 = outputFilename;
  }

  else
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", dCopy, pathExtension];
  }

  v32 = v19;

  customLocation = [_options customLocation];
  customDate = [_options customDate];
  customCaption = [_options customCaption];
  customAccessibilityLabel = [_options customAccessibilityLabel];
  [operationCopy setShouldStripMetadata:shouldStripAllMetadata];
  [operationCopy setShouldStripLocation:shouldStripLocation];
  [operationCopy setShouldStripCaption:shouldStripCaption];
  [operationCopy setShouldStripAccessibilityDescription:shouldStripAccessibilityDescription];
  [operationCopy setShouldConvertToSRGB:shouldConvertToSRGB];
  [operationCopy setOutputDirectoryURL:outputDirectoryURL];
  [operationCopy setOutputFilename:v32];
  [operationCopy setCustomLocation:customLocation];
  [operationCopy setCustomDate:customDate];
  [operationCopy setCustomCaption:customCaption];
  [operationCopy setCustomAccessibilityLabel:customAccessibilityLabel];
  objc_initWeak(&location, self);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __68__PFSharingRemaker__configurePhotoOperation_withUUID_dispatchGroup___block_invoke;
  v33[3] = &unk_1E7B65540;
  v33[4] = self;
  objc_copyWeak(&v36, &location);
  v24 = v27;
  v34 = v24;
  v25 = groupCopy;
  v35 = v25;
  [operationCopy setCompletionBlock:v33];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

void __68__PFSharingRemaker__configurePhotoOperation_withUUID_dispatchGroup___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PFSharingRemaker__configurePhotoOperation_withUUID_dispatchGroup___block_invoke_2;
  block[3] = &unk_1E7B65518;
  objc_copyWeak(&v6, (a1 + 56));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  dispatch_async(v2, block);

  objc_destroyWeak(&v6);
}

void __68__PFSharingRemaker__configurePhotoOperation_withUUID_dispatchGroup___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _completeOperationWithUUID:*(a1 + 32)];

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

- (void)_configureVideoOperation:(id)operation withUUID:(id)d dispatchGroup:(id)group
{
  operationCopy = operation;
  dCopy = d;
  val = self;
  groupCopy = group;
  _options = [(PFSharingRemaker *)self _options];
  shouldStripAllMetadata = [_options shouldStripAllMetadata];
  shouldStripLocation = [_options shouldStripLocation];
  shouldStripCaption = [_options shouldStripCaption];
  shouldStripAccessibilityDescription = [_options shouldStripAccessibilityDescription];
  outputDirectoryURL = [_options outputDirectoryURL];
  outputFilename = [_options outputFilename];
  v13 = outputFilename;
  v32 = dCopy;
  if (outputFilename)
  {
    dCopy = outputFilename;
  }

  else
  {
    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.mov", dCopy];
  }

  v15 = dCopy;

  customLocation = [_options customLocation];
  customDate = [_options customDate];
  customCaption = [_options customCaption];
  customAccessibilityLabel = [_options customAccessibilityLabel];
  exportPreset = [_options exportPreset];
  exportFileType = [_options exportFileType];
  [operationCopy setShouldStripMetadata:shouldStripAllMetadata];
  [operationCopy setShouldStripLocation:shouldStripLocation];
  [operationCopy setShouldStripCaption:shouldStripCaption];
  [operationCopy setShouldStripAccessibilityDescription:shouldStripAccessibilityDescription];
  [operationCopy setOutputDirectoryURL:outputDirectoryURL];
  [operationCopy setOutputFilename:v15];
  [operationCopy setCustomLocation:customLocation];
  v31 = customDate;
  [operationCopy setCustomDate:customDate];
  [operationCopy setCustomCaption:customCaption];
  v28 = customAccessibilityLabel;
  v22 = customAccessibilityLabel;
  v23 = exportPreset;
  [operationCopy setCustomAccessibilityLabel:v22];
  [operationCopy setExportPreset:exportPreset];
  [operationCopy setExportFileType:exportFileType];
  objc_initWeak(&location, val);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __68__PFSharingRemaker__configureVideoOperation_withUUID_dispatchGroup___block_invoke;
  v35[3] = &unk_1E7B65540;
  v35[4] = val;
  objc_copyWeak(&v38, &location);
  v24 = v32;
  v36 = v24;
  v25 = groupCopy;
  v37 = v25;
  [operationCopy setCompletionBlock:v35];

  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);
}

void __68__PFSharingRemaker__configureVideoOperation_withUUID_dispatchGroup___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__PFSharingRemaker__configureVideoOperation_withUUID_dispatchGroup___block_invoke_2;
  block[3] = &unk_1E7B65518;
  objc_copyWeak(&v6, (a1 + 56));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  dispatch_async(v2, block);

  objc_destroyWeak(&v6);
}

void __68__PFSharingRemaker__configureVideoOperation_withUUID_dispatchGroup___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _completeOperationWithUUID:*(a1 + 32)];

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

- (void)_endSessionWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v14 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  _completionHandler = [(PFSharingRemaker *)self _completionHandler];
  [(PFSharingRemaker *)self _setCompletionHandler:0];
  [(PFSharingRemaker *)self _setProgressHandler:0];
  dispatch_source_cancel(self->_progressTimer);
  progressTimer = self->_progressTimer;
  self->_progressTimer = 0;

  [(NSMutableDictionary *)self->_inProgressOperationByUUID removeAllObjects];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v9 = @"NO";
    if (successCopy)
    {
      v9 = @"YES";
    }

    v10 = 138412546;
    v11 = v9;
    v12 = 2114;
    v13 = errorCopy;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFSharingRemaker] Ended session with success %@, error: %{public}@", &v10, 0x16u);
  }

  if (_completionHandler)
  {
    (_completionHandler)[2](_completionHandler, successCopy, errorCopy);
  }
}

- (void)cancelRemaking
{
  remakerQueue = self->_remakerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__PFSharingRemaker_cancelRemaking__block_invoke;
  block[3] = &unk_1E7B66D20;
  block[4] = self;
  dispatch_async(remakerQueue, block);
}

void __34__PFSharingRemaker_cancelRemaking__block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _progressHandler];
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) _completionHandler];
    v3 = v4 == 0;
  }

  v5 = *(a1 + 32);
  if ((*(v5 + 34) & 1) == 0 && !v3)
  {
    *(v5 + 34) = 1;
    *(*(a1 + 32) + 32) = 0;
    v6 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = @"Remaking was cancelled";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v6 errorWithDomain:@"PFSharingRemakerErrorDomain" code:1 userInfo:v7];
    v9 = *(a1 + 32);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(*(a1 + 32) + 48) cancelAllOperations];
  }
}

- (void)_callProgressBlockWithProgress:(double)progress
{
  _progressHandler = [(PFSharingRemaker *)self _progressHandler];
  if (_progressHandler)
  {
    v5 = _progressHandler;
    _progressHandler[2](progress);
    _progressHandler = v5;
  }
}

- (double)_computeProgress
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = [(NSMutableDictionary *)self->_inProgressOperationByUUID count];
  inProgressOperationByUUID = self->_inProgressOperationByUUID;
  v7[1] = 3221225472;
  v7[0] = MEMORY[0x1E69E9820];
  v7[2] = __36__PFSharingRemaker__computeProgress__block_invoke;
  v7[3] = &unk_1E7B654F0;
  v7[4] = &v8;
  *&v7[5] = 1.0 / v3;
  [(NSMutableDictionary *)inProgressOperationByUUID enumerateKeysAndObjectsUsingBlock:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __36__PFSharingRemaker__computeProgress__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v4 = [v10 _videoOperation];
  v5 = v4;
  if (v4)
  {
    [v4 progress];
    *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) + v6 * *(a1 + 40);
  }

  v7 = [v10 _imageOperation];
  v8 = v7;
  if (v7)
  {
    [v7 progress];
    *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) + v9 * *(a1 + 40);
  }
}

- (void)_updateProgress
{
  if (!self->_progressTimer)
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_remakerQueue);
    progressTimer = self->_progressTimer;
    self->_progressTimer = v3;

    v5 = self->_progressTimer;
    if (v5)
    {
      v6 = dispatch_walltime(0, 0);
      dispatch_source_set_timer(v5, v6, 0xEE6B280uLL, 0x5F5E100uLL);
      objc_initWeak(&location, self);
      v7 = self->_progressTimer;
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __35__PFSharingRemaker__updateProgress__block_invoke;
      v11 = &unk_1E7B654C8;
      objc_copyWeak(&v12, &location);
      dispatch_source_set_event_handler(v7, &v8);
      dispatch_resume(self->_progressTimer);
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }

  [(PFSharingRemaker *)self _computeProgress:v8];
  [(PFSharingRemaker *)self _callProgressBlockWithProgress:?];
}

void __35__PFSharingRemaker__updateProgress__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateProgress];
}

- (void)remakeWithProgressHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  remakerQueue = self->_remakerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PFSharingRemaker_remakeWithProgressHandler_completionHandler___block_invoke;
  block[3] = &unk_1E7B654A0;
  block[4] = self;
  v12 = handlerCopy;
  v13 = completionHandlerCopy;
  v9 = completionHandlerCopy;
  v10 = handlerCopy;
  dispatch_async(remakerQueue, block);
}

void __64__PFSharingRemaker_remakeWithProgressHandler_completionHandler___block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 32) = 1;
  [*(a1 + 32) _setProgressHandler:*(a1 + 40)];
  [*(a1 + 32) _setCompletionHandler:*(a1 + 48)];
  v2 = [*(a1 + 32) _options];

  if (!v2)
  {
    v3 = objc_alloc_init(PFSharingRemakerOptions);
    [*(a1 + 32) _setOptions:v3];
  }

  v33 = [*(a1 + 32) _options];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    if ([v33 shouldStripLocation])
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v34 = v4;
    if ([v33 shouldStripCaption])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v32 = v5;
    if ([v33 shouldStripAccessibilityDescription])
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v31 = v6;
    if ([v33 shouldStripAllMetadata])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    if ([v33 shouldConvertToSRGB])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = [v33 customLocation];
    v10 = [v33 customDate];
    v11 = [v33 customCaption];
    v12 = [v33 customAccessibilityLabel];
    v13 = [v33 outputDirectoryURL];
    v14 = [v33 outputFilename];
    v15 = [v33 exportPreset];
    v16 = [v33 exportFileType];
    *buf = 138415363;
    v42 = v34;
    v43 = 2112;
    v44 = v32;
    v45 = 2112;
    v46 = v31;
    v47 = 2112;
    v48 = v30;
    v49 = 2112;
    v50 = v8;
    v51 = 2113;
    v52 = v9;
    v53 = 2113;
    v54 = v10;
    v55 = 2113;
    v56 = v11;
    v57 = 2113;
    v58 = v12;
    v59 = 2114;
    v60 = v13;
    v61 = 2114;
    v62 = v14;
    v63 = 2114;
    v64 = v15;
    v65 = 2114;
    v66 = v16;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFSharingRemaker] Beginning remake with options:\nshouldStripLocation: %@\nshouldStripCaption: %@\nshouldStripAccessibilityDescription: %@\nshouldStripAllMetadata: %@\nshouldConvertToSRGB: %@\ncustomLocation: %{private}@\ncustomDate: %{private}@\ncustomCaption: %{private}@\ncustomAccessibilityLabel: %{private}@\noutputDirectoryURL: %{public}@\noutputFilename: %{public}@\nexportPreset: %{public}@\nexportFileType: %{public}@\n", buf, 0x84u);
  }

  v17 = dispatch_group_create();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v18 = [*(a1 + 32) _operations];
  v19 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v37;
    v22 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v36 + 1) + 8 * i);
        v25 = [v24 _uuid];
        [*(*(a1 + 32) + 24) setObject:v24 forKeyedSubscript:v25];
        v26 = [v24 _videoOperation];
        if (v26)
        {
          dispatch_group_enter(v17);
          [*(a1 + 32) _configureVideoOperation:v26 withUUID:v25 dispatchGroup:v17];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v42 = v26;
            _os_log_impl(&dword_1B35C1000, v22, OS_LOG_TYPE_INFO, "[PFSharingRemaker] Enqueued video operation: %@", buf, 0xCu);
          }

          [*(*(a1 + 32) + 48) addOperation:v26];
        }

        v27 = [v24 _imageOperation];
        if (v27)
        {
          dispatch_group_enter(v17);
          [*(a1 + 32) _configurePhotoOperation:v27 withUUID:v25 dispatchGroup:v17];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v42 = v27;
            _os_log_impl(&dword_1B35C1000, v22, OS_LOG_TYPE_INFO, "[PFSharingRemaker] Enqueued photo operation: %@", buf, 0xCu);
          }

          [*(*(a1 + 32) + 48) addOperation:v27];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v20);
  }

  [*(a1 + 32) _setOperations:0];
  [*(a1 + 32) _updateProgress];
  v28 = *(a1 + 32);
  v29 = *(v28 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__PFSharingRemaker_remakeWithProgressHandler_completionHandler___block_invoke_136;
  block[3] = &unk_1E7B66D20;
  block[4] = v28;
  dispatch_group_notify(v17, v29, block);
}

- (PFSharingRemaker)init
{
  v11.receiver = self;
  v11.super_class = PFSharingRemaker;
  v2 = [(PFSharingRemaker *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.PFSharingRemaker.remakerQueue", v3);
    remakerQueue = v2->_remakerQueue;
    v2->_remakerQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    inProgressOperationByUUID = v2->_inProgressOperationByUUID;
    v2->_inProgressOperationByUUID = v6;

    v8 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    remakeOperationQueue = v2->_remakeOperationQueue;
    v2->_remakeOperationQueue = v8;

    [(NSOperationQueue *)v2->_remakeOperationQueue setQualityOfService:25];
    [(NSOperationQueue *)v2->_remakeOperationQueue setMaxConcurrentOperationCount:2];
  }

  return v2;
}

+ (id)remakerWithOperations:(id)operations options:(id)options
{
  v13 = *MEMORY[0x1E69E9840];
  operationsCopy = operations;
  optionsCopy = options;
  v8 = objc_alloc_init(self);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = operationsCopy;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFSharingRemaker] initialized with remake operations: %@", &v11, 0xCu);
  }

  v9 = [optionsCopy copy];

  [v8 _setOptions:v9];
  [v8 _setOperations:operationsCopy];

  return v8;
}

@end