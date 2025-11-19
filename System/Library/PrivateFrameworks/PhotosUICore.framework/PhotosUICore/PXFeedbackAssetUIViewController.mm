@interface PXFeedbackAssetUIViewController
- (PXFeedbackAssetUIViewController)initWithAsset:(id)a3 delegate:(id)a4;
- (PXFeedbackAssetUIViewControllerDelegate)delegate;
- (void)_fileRadarWithAutoLoopAsset:(id)a3 positiveFeedback:(id)a4 negativeFeedback:(id)a5;
- (void)_startAutoLoopVideoTaskForDiagnosticsWithAsset:(id)a3;
- (void)autoloopVideoTaskStatusDidChange:(id)a3;
- (void)continueFiling;
- (void)userDidFinish:(BOOL)a3;
- (void)userIndicatedDislike;
- (void)userIndicatedLike;
- (void)userSentPositiveFeedback:(id)a3 negativeFeedback:(id)a4 customFeedback:(id)a5;
- (void)viewDidLoad;
@end

@implementation PXFeedbackAssetUIViewController

- (PXFeedbackAssetUIViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)autoloopVideoTaskStatusDidChange:(id)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXFeedbackAssetUIViewController *)self autoLoopFrameworkDiagnosticsCurrentTask];
  if (v5 != v4)
  {
LABEL_14:

    goto LABEL_15;
  }

  v6 = [v4 status];

  if (v6 == 4)
  {
    v5 = objc_opt_new();
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = MEMORY[0x1E695DFF8];
    v9 = [v4 temporaryFilesDirectory];
    v10 = [v8 fileURLWithPath:v9 isDirectory:1];

    v11 = *MEMORY[0x1E695DBB8];
    v29[0] = *MEMORY[0x1E695DBB8];
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v21 = v10;
    v22 = v7;
    v13 = [v7 enumeratorAtURL:v10 includingPropertiesForKeys:v12 options:4 errorHandler:&__block_literal_global_262];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        v18 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v24 + 1) + 8 * v18);
          v23 = 0;
          [v19 getResourceValue:&v23 forKey:v11 error:0];
          v20 = v23;
          if ([v20 BOOLValue])
          {
            [v5 addObject:v19];
          }

          else
          {
            [v14 skipDescendants];
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v16);
    }

    [(PXFeedbackAssetUIViewController *)self setAutoLoopFrameworkDiagnosticFileURLs:v5];
    [(PXFeedbackAssetUIViewController *)self continueFiling];

    goto LABEL_14;
  }

LABEL_15:
}

BOOL __68__PXFeedbackAssetUIViewController_autoloopVideoTaskStatusDidChange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    NSLog(&cfstr_Error_3.isa, a3, a2);
  }

  return a3 == 0;
}

- (void)_startAutoLoopVideoTaskForDiagnosticsWithAsset:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E6978860] defaultManager];
  v6 = objc_alloc_init(MEMORY[0x1E6978B18]);
  [v6 setVideoComplementAllowed:1];
  [v6 setVersion:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__PXFeedbackAssetUIViewController__startAutoLoopVideoTaskForDiagnosticsWithAsset___block_invoke;
  v8[3] = &unk_1E7734D88;
  v9 = v4;
  v10 = self;
  v7 = v4;
  [v5 requestAVAssetForAsset:v7 options:v6 resultHandler:v8];
}

void __82__PXFeedbackAssetUIViewController__startAutoLoopVideoTaskForDiagnosticsWithAsset___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mainFileURL];
  v7 = [PXAutoloopVideoInput inputWithAsset:v4 imageURL:v5];

  v6 = objc_alloc_init(PXAutoloopVideoProcessTask);
  [(PXAutoloopVideoTask *)v6 setDelegate:*(a1 + 40)];
  [(PXAutoloopVideoProcessTask *)v6 setShouldExtractGateFeatures:1];
  [(PXAutoloopVideoTask *)v6 runWithInput:v7];
  [*(a1 + 40) setAutoLoopFrameworkDiagnosticsCurrentTask:v6];
}

- (void)continueFiling
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = [(PXFeedbackAssetUIViewController *)self userLikedIt];
  v4 = @"Negative";
  if (v3)
  {
    v4 = @"Positive";
  }

  v29 = v4;
  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AutoLoop Feedback: %@", v29];
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v5 appendString:@"— AutoLoop Truthing Feedback —\n"];
  [v5 appendFormat:@"\nOverall impression: %@\n\n", v29];
  [v5 appendFormat:@"- Positive Feedback -\n"];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = [(PXFeedbackAssetUIViewController *)self positiveFeedback];
  v7 = [v6 allKeys];

  v8 = [v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v8)
  {
    v9 = *v43;
    do
    {
      v10 = 0;
      do
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v42 + 1) + 8 * v10);
        v12 = [(PXFeedbackAssetUIViewController *)self positiveFeedback];
        v13 = [v12 valueForKey:v11];
        [v5 appendFormat:@"%@: %@\n", v11, v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v8);
  }

  [v5 appendFormat:@"\n- Negative Feedback -\n"];
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  v38 = 0u;
  v14 = [(PXFeedbackAssetUIViewController *)self negativeFeedback];
  v15 = [v14 allKeys];

  v16 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v16)
  {
    v17 = *v39;
    do
    {
      v18 = 0;
      do
      {
        if (*v39 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v38 + 1) + 8 * v18);
        v20 = [(PXFeedbackAssetUIViewController *)self negativeFeedback];
        v21 = [v20 valueForKey:v19];
        [v5 appendFormat:@"%@: %@\n", v19, v21];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v16);
  }

  v22 = [MEMORY[0x1E6978860] defaultManager];
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__71126;
  v36[4] = __Block_byref_object_dispose__71127;
  v37 = objc_opt_new();
  v23 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v23 setVersion:2];
  [v23 setLoadingMode:0x10000];
  v24 = [(PXFeedbackAssetUIViewController *)self asset];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __49__PXFeedbackAssetUIViewController_continueFiling__block_invoke;
  v30[3] = &unk_1E7734D60;
  v35 = v36;
  v25 = v22;
  v31 = v25;
  v32 = self;
  v26 = v28;
  v33 = v26;
  v27 = v5;
  v34 = v27;
  [v25 requestImageForAsset:v24 targetSize:0 contentMode:v23 options:v30 resultHandler:{*MEMORY[0x1E6978E30], *(MEMORY[0x1E6978E30] + 8)}];

  _Block_object_dispose(v36, 8);
}

void __49__PXFeedbackAssetUIViewController_continueFiling__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x1E6978E20]];
  if (v4)
  {
    [*(*(*(a1 + 64) + 8) + 40) addObject:v4];
  }

  v5 = objc_alloc_init(MEMORY[0x1E6978B18]);
  [v5 setVideoComplementAllowed:1];
  [v5 setVersion:1];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) asset];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__PXFeedbackAssetUIViewController_continueFiling__block_invoke_2;
  v13[3] = &unk_1E7734D38;
  v16 = *(a1 + 64);
  *&v8 = *(a1 + 32);
  *(&v8 + 1) = *(a1 + 40);
  v12 = v8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v14 = v12;
  v15 = v11;
  [v6 requestURLForVideo:v7 options:v5 resultHandler:v13];
}

void __49__PXFeedbackAssetUIViewController_continueFiling__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(*(*(a1 + 64) + 8) + 40) addObject:a2];
  }

  v3 = objc_alloc_init(MEMORY[0x1E6978B18]);
  [v3 setVideoComplementAllowed:1];
  [v3 setVersion:0];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) asset];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__PXFeedbackAssetUIViewController_continueFiling__block_invoke_3;
  v10[3] = &unk_1E7734D10;
  v6 = *(a1 + 64);
  v9 = *(a1 + 40);
  v7 = *(&v9 + 1);
  *&v8 = *(a1 + 56);
  *(&v8 + 1) = v6;
  v11 = v9;
  v12 = v8;
  [v4 requestURLForVideo:v5 options:v3 resultHandler:v10];
}

void __49__PXFeedbackAssetUIViewController_continueFiling__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:v5];
  }

  v7 = *(*(*(a1 + 56) + 8) + 40);
  v8 = [*(a1 + 32) autoLoopFrameworkDiagnosticFileURLs];
  [v7 addObjectsFromArray:v8];

  objc_initWeak(&location, *(a1 + 32));
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(*(*(a1 + 56) + 8) + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__PXFeedbackAssetUIViewController_continueFiling__block_invoke_4;
  v13[3] = &unk_1E7747EB0;
  objc_copyWeak(&v14, &location);
  LOBYTE(v12) = 0;
  [PXFeedbackTapToRadarUtilities fileRadarWithTitle:v9 description:v10 classification:@"Other Bug" componentID:@"832794" componentName:@"Photos - AutoLoops" componentVersion:@"Truthing" keyword:0 attachmentURLs:v11 includeSysDiagnose:v12 completionHandler:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __49__PXFeedbackAssetUIViewController_continueFiling__block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  v5 = objc_loadWeakRetained((a1 + 32));
  [v4 feedbackAssetUIViewController:v5 didFinish:a2];
}

- (void)_fileRadarWithAutoLoopAsset:(id)a3 positiveFeedback:(id)a4 negativeFeedback:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(PXFeedbackAssetUIViewController *)self setAsset:v10];
  [(PXFeedbackAssetUIViewController *)self setPositiveFeedback:v9];

  [(PXFeedbackAssetUIViewController *)self setNegativeFeedback:v8];
  [(PXFeedbackAssetUIViewController *)self setAutoLoopFrameworkDiagnosticFileURLs:0];
  [(PXFeedbackAssetUIViewController *)self setAutoLoopFrameworkDiagnosticsCurrentTask:0];
  v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Collecting data for radar..." message:0 preferredStyle:1];
  [(PXFeedbackAssetUIViewController *)self presentViewController:v11 animated:1 completion:&__block_literal_global_71162];
  [(PXFeedbackAssetUIViewController *)self _startAutoLoopVideoTaskForDiagnosticsWithAsset:v10];
}

- (void)userDidFinish:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXFeedbackAssetUIViewController *)self delegate];
  [v5 feedbackAssetUIViewController:self didFinish:v3];
}

- (void)userSentPositiveFeedback:(id)a3 negativeFeedback:(id)a4 customFeedback:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(PXFeedbackAssetUIViewController *)self asset];
  [(PXFeedbackAssetUIViewController *)self _fileRadarWithAutoLoopAsset:v9 positiveFeedback:v8 negativeFeedback:v7];
}

- (void)userIndicatedDislike
{
  [(PXFeedbackAssetUIViewController *)self setUserLikedIt:0];
  v3 = [(PXFeedbackAssetUIViewController *)self feedbackController];
  [v3 showMoreFeedbackForm];
}

- (void)userIndicatedLike
{
  [(PXFeedbackAssetUIViewController *)self setUserLikedIt:1];
  v3 = [(PXFeedbackAssetUIViewController *)self feedbackController];
  [v3 showMoreFeedbackForm];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = PXFeedbackAssetUIViewController;
  [(PXFeedbackAssetUIViewController *)&v13 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x1E69DCCD8]);
  [(PXFeedbackAssetUIViewController *)self setNavigationController:v3];

  v4 = [(PXFeedbackAssetUIViewController *)self navigationController];
  [(PXFeedbackAssetUIViewController *)self addChildViewController:v4];

  v5 = [(PXFeedbackAssetUIViewController *)self view];
  v6 = [(PXFeedbackAssetUIViewController *)self navigationController];
  v7 = [v6 view];
  [v5 addSubview:v7];

  v8 = [(PXFeedbackAssetUIViewController *)self navigationController];
  [v8 didMoveToParentViewController:self];

  v9 = [(PXFeedbackAssetUIViewController *)self navigationController];
  [v9 setToolbarHidden:0];

  v10 = [[PXFeedbackLikeItOrNotComboUIViewController alloc] initWithDelegate:self];
  [(PXFeedbackAssetUIViewController *)self setFeedbackController:v10];

  v11 = [(PXFeedbackAssetUIViewController *)self navigationController];
  v12 = [(PXFeedbackAssetUIViewController *)self feedbackController];
  [v11 pushViewController:v12 animated:1];
}

- (PXFeedbackAssetUIViewController)initWithAsset:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXFeedbackAssetUIViewController;
  v9 = [(PXFeedbackAssetUIViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_asset, a3);
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

@end