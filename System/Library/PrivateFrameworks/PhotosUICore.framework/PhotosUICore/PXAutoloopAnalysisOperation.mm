@interface PXAutoloopAnalysisOperation
- (PXAutoloopAnalysisOperation)init;
- (PXAutoloopAnalysisOperation)initWithEditSource:(id)source;
- (id)recipeForVariationType:(int64_t)type;
- (void)_timeout;
- (void)cancel;
- (void)main;
@end

@implementation PXAutoloopAnalysisOperation

- (void)main
{
  v72 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 30000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PXAutoloopAnalysisOperation_main__block_invoke_2;
  block[3] = &unk_1E774C318;
  objc_copyWeak(&v61, &location);
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
  v4 = MEMORY[0x1E695DFF8];
  v5 = NSTemporaryDirectory();
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v8 = [v5 stringByAppendingPathComponent:uUIDString];
  v9 = [v4 fileURLWithPath:v8];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:0];

  editSource = [(PXAutoloopAnalysisOperation *)self editSource];
  videoEditSource = [editSource videoEditSource];
  videoURL = [videoEditSource videoURL];

  v13 = [MEMORY[0x1E6987E28] assetWithURL:videoURL];
  v14 = PLPhotoEditGetLog();
  v15 = os_signpost_id_make_with_pointer(v14, self);
  v16 = v14;
  v17 = v16;
  v18 = v15 - 1;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(buf.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "VariationsRecipesOperation", "", &buf, 2u);
  }

  spid = v15;

  if (v13)
  {
    [v13 duration];
  }

  else
  {
    memset(&buf, 0, sizeof(buf));
  }

  CMTimeGetSeconds(&buf);
  selfCopy = self;
  kdebug_trace();

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PXAutoloopAnalysisOperationDidStartNotification" object:selfCopy];

  v59 = 0;
  v21 = v13;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v22 = getget_autoloopSettings_forAssetSymbolLoc_ptr;
  v66 = getget_autoloopSettings_forAssetSymbolLoc_ptr;
  if (!getget_autoloopSettings_forAssetSymbolLoc_ptr)
  {
    buf.value = MEMORY[0x1E69E9820];
    *&buf.timescale = 3221225472;
    buf.epoch = __getget_autoloopSettings_forAssetSymbolLoc_block_invoke;
    v70 = &unk_1E774BD00;
    v71 = &v63;
    v23 = AutoLoopLibrary();
    v24 = dlsym(v23, "get_autoloopSettings_forAsset");
    *(v71[1] + 24) = v24;
    getget_autoloopSettings_forAssetSymbolLoc_ptr = *(v71[1] + 24);
    v22 = v64[3];
  }

  _Block_object_dispose(&v63, 8);
  if (!v22)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"struct autoloopSettings *_get_autoloopSettings_forAsset(AVAsset *__strong, autoloopErrorCode *)"}];
    [currentHandler handleFailureInFunction:v51 file:@"PXAutoloopSoftLinks.m" lineNumber:33 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v25 = v22(v21, &v59);

  if (v59)
  {
    v26 = __35__PXAutoloopAnalysisOperation_main__block_invoke(v59);
  }

  else
  {
    buf.timescale = 1;
    buf.value = 0x200000000;
    v63 = 0;
    progress = [(PXAutoloopAnalysisOperation *)selfCopy progress];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __35__PXAutoloopAnalysisOperation_main__block_invoke_33;
    v56[3] = &unk_1E77311A0;
    v28 = progress;
    v57 = v28;
    objc_copyWeak(&v58, &location);
    _runLiveAnalysisPipeline(v25, v9, v21, &buf, &v63, v56);
    v30 = v29;
    if (([(PXAutoloopAnalysisOperation *)selfCopy isCancelled]& 1) != 0)
    {
      v26 = 0;
    }

    else if (v30 || !v63)
    {
      v26 = __35__PXAutoloopAnalysisOperation_main__block_invoke(v30);
    }

    else
    {
      v31 = _liveAnalysisResultToDictionary(v63);
      v52 = v31;
      if (v31)
      {
        v32 = [v31 copy];
        analysisResult = selfCopy->_analysisResult;
        selfCopy->_analysisResult = v32;

        v26 = 0;
        selfCopy->_succeeded = 1;
      }

      else
      {
        v34 = MEMORY[0x1E696ABC0];
        v67 = *MEMORY[0x1E696A578];
        v68 = @"liveAnalysisResultToDictionary did not return an analysis dictionary";
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
        v36 = v34;
        v37 = v35;
        v38 = [v36 errorWithDomain:@"PXAutoloopAnalysisOperationErrorDomain" code:0 userInfo:v35];
        v39 = v37;
        v26 = v38;
      }
    }

    if (v63)
    {
      _liveAnalysisResultDestroy(v63);
    }

    objc_destroyWeak(&v58);
  }

  if (v26)
  {
    objc_storeStrong(&selfCopy->_error, v26);
    selfCopy->_succeeded = 0;
  }

  if (v25)
  {
    _autoloopSettingsDestroy(v25);
  }

  date2 = [MEMORY[0x1E695DF00] date];
  [date2 timeIntervalSinceDate:date];
  v42 = v41;

  v43 = PLUIGetLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.value) = 138412546;
    *(&buf.value + 4) = selfCopy;
    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = v42;
    _os_log_impl(&dword_1A3C1C000, v43, OS_LOG_TYPE_DEFAULT, "%@ finished generating variation recipes in %.2fs", &buf, 0x16u);
  }

  v44 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
  duration = selfCopy->_duration;
  selfCopy->_duration = v44;

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"PXAutoloopAnalysisOperationDidEndNotification" object:selfCopy];

  v47 = selfCopy;
  kdebug_trace();

  v48 = v17;
  v49 = v48;
  if (v18 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v48))
  {
    LOWORD(buf.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v49, OS_SIGNPOST_INTERVAL_END, spid, "VariationsRecipesOperation", "", &buf, 2u);
  }

  objc_destroyWeak(&v61);
  objc_destroyWeak(&location);
}

void __35__PXAutoloopAnalysisOperation_main__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timeout];
}

uint64_t __35__PXAutoloopAnalysisOperation_main__block_invoke_33(uint64_t a1, float a2)
{
  [*(a1 + 32) setCompletedUnitCount:{vcvtms_s32_f32(objc_msgSend(*(a1 + 32), "totalUnitCount") * a2)}];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 isCancelled] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __35__PXAutoloopAnalysisOperation_main__block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = _autoloopErrorCodeToString(a1);
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A578];
  v7[0] = v1;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"PXAssetVariationRecipeErrorDomain" code:0 userInfo:v3];

  return v4;
}

- (void)cancel
{
  if (([(PXAutoloopAnalysisOperation *)self isFinished]& 1) == 0)
  {
    kdebug_trace();
    v3 = PLPhotoEditGetLog();
    v4 = os_signpost_id_make_with_pointer(v3, self);
    v5 = v3;
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_END, v4, "VariationsRecipesOperation", "", buf, 2u);
    }
  }

  v7.receiver = self;
  v7.super_class = PXAutoloopAnalysisOperation;
  [(PXAutoloopAnalysisOperation *)&v7 cancel];
}

- (void)_timeout
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (([(PXAutoloopAnalysisOperation *)self isFinished]& 1) == 0)
  {
    self->_succeeded = 0;
    v3 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A578];
    v8[0] = @"Recipe generation timed out";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v5 = [v3 errorWithDomain:@"PXAutoloopAnalysisOperationErrorDomain" code:0 userInfo:v4];
    error = self->_error;
    self->_error = v5;

    [(PXAutoloopAnalysisOperation *)self cancel];
  }
}

- (id)recipeForVariationType:(int64_t)type
{
  recipesByVariationType = self->_recipesByVariationType;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v5 = [(NSDictionary *)recipesByVariationType objectForKeyedSubscript:v4];

  return v5;
}

- (PXAutoloopAnalysisOperation)initWithEditSource:(id)source
{
  sourceCopy = source;
  v15.receiver = self;
  v15.super_class = PXAutoloopAnalysisOperation;
  v6 = [(PXAutoloopAnalysisOperation *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_editSource, source);
    v8 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:50];
    progress = v7->_progress;
    v7->_progress = v8;

    objc_initWeak(&location, v7);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__PXAutoloopAnalysisOperation_initWithEditSource___block_invoke;
    v12[3] = &unk_1E774C318;
    objc_copyWeak(&v13, &location);
    [(NSProgress *)v7->_progress setCancellationHandler:v12];
    recipesByVariationType = v7->_recipesByVariationType;
    v7->_recipesByVariationType = MEMORY[0x1E695E0F8];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __50__PXAutoloopAnalysisOperation_initWithEditSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancel];
}

- (PXAutoloopAnalysisOperation)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAutoloopAnalysisOperation.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXAutoloopAnalysisOperation init]"}];

  abort();
}

@end