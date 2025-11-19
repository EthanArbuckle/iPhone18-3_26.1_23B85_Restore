@interface _PXAssetAnalyzerRequest
- (_PXAssetAnalyzerRequest)initWithAsset:(id)a3 workerType:(int64_t)a4;
- (void)_handleFinishWithSuccess:(BOOL)a3;
- (void)runWithResultHandler:(id)a3;
@end

@implementation _PXAssetAnalyzerRequest

- (void)_handleFinishWithSuccess:(BOOL)a3
{
  if (!self->_finished)
  {
    self->_finished = 1;
    resultHandler = self->_resultHandler;
    if (resultHandler)
    {
      v5 = a3;
      v7 = _Block_copy(resultHandler);
      v6 = self->_resultHandler;
      self->_resultHandler = 0;

      v7[2](v7, v5);
    }
  }
}

- (void)runWithResultHandler:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXAssetAnalyzer.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"resultHandler"}];
  }

  v6 = [v5 copy];
  resultHandler = self->_resultHandler;
  self->_resultHandler = v6;

  v8 = [(_PXAssetAnalyzerRequest *)self asset];
  if (!self->_workerType)
  {
    objc_initWeak(&location, self);
    v9 = [MEMORY[0x1E69AE230] sharedAnalysisService];
    if (objc_opt_respondsToSelector())
    {
      v10 = v9;
      v21[0] = v8;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __48___PXAssetAnalyzerRequest_runWithResultHandler___block_invoke;
      v16[3] = &unk_1E774A020;
      objc_copyWeak(&v17, &location);
      v12 = [v10 requestLivePhotoEffectsForAssets:v11 withOptions:0 progressHandler:0 andCompletionHandler:v16];

      if (v12 <= 0)
      {
        v13 = PLUIGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v20 = v12;
          _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Effects request failed: invalid request ID %d", buf, 8u);
        }

        [(_PXAssetAnalyzerRequest *)self _handleFinishWithSuccess:0];
      }

      objc_destroyWeak(&v17);
    }

    else
    {
      v14 = PLUIGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "PXAssetAnalyzerWorkerTypeAutoloop requires at least Yukon17A491", buf, 2u);
      }

      [(_PXAssetAnalyzerRequest *)self _handleFinishWithSuccess:0];
    }

    objc_destroyWeak(&location);
  }
}

- (_PXAssetAnalyzerRequest)initWithAsset:(id)a3 workerType:(int64_t)a4
{
  v8 = a3;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXAssetAnalyzer.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v13.receiver = self;
  v13.super_class = _PXAssetAnalyzerRequest;
  v9 = [(_PXAssetAnalyzerRequest *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, a3);
    v10->_workerType = a4;
  }

  return v10;
}

@end