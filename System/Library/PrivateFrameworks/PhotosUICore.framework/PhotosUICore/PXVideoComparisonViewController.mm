@interface PXVideoComparisonViewController
- (NSString)inputVideoDescription;
- (PXVideoComparisonViewController)initWithCoder:(id)coder;
- (PXVideoComparisonViewController)initWithInputAsset:(id)asset;
- (PXVideoComparisonViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_exportInputVideo;
- (void)_exportVariantVideo;
- (void)_exportVariantVideoWithCompletionHandler:(id)handler;
- (void)_fileRadar;
- (void)_handleActionButton:(id)button;
- (void)_handleResultButton:(id)button;
- (void)_handleSettingsButton:(id)button;
- (void)_handleSettingsDone:(id)done;
- (void)_hideProgressAndStatus;
- (void)_prepareInputAndVariantVideos;
- (void)_prepareVariantVideo;
- (void)_reloadInputAndVariantVideos;
- (void)_showAlertWithMessage:(id)message;
- (void)_showProgressAndStatus;
- (void)_updateDisplayedPlayerItem;
- (void)_updatePlayerItem:(id)item error:(id)error;
- (void)_updateProgress:(float)progress status:(id)status;
- (void)invalidateInputAndVariantReferences;
- (void)prepareVariantVideoForExportWithProgress:(id)progress completion:(id)completion;
- (void)prepareVariantVideoWithProgress:(id)progress completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PXVideoComparisonViewController

- (void)invalidateInputAndVariantReferences
{
  [(PXVideoComparisonViewController *)self setInputVideoURL:0];
  [(PXVideoComparisonViewController *)self setInputPlayerItem:0];
  [(PXVideoComparisonViewController *)self setInputVideoError:0];
  [(PXVideoComparisonViewController *)self setVariantPlayerItem:0];
  [(PXVideoComparisonViewController *)self setVariantVideoError:0];
  defaultManager = [MEMORY[0x1E6978860] defaultManager];
  [defaultManager cancelImageRequest:{-[PXVideoComparisonViewController videoRequestID](self, "videoRequestID")}];

  [(PXVideoComparisonViewController *)self setVideoRequestID:0];
}

- (void)prepareVariantVideoForExportWithProgress:(id)progress completion:(id)completion
{
  progressCopy = progress;
  completionCopy = completion;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoComparisonViewController.m" lineNumber:408 description:{@"Method %s is a responsibility of subclass %@", "-[PXVideoComparisonViewController prepareVariantVideoForExportWithProgress:completion:]", v11}];

  abort();
}

- (void)prepareVariantVideoWithProgress:(id)progress completion:(id)completion
{
  progressCopy = progress;
  completionCopy = completion;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoComparisonViewController.m" lineNumber:404 description:{@"Method %s is a responsibility of subclass %@", "-[PXVideoComparisonViewController prepareVariantVideoWithProgress:completion:]", v11}];

  abort();
}

- (NSString)inputVideoDescription
{
  inputAsset = [(PXVideoComparisonViewController *)self inputAsset];
  v3 = [inputAsset debugDescription];

  return v3;
}

- (void)_updatePlayerItem:(id)item error:(id)error
{
  errorCopy = error;
  [(ISWrappedAVPlayer *)self->_videoPlayer replaceCurrentItemWithPlayerItem:item];
  LODWORD(v6) = 1.0;
  [(ISWrappedAVPlayer *)self->_videoPlayer setRate:v6];
  v7 = errorCopy;
  if (errorCopy)
  {
    v8 = [errorCopy description];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = @"Unable to display video – no error passed";
    }

    [(PXVideoComparisonViewController *)self _showAlertWithMessage:v10];

    v7 = errorCopy;
  }
}

- (void)_updateDisplayedPlayerItem
{
  if ([(UISegmentedControl *)self->_variantSegmentedControl selectedSegmentIndex])
  {
    variantPlayerItem = [(PXVideoComparisonViewController *)self variantPlayerItem];
    [(PXVideoComparisonViewController *)self variantVideoError];
  }

  else
  {
    variantPlayerItem = [(PXVideoComparisonViewController *)self inputPlayerItem];
    [(PXVideoComparisonViewController *)self inputVideoError];
  }
  v3 = ;
  [(PXVideoComparisonViewController *)self _updatePlayerItem:variantPlayerItem error:v3];
}

- (void)_prepareVariantVideo
{
  v3 = MEMORY[0x1E696AEC0];
  variantVideoButtonsTitle = [(PXVideoComparisonViewController *)self variantVideoButtonsTitle];
  v5 = [v3 stringWithFormat:@"Loading %@ Video", variantVideoButtonsTitle];

  LODWORD(v6) = 0.5;
  [(PXVideoComparisonViewController *)self _updateProgress:v5 status:v6];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PXVideoComparisonViewController__prepareVariantVideo__block_invoke;
  v9[3] = &unk_1E773DDB8;
  objc_copyWeak(&v10, &location);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PXVideoComparisonViewController__prepareVariantVideo__block_invoke_2;
  v7[3] = &unk_1E773DE30;
  objc_copyWeak(&v8, &location);
  [(PXVideoComparisonViewController *)self prepareVariantVideoWithProgress:v9 completion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __55__PXVideoComparisonViewController__prepareVariantVideo__block_invoke(uint64_t a1, void *a2, float a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v6 = a3;
  [WeakRetained _updateProgress:v5 status:v6];
}

void __55__PXVideoComparisonViewController__prepareVariantVideo__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setVariantPlayerItem:v6];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setVariantVideoError:v5];

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 _hideProgressAndStatus];

  v10 = objc_loadWeakRetained((a1 + 32));
  [v10 _updateDisplayedPlayerItem];
}

- (void)_prepareInputAndVariantVideos
{
  v3 = MEMORY[0x1E696AEC0];
  inputVideoButtonsTitle = [(PXVideoComparisonViewController *)self inputVideoButtonsTitle];
  v5 = [v3 stringWithFormat:@"Loading %@ Video", inputVideoButtonsTitle];

  LODWORD(v6) = 1036831949;
  [(PXVideoComparisonViewController *)self _updateProgress:v5 status:v6];
  defaultManager = [MEMORY[0x1E6978860] defaultManager];
  [defaultManager cancelImageRequest:{-[PXVideoComparisonViewController videoRequestID](self, "videoRequestID")}];

  inputAsset = [(PXVideoComparisonViewController *)self inputAsset];
  [inputAsset fetchPropertySetsIfNeeded];
  v9 = objc_alloc_init(MEMORY[0x1E6978B18]);
  [v9 setNetworkAccessAllowed:1];
  [v9 setVideoComplementAllowed:1];
  [v9 setStreamingAllowed:0];
  objc_initWeak(&location, self);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  defaultManager2 = [MEMORY[0x1E6978860] defaultManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__PXVideoComparisonViewController__prepareInputAndVariantVideos__block_invoke;
  v12[3] = &unk_1E773DE08;
  v12[4] = &v14;
  objc_copyWeak(&v13, &location);
  v11 = [defaultManager2 requestURLForVideo:inputAsset options:v9 resultHandler:v12];

  *(v15 + 6) = v11;
  [(PXVideoComparisonViewController *)self setVideoRequestID:v11];
  _Block_object_dispose(&v14, 8);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __64__PXVideoComparisonViewController__prepareInputAndVariantVideos__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v7, (a1 + 40));
  v5;
  px_dispatch_on_main_queue();
}

void __64__PXVideoComparisonViewController__prepareInputAndVariantVideos__block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained videoRequestID];

  if (v2 == v4)
  {
    if (*(a1 + 32))
    {
      v5 = [objc_alloc(MEMORY[0x1E69880B0]) initWithURL:*(a1 + 32)];
      v6 = [v5 asset];
      v7 = v6;
      if (v6)
      {
        [v6 duration];
      }

      else
      {
        memset(&v14, 0, 24);
      }

      start = **&MEMORY[0x1E6960CC0];
      CMTimeRangeMake(&v16, &start, &v14.start);
      v14 = v16;
      [v5 setLoopTimeRange:&v14];

      v8 = 0;
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to URL for Input Video"];
      v5 = 0;
    }

    v9 = *(a1 + 32);
    v10 = objc_loadWeakRetained((a1 + 48));
    [v10 setInputVideoURL:v9];

    v11 = objc_loadWeakRetained((a1 + 48));
    [v11 setInputPlayerItem:v5];

    v12 = objc_loadWeakRetained((a1 + 48));
    [v12 setInputVideoError:v8];

    v13 = objc_loadWeakRetained((a1 + 48));
    [v13 _prepareVariantVideo];
  }
}

- (void)_reloadInputAndVariantVideos
{
  [(PXVideoComparisonViewController *)self _showProgressAndStatus];
  [(PXVideoComparisonViewController *)self invalidateInputAndVariantReferences];

  [(PXVideoComparisonViewController *)self _prepareInputAndVariantVideos];
}

- (void)_updateProgress:(float)progress status:(id)status
{
  progressView = self->_progressView;
  statusCopy = status;
  *&v7 = progress;
  [(UIProgressView *)progressView setProgress:v7];
  [(UILabel *)self->_statusLabel setText:statusCopy];
}

- (void)_showProgressAndStatus
{
  [(UIProgressView *)self->_progressView setProgress:0.0];
  [(UILabel *)self->_statusLabel setText:0];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__PXVideoComparisonViewController__showProgressAndStatus__block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:0.1];
}

uint64_t __57__PXVideoComparisonViewController__showProgressAndStatus__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1008) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 1032);

  return [v2 setAlpha:1.0];
}

- (void)_hideProgressAndStatus
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57__PXVideoComparisonViewController__hideProgressAndStatus__block_invoke;
  v2[3] = &unk_1E774C648;
  v2[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v2 animations:0.1];
}

uint64_t __57__PXVideoComparisonViewController__hideProgressAndStatus__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1008) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 1032);

  return [v2 setAlpha:0.0];
}

- (void)_exportVariantVideoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x1E696AEC0];
  variantVideoButtonsTitle = [(PXVideoComparisonViewController *)self variantVideoButtonsTitle];
  v7 = [v5 stringWithFormat:@"Preparing %@ Video for Export", variantVideoButtonsTitle];

  [(PXVideoComparisonViewController *)self _updateProgress:v7 status:0.0];
  [(PXVideoComparisonViewController *)self _showProgressAndStatus];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__PXVideoComparisonViewController__exportVariantVideoWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E773DDB8;
  objc_copyWeak(&v13, &location);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__PXVideoComparisonViewController__exportVariantVideoWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E773DDE0;
  v8 = handlerCopy;
  v10 = v8;
  objc_copyWeak(&v11, &location);
  [(PXVideoComparisonViewController *)self prepareVariantVideoForExportWithProgress:v12 completion:v9];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __76__PXVideoComparisonViewController__exportVariantVideoWithCompletionHandler___block_invoke(uint64_t a1, void *a2, float a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *&v6 = a3;
  [WeakRetained _updateProgress:v5 status:v6];
}

void __76__PXVideoComparisonViewController__exportVariantVideoWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _hideProgressAndStatus];
}

- (void)_exportVariantVideo
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__PXVideoComparisonViewController__exportVariantVideo__block_invoke;
  v3[3] = &unk_1E773DD90;
  objc_copyWeak(&v4, &location);
  [(PXVideoComparisonViewController *)self _exportVariantVideoWithCompletionHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __54__PXVideoComparisonViewController__exportVariantVideo__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (!a2 || v6)
  {
    v14 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v16 = MEMORY[0x1E696AEC0];
    v17 = [v7 description];
    v18 = v17;
    v19 = @"<empty>";
    if (v17)
    {
      v19 = v17;
    }

    v20 = [v16 stringWithFormat:@"Export failed with error: %@", v19];

    [WeakRetained _showAlertWithMessage:v20];
  }

  else
  {
    v8 = MEMORY[0x1E69CD9F8];
    v9 = a2;
    v10 = [v8 alloc];
    v21[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];

    v12 = [v10 initWithActivityItems:v11 applicationActivities:0];
    v13 = objc_loadWeakRetained((a1 + 32));
    [v13 presentViewController:v12 animated:1 completion:0];
  }
}

- (void)_exportInputVideo
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (self->_inputVideoURL)
  {
    v3 = objc_alloc(MEMORY[0x1E69CD9F8]);
    v6[0] = self->_inputVideoURL;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    v5 = [v3 initWithActivityItems:v4 applicationActivities:0];

    [(PXVideoComparisonViewController *)self presentViewController:v5 animated:1 completion:0];
  }
}

- (void)_fileRadar
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __45__PXVideoComparisonViewController__fileRadar__block_invoke;
  v2[3] = &unk_1E773DD68;
  v2[4] = self;
  [(PXVideoComparisonViewController *)self _exportVariantVideoWithCompletionHandler:v2];
}

void __45__PXVideoComparisonViewController__fileRadar__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [v7 path];
  v12 = [v10 fileExistsAtPath:v11];

  if (v12)
  {
    v13 = objc_alloc_init(PXFeedbackTapToRadarViewController);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __45__PXVideoComparisonViewController__fileRadar__block_invoke_2;
    v20[3] = &unk_1E773DD40;
    v20[4] = *(a1 + 32);
    v21 = v7;
    v22 = v8;
    [(PXFeedbackTapToRadarViewController *)v13 setFileRadarHandler:v20];
    [*(a1 + 32) presentViewController:v13 animated:1 completion:0];
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = MEMORY[0x1E696AEC0];
    v16 = [v9 description];
    v17 = v16;
    v18 = @"<empty>";
    if (v16)
    {
      v18 = v16;
    }

    v19 = [v15 stringWithFormat:@"Export failed with error: %@", v18];
    [v14 _showAlertWithMessage:v19];
  }
}

void __45__PXVideoComparisonViewController__fileRadar__block_invoke_2(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3)
  {
    v28[0] = @"com.apple.PhotoLibraryServices.PhotosDiagnostics";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = [*(a1 + 32) radarTitle];
  v9 = [*(a1 + 32) radarClassification];
  v10 = v9;
  v11 = @"Other Bug";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [*(a1 + 32) radarComponentID];
  v14 = v13;
  v15 = @"937049";
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  v17 = [*(a1 + 32) radarComponentName];
  v18 = v17;
  v19 = @"Photos UI Library";
  if (v17)
  {
    v19 = v17;
  }

  v20 = v19;

  v21 = [*(a1 + 32) radarComponentVersion];
  v22 = v21;
  v23 = @"iOS";
  if (v21)
  {
    v23 = v21;
  }

  v24 = v23;

  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = v25;
  if (*(a1 + 40))
  {
    [v25 addObject:?];
  }

  if (*(a1 + 48))
  {
    [v26 addObject:?];
  }

  if (*(*(a1 + 32) + 1056))
  {
    [v26 addObject:?];
  }

  LOWORD(v27) = a3;
  [PXFeedbackTapToRadarUtilities fileRadarWithTitle:v8 description:&stru_1F1741150 classification:v12 componentID:v16 componentName:v20 componentVersion:v24 keyword:0 screenshotURLs:0 attachmentURLs:v26 includeSysDiagnose:v27 includeInternalRelease:v7 additionalExtensionIdentifiers:0 completionHandler:?];
}

- (void)_showAlertWithMessage:(id)message
{
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Error" message:message preferredStyle:1];
  v4 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
  [v5 addAction:v4];

  [(PXVideoComparisonViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_handleResultButton:(id)button
{
  if ([(UISegmentedControl *)self->_variantSegmentedControl selectedSegmentIndex])
  {
    [(PXVideoComparisonViewController *)self variantVideoDescription];
  }

  else
  {
    [(PXVideoComparisonViewController *)self inputVideoDescription];
  }
  v4 = ;
  v5 = MEMORY[0x1E69DD258];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__PXVideoComparisonViewController__handleResultButton___block_invoke;
  v8[3] = &unk_1E7740590;
  v9 = v4;
  v6 = v4;
  v7 = [v5 px_viewControllerWithOutput:v8];
  [(PXVideoComparisonViewController *)self presentViewController:v7 animated:1 completion:0];
}

__CFString *__55__PXVideoComparisonViewController__handleResultButton___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return *(a1 + 32);
  }

  else
  {
    return &stru_1F1741150;
  }
}

- (void)_handleActionButton:(id)button
{
  v4 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __55__PXVideoComparisonViewController__handleActionButton___block_invoke;
  v18[3] = &unk_1E7749600;
  v18[4] = self;
  v5 = [MEMORY[0x1E69DC648] actionWithTitle:@"File Radar" style:0 handler:v18];
  [v4 addAction:v5];

  v6 = MEMORY[0x1E696AEC0];
  inputVideoButtonsTitle = [(PXVideoComparisonViewController *)self inputVideoButtonsTitle];
  v8 = [v6 stringWithFormat:@"Export %@ Video", inputVideoButtonsTitle];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__PXVideoComparisonViewController__handleActionButton___block_invoke_2;
  v17[3] = &unk_1E7749600;
  v17[4] = self;
  v9 = [MEMORY[0x1E69DC648] actionWithTitle:v8 style:0 handler:v17];
  [v4 addAction:v9];

  v10 = MEMORY[0x1E696AEC0];
  variantVideoButtonsTitle = [(PXVideoComparisonViewController *)self variantVideoButtonsTitle];
  v12 = [v10 stringWithFormat:@"Export %@ Video", variantVideoButtonsTitle];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__PXVideoComparisonViewController__handleActionButton___block_invoke_3;
  v16[3] = &unk_1E7749600;
  v16[4] = self;
  v13 = [MEMORY[0x1E69DC648] actionWithTitle:v12 style:0 handler:v16];
  [v4 addAction:v13];

  extraAlertAction = [(PXVideoComparisonViewController *)self extraAlertAction];
  if (extraAlertAction)
  {
    [v4 addAction:extraAlertAction];
  }

  v15 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
  [v4 addAction:v15];

  [(PXVideoComparisonViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_handleSettingsDone:(id)done
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__PXVideoComparisonViewController__handleSettingsDone___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXVideoComparisonViewController *)self dismissViewControllerAnimated:1 completion:v3];
}

- (void)_handleSettingsButton:(id)button
{
  settings = [(PXVideoComparisonViewController *)self settings];
  if (settings)
  {
    v8 = settings;
    v5 = [objc_alloc(MEMORY[0x1E69C66C0]) initWithRootSettings:settings];
    v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__handleSettingsDone_];
    [v5 setDismissButton:v6];

    presentationController = [v5 presentationController];
    [presentationController setDelegate:self];

    [(PXVideoComparisonViewController *)self presentViewController:v5 animated:1 completion:0];
    settings = v8;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PXVideoComparisonViewController;
  [(PXVideoComparisonViewController *)&v4 viewDidAppear:appear];
  [(PXVideoComparisonViewController *)self _reloadInputAndVariantVideos];
}

- (void)viewDidLoad
{
  v71[3] = *MEMORY[0x1E69E9840];
  v68.receiver = self;
  v68.super_class = PXVideoComparisonViewController;
  [(PXVideoComparisonViewController *)&v68 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x1E69C1B20]);
  videoPlayer = self->_videoPlayer;
  self->_videoPlayer = v3;

  view = [(PXVideoComparisonViewController *)self view];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [view setBackgroundColor:blackColor];

  v7 = objc_alloc_init(PXVideoPlayerView);
  videoView = self->_videoView;
  self->_videoView = v7;

  [view bounds];
  [(PXVideoPlayerView *)self->_videoView setFrame:?];
  [(PXVideoPlayerView *)self->_videoView setAutoresizingMask:18];
  [(PXVideoPlayerView *)self->_videoView setVideoViewContentMode:1];
  [(PXVideoPlayerView *)self->_videoView setPlayer:self->_videoPlayer];
  v9 = self->_videoPlayer;
  mEMORY[0x1E69C1B18] = [MEMORY[0x1E69C1B18] sharedAmbientInstance];
  [(ISWrappedAVPlayer *)v9 setWrappedAudioSession:mEMORY[0x1E69C1B18]];

  [view addSubview:self->_videoView];
  v11 = [objc_alloc(MEMORY[0x1E69DCE48]) initWithProgressViewStyle:0];
  progressView = self->_progressView;
  self->_progressView = v11;

  [view addSubview:self->_progressView];
  [(UIProgressView *)self->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [(UIProgressView *)self->_progressView topAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];

  leftAnchor = [(UIProgressView *)self->_progressView leftAnchor];
  safeAreaLayoutGuide2 = [view safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide2 leftAnchor];
  v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2];

  rightAnchor = [(UIProgressView *)self->_progressView rightAnchor];
  safeAreaLayoutGuide3 = [view safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide3 rightAnchor];
  v24 = [rightAnchor constraintEqualToAnchor:rightAnchor2];

  v25 = MEMORY[0x1E696ACD8];
  v71[0] = v16;
  v71[1] = v20;
  v71[2] = v24;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:3];
  [v25 activateConstraints:v26];

  v67 = [MEMORY[0x1E69DC730] effectWithStyle:2];
  v27 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v67];
  statusBackgroundView = self->_statusBackgroundView;
  self->_statusBackgroundView = v27;

  [(UIVisualEffectView *)self->_statusBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:self->_statusBackgroundView];
  topAnchor3 = [(UIVisualEffectView *)self->_statusBackgroundView topAnchor];
  bottomAnchor = [(UIProgressView *)self->_progressView bottomAnchor];
  v31 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:10.0];

  leftAnchor3 = [(UIVisualEffectView *)self->_statusBackgroundView leftAnchor];
  safeAreaLayoutGuide4 = [view safeAreaLayoutGuide];
  leftAnchor4 = [safeAreaLayoutGuide4 leftAnchor];
  v35 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:50.0];

  rightAnchor3 = [(UIVisualEffectView *)self->_statusBackgroundView rightAnchor];
  safeAreaLayoutGuide5 = [view safeAreaLayoutGuide];
  rightAnchor4 = [safeAreaLayoutGuide5 rightAnchor];
  v39 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:-50.0];

  heightAnchor = [(UIVisualEffectView *)self->_statusBackgroundView heightAnchor];
  v41 = [heightAnchor constraintEqualToConstant:40.0];

  v42 = MEMORY[0x1E696ACD8];
  v65 = v35;
  v66 = v31;
  v70[0] = v31;
  v70[1] = v35;
  v70[2] = v39;
  v70[3] = v41;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:4];
  [v42 activateConstraints:v43];

  [(UIVisualEffectView *)self->_statusBackgroundView setAlpha:0.0];
  v44 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  statusLabel = self->_statusLabel;
  self->_statusLabel = v44;

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)self->_statusLabel setTextColor:whiteColor];

  [(UILabel *)self->_statusLabel setTextAlignment:1];
  [(UILabel *)self->_statusLabel setAutoresizingMask:18];
  [(UIVisualEffectView *)self->_statusBackgroundView bounds];
  [(UILabel *)self->_statusLabel setFrame:?];
  contentView = [(UIVisualEffectView *)self->_statusBackgroundView contentView];
  [contentView addSubview:self->_statusLabel];

  v48 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:self action:sel__handleActionButton_];
  v49 = objc_alloc(MEMORY[0x1E69DCF38]);
  inputVideoButtonsTitle = [(PXVideoComparisonViewController *)self inputVideoButtonsTitle];
  v69[0] = inputVideoButtonsTitle;
  variantVideoButtonsTitle = [(PXVideoComparisonViewController *)self variantVideoButtonsTitle];
  v69[1] = variantVideoButtonsTitle;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
  v53 = [v49 initWithItems:v52];
  variantSegmentedControl = self->_variantSegmentedControl;
  self->_variantSegmentedControl = v53;

  [(UISegmentedControl *)self->_variantSegmentedControl setSelectedSegmentIndex:[(PXVideoComparisonViewController *)self useVariantVideoByDefaultInToggle]];
  [(UISegmentedControl *)self->_variantSegmentedControl addTarget:self action:sel__handleVariantSegmentedControl_ forControlEvents:4096];
  v55 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_variantSegmentedControl];
  navigationItem = [(PXVideoComparisonViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v55];

  v57 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  settings = [(PXVideoComparisonViewController *)self settings];

  if (settings)
  {
    v59 = objc_alloc(MEMORY[0x1E69DC708]);
    v60 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"gear"];
    settings = [v59 initWithImage:v60 style:0 target:self action:sel__handleSettingsButton_];
  }

  v61 = objc_alloc(MEMORY[0x1E69DC708]);
  v62 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info"];
  v63 = [v61 initWithImage:v62 style:0 target:self action:sel__handleResultButton_];

  v64 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v64 addObject:v48];
  if (settings)
  {
    [v64 addObject:v57];
    [v64 addObject:settings];
  }

  [v64 addObject:v57];
  [v64 addObject:v63];
  [(PXVideoComparisonViewController *)self setToolbarItems:v64];
}

- (PXVideoComparisonViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoComparisonViewController.m" lineNumber:68 description:{@"%s is not available as initializer", "-[PXVideoComparisonViewController initWithCoder:]"}];

  abort();
}

- (PXVideoComparisonViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXVideoComparisonViewController.m" lineNumber:64 description:{@"%s is not available as initializer", "-[PXVideoComparisonViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXVideoComparisonViewController)initWithInputAsset:(id)asset
{
  assetCopy = asset;
  v9.receiver = self;
  v9.super_class = PXVideoComparisonViewController;
  v6 = [(PXVideoComparisonViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inputAsset, asset);
    v7->_videoRequestID = 0;
    v7->_useVariantVideoByDefaultInToggle = 0;
  }

  return v7;
}

@end