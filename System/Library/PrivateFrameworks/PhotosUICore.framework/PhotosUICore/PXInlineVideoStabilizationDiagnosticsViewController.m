@interface PXInlineVideoStabilizationDiagnosticsViewController
- (PXInlineVideoStabilizationDiagnosticsViewController)initWithInputAsset:(id)a3;
- (id)_newStabilizeOperation;
- (id)extraAlertAction;
- (id)variantVideoDescription;
- (void)_exportRecipe;
- (void)_handleStabilizeOperationCompletedWithCompletionHandler:(id)a3;
- (void)invalidateInputAndVariantReferences;
- (void)prepareVariantVideoForExportWithProgress:(id)a3 completion:(id)a4;
- (void)prepareVariantVideoWithProgress:(id)a3 completion:(id)a4;
- (void)viewDidLoad;
@end

@implementation PXInlineVideoStabilizationDiagnosticsViewController

- (id)_newStabilizeOperation
{
  v3 = [(PXVideoComparisonViewController *)self inputAsset];
  v4 = [(PXVideoComparisonViewController *)self inputVideoURL];
  if (v4)
  {
    v34 = 0uLL;
    v35 = 0;
    v5 = [v3 photoIrisProperties];
    v6 = v5;
    if (v5)
    {
      [v5 photoIrisStillDisplayTime];
    }

    else
    {
      v34 = 0uLL;
      v35 = 0;
    }

    v8 = MEMORY[0x1E6960CC0];
    if ((BYTE12(v34) & 0x1D) != 1)
    {
      v34 = *MEMORY[0x1E6960CC0];
      v35 = *(MEMORY[0x1E6960CC0] + 16);
    }

    v9 = +[PXInlineVideoStabilizationSettings sharedInstance];
    v10 = *(MEMORY[0x1E6960C98] + 16);
    v31 = *MEMORY[0x1E6960C98];
    v32 = v10;
    v33 = *(MEMORY[0x1E6960C98] + 32);
    if ([v9 timeRangeEnabled])
    {
      memset(v30, 0, sizeof(v30));
      v29 = 0u;
      v11 = [v3 mediaAnalysisProperties];
      v12 = v11;
      if (v11)
      {
        [v11 bestVideoTimeRange];
      }

      else
      {
        memset(v30, 0, sizeof(v30));
        v29 = 0u;
      }

      if ((BYTE12(v29) & 1) != 0 && (BYTE4(v30[1]) & 1) != 0 && !*(&v30[1] + 1) && (*(&v30[0] + 1) & 0x8000000000000000) == 0)
      {
        time1 = *(v30 + 8);
        v27 = *v8;
        if (CMTimeCompare(&time1, &v27))
        {
          v31 = v29;
          v32 = v30[0];
          v33 = v30[1];
        }
      }
    }

    memset(&time1, 0, sizeof(time1));
    if ([v9 crossfadeEnabled])
    {
      CMTimeMakeWithSeconds(&time1, 0.25, 600);
    }

    else
    {
      time1 = *v8;
    }

    if ([v9 useMediaAnalysisRecipe])
    {
      v13 = MEMORY[0x1E69C0708];
      v14 = *MEMORY[0x1E6987608];
      v15 = objc_alloc(MEMORY[0x1E6988168]);
      v16 = [v15 initWithURL:v4 options:MEMORY[0x1E695E0F8]];
      v17 = [v13 tracksWithMediaType:v14 forAsset:v16];
      v18 = [v17 firstObject];
      [v18 naturalSize];
      v20 = v19;
      v22 = v21;

      v23 = [[PXMediaAnalysisVideoStabilizationRecipeSource alloc] initWithAsset:v3 videoDimensions:v20, v22];
    }

    else
    {
      v23 = [[PXURLVideoStabilizationRecipeSource alloc] initWithVideoURL:v4];
    }

    v24 = v23;
    [(PXVideoStabilizationRecipeSource *)v23 setAllowsOnDemandPixelAnalysis:1];
    -[PXVideoStabilizationRecipeSource setAllowedAnalysisTypes:](v24, "setAllowedAnalysisTypes:", [v9 allowedAnalysisTypes]);
    v25 = objc_alloc_init(PXVideoStabilizeOperationSpec);
    [(PXVideoProcessingOperationSpec *)v25 setInputVideoURL:v4];
    v29 = v34;
    *&v30[0] = v35;
    [(PXVideoStabilizeOperationSpec *)v25 setStartTime:&v29];
    v29 = v31;
    v30[0] = v32;
    v30[1] = v33;
    [(PXVideoStabilizeOperationSpec *)v25 setTimeRange:&v29];
    v29 = *&time1.value;
    *&v30[0] = time1.epoch;
    [(PXVideoStabilizeOperationSpec *)v25 setCrossfadeDuration:&v29];
    [(PXVideoStabilizeOperationSpec *)v25 setRecipeSource:v24];
    v7 = [[PXVideoStabilizeOperation alloc] initWithSpec:v25];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_handleStabilizeOperationCompletedWithCompletionHandler:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  stabilizeOperation = self->_stabilizeOperation;
  v5 = a3;
  v6 = [(PXVideoProcessingOperation *)stabilizeOperation result];
  v7 = [v6 outputVideoAsset];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69880B0]) initWithAsset:v7];
    v9 = [v6 outputVideoComposition];
    [v8 setVideoComposition:v9];

    v10 = [v6 outputAudioMix];
    [v8 setAudioMix:v10];

    v11 = [v8 asset];
    v12 = v11;
    if (v11)
    {
      [v11 duration];
    }

    else
    {
      memset(&duration, 0, 24);
    }

    v15 = **&MEMORY[0x1E6960CC0];
    CMTimeRangeMake(&v16, &v15, &duration.start);
    duration = v16;
    [v8 setLoopTimeRange:&duration];

    v13 = 0;
  }

  else
  {
    v13 = [v6 error];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(duration.start.value) = 138412290;
      *(&duration.start.value + 4) = v13;
      _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "FAILED to stabilized video for diagnostics: %@", &duration, 0xCu);
    }

    v8 = 0;
  }

  result = self->_result;
  self->_result = v6;

  v5[2](v5, v8, v13);
}

- (void)_exportRecipe
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = [(PXVideoStabilizeResult *)self->_result dictionaryRepresentation];
  v4 = [(PXVideoComparisonViewController *)self inputVideoURL];
  v5 = [v4 lastPathComponent];
  v6 = [v5 stringByDeletingPathExtension];

  if (v3)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Error" message:@"Unable to retrieve recipe or input video URL" preferredStyle:1];
    v8 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
    [v10 addAction:v8];

    [(PXInlineVideoStabilizationDiagnosticsViewController *)self presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v9 temporaryDirectory];

    v11 = [v6 stringByAppendingString:@"_info"];
    v12 = [v10 URLByAppendingPathComponent:v11];
    v13 = [v12 URLByAppendingPathExtension:@"plist"];

    [v3 writeToURL:v13 error:0];
    v14 = objc_alloc(MEMORY[0x1E69CD9F8]);
    v17[0] = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v16 = [v14 initWithActivityItems:v15 applicationActivities:0];

    [(PXInlineVideoStabilizationDiagnosticsViewController *)self presentViewController:v16 animated:1 completion:0];
  }
}

- (void)prepareVariantVideoForExportWithProgress:(id)a3 completion:(id)a4
{
  v6 = a3;
  v26 = a4;
  v7 = [(PXInlineVideoStabilizationDiagnosticsViewController *)self _newStabilizeOperation];
  exportOperation = self->_exportOperation;
  self->_exportOperation = v7;

  v9 = [(PXVideoComparisonViewController *)self inputVideoURL];
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [v10 temporaryDirectory];

  v25 = v9;
  v12 = [v9 lastPathComponent];
  v13 = [v12 stringByDeletingPathExtension];

  v14 = [v13 stringByAppendingString:@"_render"];
  v15 = [v13 stringByAppendingString:@"_info"];
  v16 = [v11 URLByAppendingPathComponent:v14];
  v17 = [v16 URLByAppendingPathExtension:@"mov"];

  v18 = [v11 URLByAppendingPathComponent:v15];
  v19 = [v18 URLByAppendingPathExtension:@"plist"];

  v20 = [(PXVideoProcessingOperation *)self->_exportOperation spec];
  [v20 setOutputURL:v17];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __107__PXInlineVideoStabilizationDiagnosticsViewController_prepareVariantVideoForExportWithProgress_completion___block_invoke;
  v33[3] = &unk_1E772EBF8;
  v21 = v6;
  v34 = v21;
  [(PXVideoProcessingOperation *)self->_exportOperation setProgressHandler:v33];
  objc_initWeak(&location, self->_exportOperation);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __107__PXInlineVideoStabilizationDiagnosticsViewController_prepareVariantVideoForExportWithProgress_completion___block_invoke_3;
  v27[3] = &unk_1E774B1F8;
  objc_copyWeak(&v31, &location);
  v22 = v19;
  v28 = v22;
  v23 = v26;
  v30 = v23;
  v24 = v17;
  v29 = v24;
  [(PXVideoStabilizeOperation *)self->_exportOperation setCompletionBlock:v27];
  [(NSOperationQueue *)self->_operationQueue addOperation:self->_exportOperation];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __107__PXInlineVideoStabilizationDiagnosticsViewController_prepareVariantVideoForExportWithProgress_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 32);
  v4 = v3;
  px_dispatch_on_main_queue();
}

void __107__PXInlineVideoStabilizationDiagnosticsViewController_prepareVariantVideoForExportWithProgress_completion___block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = [WeakRetained result];

  v4 = [v3 error];
  if (!v4)
  {
    v5 = [v3 dictionaryRepresentation];
    v6 = a1[4];
    v8 = 0;
    [v5 writeToURL:v6 error:&v8];
    v4 = v8;
  }

  a1[6];
  a1[5];
  a1[4];
  v7 = v4;
  px_dispatch_on_main_queue();
}

- (void)prepareVariantVideoWithProgress:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXInlineVideoStabilizationDiagnosticsViewController *)self _newStabilizeOperation];
  stabilizeOperation = self->_stabilizeOperation;
  self->_stabilizeOperation = v8;

  v10 = self->_stabilizeOperation;
  if (v10)
  {
    v11 = [(PXVideoProcessingOperation *)v10 spec];
    [v11 setPerformStabilization:1];

    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __98__PXInlineVideoStabilizationDiagnosticsViewController_prepareVariantVideoWithProgress_completion___block_invoke;
    v17[3] = &unk_1E774AA30;
    objc_copyWeak(&v19, &location);
    v18 = v7;
    [(PXVideoStabilizeOperation *)self->_stabilizeOperation setCompletionBlock:v17];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __98__PXInlineVideoStabilizationDiagnosticsViewController_prepareVariantVideoWithProgress_completion___block_invoke_3;
    v15 = &unk_1E772EBF8;
    v16 = v6;
    [(PXVideoProcessingOperation *)self->_stabilizeOperation setProgressHandler:&v12];
    [(NSOperationQueue *)self->_operationQueue addOperation:self->_stabilizeOperation, v12, v13, v14, v15];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __98__PXInlineVideoStabilizationDiagnosticsViewController_prepareVariantVideoWithProgress_completion___block_invoke(uint64_t a1)
{
  objc_copyWeak(&v2, (a1 + 40));
  *(a1 + 32);
  px_dispatch_on_main_queue();
}

void __98__PXInlineVideoStabilizationDiagnosticsViewController_prepareVariantVideoWithProgress_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 32);
  v4 = v3;
  px_dispatch_on_main_queue();
}

void __98__PXInlineVideoStabilizationDiagnosticsViewController_prepareVariantVideoWithProgress_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleStabilizeOperationCompletedWithCompletionHandler:*(a1 + 32)];
}

- (void)invalidateInputAndVariantReferences
{
  v4.receiver = self;
  v4.super_class = PXInlineVideoStabilizationDiagnosticsViewController;
  [(PXVideoComparisonViewController *)&v4 invalidateInputAndVariantReferences];
  result = self->_result;
  self->_result = 0;
}

- (id)extraAlertAction
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__PXInlineVideoStabilizationDiagnosticsViewController_extraAlertAction__block_invoke;
  v4[3] = &unk_1E7749600;
  v4[4] = self;
  v2 = [MEMORY[0x1E69DC648] actionWithTitle:@"Export Analysis Result" style:0 handler:v4];

  return v2;
}

- (id)variantVideoDescription
{
  v2 = [(PXVideoStabilizeResult *)self->_result dictionaryRepresentation];
  v3 = [v2 description];

  return v3;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PXInlineVideoStabilizationDiagnosticsViewController;
  [(PXVideoComparisonViewController *)&v3 viewDidLoad];
  [(PXInlineVideoStabilizationDiagnosticsViewController *)self setTitle:@"Inline Stabilization"];
}

- (PXInlineVideoStabilizationDiagnosticsViewController)initWithInputAsset:(id)a3
{
  v7.receiver = self;
  v7.super_class = PXInlineVideoStabilizationDiagnosticsViewController;
  v3 = [(PXVideoComparisonViewController *)&v7 initWithInputAsset:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v3->_operationQueue;
    v3->_operationQueue = v4;
  }

  return v3;
}

@end