@interface PUParallaxLayerStackDebugViewController
- (CGRect)initialVisibleRect;
- (PUParallaxLayerStackDebugViewController)init;
- (id)_newButtonWithSystemImageName:(id)a3;
- (void)_presentSheetController:(id)a3;
- (void)_updateDateTimeView;
- (void)hideDowloadProgressIndicator;
- (void)hideProgressIndicator;
- (void)loadLayerStack:(id)a3;
- (void)loadLayerStack:(id)a3 segmentationItem:(id)a4;
- (void)loadPHAsset:(id)a3;
- (void)loadPartialSegmentationItem:(id)a3 loadingState:(unint64_t)a4;
- (void)loadSegmentationItem:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)panGesture:(id)a3;
- (void)pinchGesture:(id)a3;
- (void)renderAfterStyleChange;
- (void)renderAfterVisibleFrameChange;
- (void)setViewModel:(id)a3;
- (void)shareLayerStack:(id)a3;
- (void)showColorPalettes:(id)a3;
- (void)showDownloadProgressIndicator;
- (void)showLayerList:(id)a3;
- (void)showLooks:(id)a3;
- (void)showProgressIndicator:(id)a3;
- (void)tapToRadar:(id)a3;
- (void)toggleParallaxEnabled:(id)a3;
- (void)updateDownloadProgressIndicator:(double)a3;
- (void)updateProgressIndicator:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PUParallaxLayerStackDebugViewController

- (CGRect)initialVisibleRect
{
  x = self->_initialVisibleRect.origin.x;
  y = self->_initialVisibleRect.origin.y;
  width = self->_initialVisibleRect.size.width;
  height = self->_initialVisibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (a5 != "LayerStackViewModelObservationContext")
  {
    goto LABEL_9;
  }

  v19 = v9;
  v10 = v9;
  if (!v10)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v14 handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackDebugViewController.m" lineNumber:542 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v16}];
LABEL_14:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    v18 = [v10 px_descriptionForAssertionMessage];
    [v14 handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackDebugViewController.m" lineNumber:542 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v16, v18}];

    goto LABEL_14;
  }

LABEL_4:
  v11 = [v10 currentLayerStackPropertiesChange];
  v12 = [v10 stylePropertiesChange];
  if (v11 & 0x10 | (v6 & 0x200))
  {
    v13 = [(PUParallaxLayerStackDebugViewController *)self view];
    [v13 setNeedsLayout];
  }

  if ((v12 & 0x11) != 0)
  {
    [(PUParallaxLayerStackDebugViewController *)self _updateDateTimeView];
  }

  v9 = v19;
LABEL_9:
}

- (void)pinchGesture:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  if (v5 == 2)
  {
    [v4 scale];
    [(PUParallaxLayerStackViewModel *)self->_viewModel visibleFrame];
    [(PUParallaxLayerStackViewModel *)self->_viewModel extendedImageRect];
    [(PUParallaxLayerStackDebugViewController *)self initialVisibleRect];
    [(PUParallaxLayerStackDebugViewController *)self initialVisibleRect];
    [(PUParallaxLayerStackDebugViewController *)self initialVisibleRect];
    [(PUParallaxLayerStackDebugViewController *)self initialVisibleRect];
    [(PUParallaxLayerStackDebugViewController *)self initialVisibleRect];
    [(PUParallaxLayerStackDebugViewController *)self initialVisibleRect];
    PXRectShiftedInsideConstrainingRect();
    viewModel = self->_viewModel;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__PUParallaxLayerStackDebugViewController_pinchGesture___block_invoke;
    v12[3] = &__block_descriptor_64_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
    v12[4] = v7;
    v12[5] = v8;
    v12[6] = v9;
    v12[7] = v10;
    [(PUParallaxLayerStackViewModel *)viewModel performChanges:v12];
    v11 = [(PUParallaxLayerStackDebugViewController *)self layerStackView];
    [v11 layoutIfNeeded];

    [(PUParallaxLayerStackDebugViewController *)self renderAfterVisibleFrameChange];
  }

  else if (v5 == 1)
  {
    [(PUParallaxLayerStackViewModel *)self->_viewModel visibleFrame];
    [(PUParallaxLayerStackDebugViewController *)self setInitialVisibleRect:?];
  }
}

- (void)panGesture:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  if (v5 == 2)
  {
    v6 = [(PUParallaxLayerStackDebugViewController *)self layerStackView];
    [v4 translationInView:v6];

    [(PUParallaxLayerStackViewModel *)self->_viewModel visibleFrame];
    [(PUParallaxLayerStackViewModel *)self->_viewModel extendedImageRect];
    v7 = [(PUParallaxLayerStackDebugViewController *)self view];
    [v7 bounds];

    [(PUParallaxLayerStackDebugViewController *)self initialVisibleRect];
    [(PUParallaxLayerStackDebugViewController *)self initialVisibleRect];
    PXRectShiftedInsideConstrainingRect();
    viewModel = self->_viewModel;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__PUParallaxLayerStackDebugViewController_panGesture___block_invoke;
    v14[3] = &__block_descriptor_64_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
    v14[4] = v9;
    v14[5] = v10;
    v14[6] = v11;
    v14[7] = v12;
    [(PUParallaxLayerStackViewModel *)viewModel performChanges:v14];
    v13 = [(PUParallaxLayerStackDebugViewController *)self layerStackView];
    [v13 layoutIfNeeded];

    [(PUParallaxLayerStackDebugViewController *)self renderAfterVisibleFrameChange];
  }

  else if (v5 == 1)
  {
    [(PUParallaxLayerStackViewModel *)self->_viewModel visibleFrame];
    [(PUParallaxLayerStackDebugViewController *)self setInitialVisibleRect:?];
  }
}

- (void)renderAfterStyleChange
{
  v4 = [(PUParallaxLayerStackDebugViewController *)self viewModelUpdater];
  v3 = [(PUParallaxLayerStackDebugViewController *)self viewModel];
  [v4 renderOnscreenModelAfterStyleChange:v3];
}

- (void)renderAfterVisibleFrameChange
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [(PUParallaxLayerStackDebugViewController *)self viewModelUpdater];
  v4 = [(PUParallaxLayerStackDebugViewController *)self viewModel];
  v5 = [(PUParallaxLayerStackDebugViewController *)self viewModel];
  v7[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 renderOnscreenModelAfterVisibleFrameChange:v4 recalculateLayoutProperties:1 allViewModels:v6];
}

- (void)tapToRadar:(id)a3
{
  v4 = [(PUParallaxLayerStackDebugViewController *)self asset];

  if (v4)
  {
    [(PUParallaxLayerStackDebugViewController *)self showProgressIndicator:@"Preparing Attachments…"];
    v5 = [(PUParallaxLayerStackViewModel *)self->_viewModel compoundLayerStack];
    v6 = [(PUParallaxLayerStackDebugViewController *)self asset];
    v7 = [(PUParallaxLayerStackViewModel *)self->_viewModel segmentationItem];
    v8 = [PUWallpaperRadarAttachmentProvider radarConfigurationForAsset:v6 suggestion:0 compoundLayerStack:v5 segmentationItem:v7 posterDescriptor:0 posterConfiguration:0 component:9 completionHandler:0];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__PUParallaxLayerStackDebugViewController_tapToRadar___block_invoke;
    v9[3] = &unk_1E7B80280;
    v9[4] = self;
    [v8 setCompletionHandler:v9];
    PXFileRadarWithConfiguration();
  }
}

- (void)shareLayerStack:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__PUParallaxLayerStackDebugViewController_shareLayerStack___block_invoke;
  v5[3] = &unk_1E7B7E148;
  v5[4] = self;
  v4 = [MEMORY[0x1E69C3A10] confidentialityAlertWithConfirmAction:v5 abortAction:0];
  [(PUParallaxLayerStackDebugViewController *)self presentViewController:v4 animated:1 completion:0];
}

void __59__PUParallaxLayerStackDebugViewController_shareLayerStack___block_invoke(uint64_t a1)
{
  [*(a1 + 32) showProgressIndicator:@"Preparing…"];
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PUParallaxLayerStackDebugViewController_shareLayerStack___block_invoke_2;
  block[3] = &unk_1E7B80DD0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void __59__PUParallaxLayerStackDebugViewController_shareLayerStack___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = NSTemporaryDirectory();
  v4 = MEMORY[0x1E696AEC0];
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [v4 stringWithFormat:@"share-%@.imagestack", v5];
  v7 = [v3 stringByAppendingPathComponent:v6];
  v8 = [v2 fileURLWithPath:v7];

  v9 = [*(*(a1 + 32) + 992) currentLayerStack];
  v10 = [objc_alloc(MEMORY[0x1E69C0940]) initWithPortraitLayerStack:v9 landscapeLayerStack:0];
  v14 = 0;
  LODWORD(v7) = [MEMORY[0x1E69C0780] saveCompoundLayerStack:v10 toURL:v8 options:0xFFFFLL error:&v14];
  v11 = v14;
  if (v7)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__PUParallaxLayerStackDebugViewController_shareLayerStack___block_invoke_3;
    block[3] = &unk_1E7B80C38;
    block[4] = *(a1 + 32);
    v13 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __59__PUParallaxLayerStackDebugViewController_shareLayerStack___block_invoke_3(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) hideProgressIndicator];
  v2 = objc_alloc(MEMORY[0x1E696ACA0]);
  v3 = *(a1 + 40);
  v4 = [*MEMORY[0x1E6983030] identifier];
  v5 = [v2 initWithItem:v3 typeIdentifier:v4];

  v6 = objc_alloc(MEMORY[0x1E69CD9F8]);
  v11[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [v6 initWithActivityItems:v7 applicationActivities:0];

  v10 = *MEMORY[0x1E69CDA78];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  [v8 setIncludedActivityTypes:v9];

  [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
}

- (void)showColorPalettes:(id)a3
{
  v4 = objc_alloc_init(PUParallaxLayerStackDebugPaletteViewController);
  [(PUParallaxLayerStackDebugPaletteViewController *)v4 setTitle:@"Color Palettes"];
  [(PUParallaxLayerStackDebugViewController *)self _presentSheetController:v4];
}

- (void)showLayerList:(id)a3
{
  v5 = [[PUParallaxLayerStackDebugTableViewController alloc] initWithStyle:0];
  v4 = [(PUParallaxLayerStackDebugViewController *)self layerStackView];
  [(PUParallaxLayerStackDebugTableViewController *)v5 setLayerStackView:v4];

  [(PUParallaxLayerStackDebugTableViewController *)v5 setTitle:@"Layers"];
  [(PUParallaxLayerStackDebugViewController *)self _presentSheetController:v5];
}

- (void)showLooks:(id)a3
{
  v6 = [[PUParallaxLayerStackDebugStyleTableViewController alloc] initWithStyle:0];
  v4 = [(PUParallaxLayerStackDebugViewController *)self viewModel];
  [(PUParallaxLayerStackDebugStyleTableViewController *)v6 setViewModel:v4];

  v5 = [(PUParallaxLayerStackDebugViewController *)self viewModelUpdater];
  [(PUParallaxLayerStackDebugStyleTableViewController *)v6 setViewModelUpdater:v5];

  [(PUParallaxLayerStackDebugStyleTableViewController *)v6 setTitle:@"Looks"];
  [(PUParallaxLayerStackDebugViewController *)self _presentSheetController:v6];
}

- (void)_presentSheetController:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = v4;
  v8 = v7;
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];
    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__dismissSheetController_];
    v18[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v11 = [v7 navigationItem];
    [v11 setRightBarButtonItems:v10];
  }

  [v8 setModalPresentationStyle:1];
  v12 = [MEMORY[0x1E69DCF58] mediumDetent];
  v13 = [MEMORY[0x1E69DCF58] largeDetent];
  v17[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v15 = [v8 sheetPresentationController];
  [v15 setDetents:v14];

  v16 = [v8 sheetPresentationController];
  [v16 setPrefersGrabberVisible:v6 == 0];

  [(PUParallaxLayerStackDebugViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)toggleParallaxEnabled:(id)a3
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__PUParallaxLayerStackDebugViewController_toggleParallaxEnabled___block_invoke;
  v12[3] = &unk_1E7B80DD0;
  v12[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:0.2];
  v4 = [(PUParallaxLayerStackDebugViewController *)self parallaxEnabledButton];
  v5 = [v4 configuration];
  v6 = [v5 copy];

  v7 = MEMORY[0x1E69DCAB8];
  v8 = [(PUParallaxLayerStackViewModel *)self->_viewModel currentLayerStack];
  if ([v8 parallaxDisabled])
  {
    v9 = @"square.stack.3d.up.slash";
  }

  else
  {
    v9 = @"square.stack.3d.up";
  }

  v10 = [v7 systemImageNamed:v9];
  [v6 setImage:v10];

  v11 = [(PUParallaxLayerStackDebugViewController *)self parallaxEnabledButton];
  [v11 setConfiguration:v6];
}

uint64_t __65__PUParallaxLayerStackDebugViewController_toggleParallaxEnabled___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 992);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__PUParallaxLayerStackDebugViewController_toggleParallaxEnabled___block_invoke_2;
  v4[3] = &unk_1E7B80328;
  v4[4] = v1;
  return [v2 performChanges:v4];
}

void __65__PUParallaxLayerStackDebugViewController_toggleParallaxEnabled___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 992);
  v3 = a2;
  v4 = [v2 currentLayerStack];
  [v3 setParallaxDisabled:{objc_msgSend(v4, "parallaxDisabled") ^ 1}];
}

- (void)setViewModel:(id)a3
{
  v9 = a3;
  v5 = self->_viewModel;
  v6 = v5;
  if (v5 == v9)
  {
  }

  else
  {
    v7 = [(PUParallaxLayerStackViewModel *)v5 isEqual:v9];

    if ((v7 & 1) == 0)
    {
      [(PUParallaxLayerStackViewModel *)self->_viewModel unregisterChangeObserver:self context:"LayerStackViewModelObservationContext"];
      objc_storeStrong(&self->_viewModel, a3);
      [(PUParallaxLayerStackViewModel *)v9 registerChangeObserver:self context:"LayerStackViewModelObservationContext"];
      v8 = [(PUParallaxLayerStackDebugViewController *)self layerStackView];
      [v8 setViewModel:v9];

      [(PUParallaxLayerStackDebugViewController *)self _updateDateTimeView];
    }
  }
}

- (void)loadLayerStack:(id)a3 segmentationItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PUParallaxLayerStackViewModel alloc] initWithSegmentationItem:v6 initialStyle:0 compoundLayerStack:v7 deviceOrientation:1 allowedBehaviors:0];

  [(PUParallaxLayerStackDebugViewController *)self setViewModel:v8];
  v9 = [[PUParallaxLayerStackViewModelUpdater alloc] initWithSegmentationItem:v6];

  [(PUParallaxLayerStackDebugViewController *)self setViewModelUpdater:v9];
}

- (void)loadLayerStack:(id)a3
{
  v4 = a3;
  v5 = [[PUParallaxLayerStackViewModel alloc] initWithCompoundLayerStack:v4 style:0 deviceOrientation:1 allowedBehaviors:0];

  [(PUParallaxLayerStackDebugViewController *)self setViewModel:v5];
}

- (void)loadSegmentationItem:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69BDEA0]) initWithSegmentationItem:v4];
  [v5 setResponseQueue:MEMORY[0x1E69E96A0]];
  v6 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:0];
  [v5 setPriority:v6];

  [v5 setLayerStackOptions:0xFFFFLL];
  if ([v4 isSettlingEffectAvailable])
  {
    [v5 setSettlingEffectEnabled:1];
  }

  if ([v4 isSpatialPhotoAvailable])
  {
    [v5 setSpatialPhotoEnabled:1];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PUParallaxLayerStackDebugViewController_loadSegmentationItem___block_invoke;
  v8[3] = &unk_1E7B773D8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 submit:v8];
}

void __64__PUParallaxLayerStackDebugViewController_loadSegmentationItem___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v3 = [a2 result:&v26];
  v4 = v26;
  v5 = PLWallpaperGetLog();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 statistics];
      *buf = 138543362;
      v28 = v7;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Render layer stack stats: %{public}@", buf, 0xCu);
    }

    v8 = [v3 compoundLayerStack];
    v9 = +[PUSuggestionsSettings sharedInstance];
    v10 = [v9 debugRoundTripLayerStack];

    if (v10)
    {
      v11 = [MEMORY[0x1E696AC08] defaultManager];
      v12 = [v11 temporaryDirectory];
      v13 = [v12 URLByAppendingPathComponent:@"debugRoundTrip.layerStack"];

      v14 = [MEMORY[0x1E696AC08] defaultManager];
      [v14 removeItemAtURL:v13 error:0];

      v15 = MEMORY[0x1E69C0780];
      v16 = [v3 compoundLayerStack];
      v25 = 0;
      v17 = [v15 saveCompoundLayerStack:v16 toURL:v13 options:0xFFFFLL error:&v25];
      v18 = v25;

      if (v17)
      {
        v24 = v18;
        v19 = [MEMORY[0x1E69C0780] loadCompoundLayerStackFromURL:v13 options:0xFFFFLL error:&v24];
        v20 = v24;

        if (v19)
        {
          v8 = v19;
        }

        else
        {
          v22 = PLWallpaperGetLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v28 = v20;
            _os_log_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_ERROR, "Failed to load layer stack: %{public}@", buf, 0xCu);
          }

          v8 = [v3 compoundLayerStack];
        }
      }

      else
      {
        v21 = PLWallpaperGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v28 = v18;
          _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_ERROR, "Failed to write layer stack: %{public}@", buf, 0xCu);
        }

        v20 = v18;
      }
    }

    [*(a1 + 32) loadLayerStack:v8 segmentationItem:*(a1 + 40)];
    v23 = [*(a1 + 32) layerStackView];
    [v23 setHidden:0];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = v4;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Render layer stack failed: %{public}@", buf, 0xCu);
    }

    v8 = [*(a1 + 32) layerStackView];
    [v8 setHidden:1];
  }

  [*(a1 + 32) hideProgressIndicator];
}

- (void)loadPartialSegmentationItem:(id)a3 loadingState:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = PLWallpaperGetLog();
  v8 = v7;
  signpost = self->_signpost;
  if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 134217984;
    v16 = a4;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v8, OS_SIGNPOST_EVENT, signpost, "PUParallaxLayerStackDebugViewController.LoadingState", "state=%lx", buf, 0xCu);
  }

  v10 = [objc_alloc(MEMORY[0x1E69BDEB8]) initWithSegmentationItem:v6];
  [v10 setResponseQueue:MEMORY[0x1E69E96A0]];
  v11 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:0];
  [v10 setPriority:v11];

  [v10 setLayerStackMode:2];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__PUParallaxLayerStackDebugViewController_loadPartialSegmentationItem_loadingState___block_invoke;
  v14[3] = &unk_1E7B80440;
  v14[4] = self;
  [v10 submit:v14];
  if ((a4 & 4) != 0)
  {
    v13 = @"Finishing…";
  }

  else if ((a4 & 2) != 0)
  {
    v13 = @"Analyzing…";
  }

  else if (a4)
  {
    v13 = @"Segmenting…";
  }

  else
  {
    v12 = PLWallpaperGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v16 = a4;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_ERROR, "Unexpected segmentation loading state; %lx", buf, 0xCu);
    }

    v13 = 0;
  }

  [(PUParallaxLayerStackDebugViewController *)self updateProgressIndicator:v13];
}

void __84__PUParallaxLayerStackDebugViewController_loadPartialSegmentationItem_loadingState___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v3 = [a2 result:&v11];
  v4 = v11;
  if (v3)
  {
    v5 = PLWallpaperGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 statistics];
      *buf = 138543362;
      v13 = v6;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Render layer stack stats: %{public}@", buf, 0xCu);
    }

    v7 = objc_alloc(MEMORY[0x1E69C0940]);
    v8 = [v3 layerStack];
    v9 = [v7 initWithPortraitLayerStack:v8 landscapeLayerStack:0];

    [*(a1 + 32) loadLayerStack:v9];
    v10 = [*(a1 + 32) layerStackView];
    [v10 setHidden:0];
  }
}

- (void)loadPHAsset:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [(PUParallaxLayerStackDebugViewController *)self setAsset:v4];
    v5 = [(PUParallaxLayerStackDebugViewController *)self layerStackView];
    [v5 setHidden:1];

    [(PUParallaxLayerStackDebugViewController *)self showProgressIndicator:@"Loading…"];
    v6 = [objc_alloc(MEMORY[0x1E6978B20]) initWithPhotoAsset:v4];

    v7 = [objc_alloc(MEMORY[0x1E69BDF40]) initWithParallaxAsset:v6];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__PUParallaxLayerStackDebugViewController_loadPHAsset___block_invoke;
    v10[3] = &unk_1E7B7F9B0;
    v10[4] = self;
    [v7 setDownloadProgressHandler:v10];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__PUParallaxLayerStackDebugViewController_loadPHAsset___block_invoke_2;
    v9[3] = &unk_1E7B77388;
    v9[4] = self;
    [v7 setLoadingHandler:v9];
    [v7 setLoadingHandlerQueue:MEMORY[0x1E69E96A0]];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__PUParallaxLayerStackDebugViewController_loadPHAsset___block_invoke_272;
    v8[3] = &unk_1E7B773B0;
    v8[4] = self;
    [v7 loadSegmentationItemWithCompletion:v8];
  }
}

uint64_t __55__PUParallaxLayerStackDebugViewController_loadPHAsset___block_invoke(double a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PLWallpaperGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v5 = a1;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "Download progress: %g", buf, 0xCu);
  }

  return px_dispatch_on_main_queue();
}

void __55__PUParallaxLayerStackDebugViewController_loadPHAsset___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = PLWallpaperGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Segmentation loading state: %lx", &v7, 0xCu);
  }

  [*(a1 + 32) loadPartialSegmentationItem:v5 loadingState:a3];
}

void __55__PUParallaxLayerStackDebugViewController_loadPHAsset___block_invoke_272(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) loadSegmentationItem:a2];
  }

  else
  {
    v6 = PLWallpaperGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Failed to load segmentation item, error: %{public}@", &v7, 0xCu);
    }
  }
}

uint64_t __55__PUParallaxLayerStackDebugViewController_loadPHAsset___block_invoke_269(uint64_t a1)
{
  [*(a1 + 32) showDownloadProgressIndicator];
  result = [*(a1 + 32) updateDownloadProgressIndicator:*(a1 + 40)];
  if (*(a1 + 40) == 1.0)
  {
    v3 = *(a1 + 32);

    return [v3 hideDowloadProgressIndicator];
  }

  return result;
}

- (void)hideDowloadProgressIndicator
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
  v4 = [v3 isShowingProgress];

  if (v4)
  {
    v5 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__PUParallaxLayerStackDebugViewController_hideDowloadProgressIndicator__block_invoke;
    v16[3] = &unk_1E7B80DD0;
    v16[4] = self;
    [v5 endShowingProgressImmediately:1 animated:1 withCompletionHandler:v16];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(PUParallaxLayerStackDebugViewController *)self buttonStackView];
    v7 = [v6 arrangedSubviews];

    v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) setEnabled:1];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

uint64_t __71__PUParallaxLayerStackDebugViewController_hideDowloadProgressIndicator__block_invoke(uint64_t a1)
{
  v2 = PLWallpaperGetLog();
  v3 = v2;
  v4 = *(*(a1 + 32) + 1000);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PUParallaxLayerStackDebugViewController.DownloadProgressIndicator", "", v7, 2u);
  }

  v5 = [*(a1 + 32) downloadProgressIndicator];
  [v5 removeFromSuperview];

  return [*(a1 + 32) setDownloadProgressIndicator:0];
}

- (void)updateDownloadProgressIndicator:(double)a3
{
  v5 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
  [v5 setCurrentProgress:a3];

  v6 = PLWallpaperGetLog();
  v7 = v6;
  signpost = self->_signpost;
  if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v7, OS_SIGNPOST_EVENT, signpost, "PUParallaxLayerStackDebugViewController.UpdateDownloadProgress", "", v9, 2u);
  }
}

- (void)showDownloadProgressIndicator
{
  v3 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];

  if (!v3)
  {
    v4 = PLWallpaperGetLog();
    v5 = v4;
    signpost = self->_signpost;
    if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v5, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "PUParallaxLayerStackDebugViewController.DownloadProgressIndicator", "", v17, 2u);
    }

    v7 = [[PUProgressIndicatorView alloc] initWithStyle:0];
    [(PUParallaxLayerStackDebugViewController *)self setDownloadProgressIndicator:v7];

    v8 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
    [v8 setLocalizedMessage:@"Downloading…"];

    v9 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
    [v9 setDeterminate:1];

    v10 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
    [v10 setCurrentProgress:0.0];

    v11 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
    [v11 setShowsBackground:1];

    v12 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
    [v13 beginShowingProgressImmediately:1 animated:1];

    v14 = [(PUParallaxLayerStackDebugViewController *)self view];
    v15 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
    [v14 addSubview:v15];

    v16 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
    [v16 sizeToFit];
  }
}

- (void)hideProgressIndicator
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__PUParallaxLayerStackDebugViewController_hideProgressIndicator__block_invoke;
  v14[3] = &unk_1E7B80DD0;
  v14[4] = self;
  [v3 endShowingProgressImmediately:1 animated:1 withCompletionHandler:v14];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(PUParallaxLayerStackDebugViewController *)self buttonStackView];
  v5 = [v4 arrangedSubviews];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setEnabled:1];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

uint64_t __64__PUParallaxLayerStackDebugViewController_hideProgressIndicator__block_invoke(uint64_t a1)
{
  v2 = PLWallpaperGetLog();
  v3 = v2;
  v4 = *(*(a1 + 32) + 1000);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PUParallaxLayerStackDebugViewController.ProgressIndicator", "", v7, 2u);
  }

  v5 = [*(a1 + 32) progressIndicator];
  [v5 removeFromSuperview];

  return [*(a1 + 32) setProgressIndicator:0];
}

- (void)updateProgressIndicator:(id)a3
{
  v4 = a3;
  v5 = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];
  [v5 setLocalizedMessage:v4];
}

- (void)showProgressIndicator:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];

  if (!v5)
  {
    v6 = PLWallpaperGetLog();
    v7 = v6;
    signpost = self->_signpost;
    if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v7, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "PUParallaxLayerStackDebugViewController.ProgressIndicator", "", buf, 2u);
    }

    v9 = [[PUProgressIndicatorView alloc] initWithStyle:0];
    [(PUParallaxLayerStackDebugViewController *)self setProgressIndicator:v9];

    v10 = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];
    [v10 setLocalizedMessage:v4];

    v11 = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];
    [v11 setDeterminate:0];

    v12 = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];
    [v12 setShowsBackground:1];

    v13 = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v14 = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];
    [v14 beginShowingProgressImmediately:1 animated:1];

    v15 = [(PUParallaxLayerStackDebugViewController *)self view];
    v16 = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];
    [v15 addSubview:v16];

    v17 = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];
    [v17 sizeToFit];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = [(PUParallaxLayerStackDebugViewController *)self buttonStackView];
  v19 = [v18 arrangedSubviews];

  v20 = [v19 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v25;
    do
    {
      v23 = 0;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v24 + 1) + 8 * v23++) setEnabled:0];
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v21);
  }
}

- (void)_updateDateTimeView
{
  v10 = [(PUParallaxLayerStackDebugViewController *)self dateTimeView];
  v3 = [(PUParallaxLayerStackDebugViewController *)self viewModel];
  v4 = [v3 style];

  v5 = [v4 clockFont];
  v6 = PUPosterSimulatedTimeFontForIdentifier(v5);
  [v10 setTimeFont:v6];

  v7 = MEMORY[0x1E69DC888];
  v8 = [v4 clockColor];
  v9 = [v7 colorWithCGColor:{objc_msgSend(v8, "CGColor")}];
  [v10 setTimeColor:v9];

  [v10 setUseVibrantAppearance:0];
}

- (void)viewDidLayoutSubviews
{
  v49.receiver = self;
  v49.super_class = PUParallaxLayerStackDebugViewController;
  [(PUParallaxLayerStackDebugViewController *)&v49 viewDidLayoutSubviews];
  v3 = [(PUParallaxLayerStackDebugViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(PUParallaxLayerStackDebugViewController *)self layerStackView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(PUParallaxLayerStackDebugViewController *)self view];
  [v13 bounds];
  MidX = CGRectGetMidX(v50);
  v15 = [(PUParallaxLayerStackDebugViewController *)self view];
  [v15 bounds];
  v16 = CGRectGetMidY(v51) * 0.67;
  v17 = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];
  [v17 setCenter:{MidX, v16}];

  v18 = [(PUParallaxLayerStackDebugViewController *)self view];
  [v18 bounds];
  v19 = CGRectGetMidX(v52);
  v20 = [(PUParallaxLayerStackDebugViewController *)self view];
  [v20 bounds];
  v21 = CGRectGetMidY(v53) * 1.33;
  v22 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
  [v22 setCenter:{v19, v21}];

  v23 = [(PUParallaxLayerStackDebugViewController *)self view];
  [v23 safeAreaInsets];
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = [(PUParallaxLayerStackDebugViewController *)self view];
  [v30 bounds];
  v31 = CGRectGetMaxY(v54) - v27;
  v32 = [(PUParallaxLayerStackDebugViewController *)self radarButton];
  [v32 bounds];
  v33 = v31 - CGRectGetHeight(v55);
  v34 = [(PUParallaxLayerStackDebugViewController *)self view];
  [v34 bounds];
  v35 = CGRectGetWidth(v56) - v29 - v25;
  v36 = [(PUParallaxLayerStackDebugViewController *)self radarButton];
  [v36 bounds];
  Height = CGRectGetHeight(v57);

  v38 = [(PUParallaxLayerStackDebugViewController *)self buttonStackView];
  [v38 setFrame:{v25, v33, v35, Height}];

  v39 = [(PUParallaxLayerStackDebugViewController *)self viewModel];
  v40 = [v39 currentLayerStack];

  v41 = [v40 layout];
  if (v41)
  {
    v58.origin.x = v5;
    v58.origin.y = v7;
    v58.size.width = v9;
    v58.size.height = v11;
    if (!CGRectIsEmpty(v58))
    {
      v42 = [(PUParallaxLayerStackDebugViewController *)self dateTimeView];
      [v42 layoutWithLayout:v41 inContainerFrame:{v5, v7, v9, v11}];

      v43 = [(PUParallaxLayerStackDebugViewController *)self viewModel];
      v44 = [v43 clockAppearsAboveForeground];

      v45 = MEMORY[0x1E69C0C08];
      if (!v44)
      {
        v45 = MEMORY[0x1E69C0C00];
      }

      v46 = *v45;
      v47 = [(PUParallaxLayerStackDebugViewController *)self dateTimeView];
      v48 = [v47 layer];
      [v48 setZPosition:v46];
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PUParallaxLayerStackDebugViewController;
  [(PUParallaxLayerStackDebugViewController *)&v3 viewWillDisappear:a3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PUParallaxLayerStackDebugViewController;
  [(PUParallaxLayerStackDebugViewController *)&v3 viewDidAppear:a3];
}

- (void)viewDidLoad
{
  v50[6] = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = PUParallaxLayerStackDebugViewController;
  [(PUParallaxLayerStackDebugViewController *)&v49 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] grayColor];
  v4 = [(PUParallaxLayerStackDebugViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [PUParallaxLayerStackView alloc];
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(PUParallaxLayerStackView *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
  [(PUParallaxLayerStackDebugViewController *)self setLayerStackView:v10];

  v11 = [(PUParallaxLayerStackDebugViewController *)self view];
  v12 = [(PUParallaxLayerStackDebugViewController *)self layerStackView];
  [v11 addSubview:v12];

  v13 = [[PUWallpaperPosterDateView alloc] initWithFrame:v6, v7, v8, v9];
  [(PUParallaxLayerStackDebugViewController *)self setDateTimeView:v13];

  v14 = [(PUParallaxLayerStackDebugViewController *)self view];
  v15 = [(PUParallaxLayerStackDebugViewController *)self dateTimeView];
  [v14 addSubview:v15];

  v16 = [(PUParallaxLayerStackDebugViewController *)self _newButtonWithSystemImageName:@"square.stack.3d.up"];
  [(PUParallaxLayerStackDebugViewController *)self setParallaxEnabledButton:v16];

  v17 = [(PUParallaxLayerStackDebugViewController *)self parallaxEnabledButton];
  [v17 addTarget:self action:sel_toggleParallaxEnabled_ forControlEvents:0x2000];

  v18 = [(PUParallaxLayerStackDebugViewController *)self _newButtonWithSystemImageName:@"slider.horizontal.below.rectangle"];
  [(PUParallaxLayerStackDebugViewController *)self setLooksButton:v18];

  v19 = [(PUParallaxLayerStackDebugViewController *)self looksButton];
  [v19 addTarget:self action:sel_showLooks_ forControlEvents:0x2000];

  v20 = [(PUParallaxLayerStackDebugViewController *)self _newButtonWithSystemImageName:@"list.dash"];
  [(PUParallaxLayerStackDebugViewController *)self setLayerListButton:v20];

  v21 = [(PUParallaxLayerStackDebugViewController *)self layerListButton];
  [v21 addTarget:self action:sel_showLayerList_ forControlEvents:0x2000];

  v22 = [(PUParallaxLayerStackDebugViewController *)self _newButtonWithSystemImageName:@"eyedropper.full"];
  [(PUParallaxLayerStackDebugViewController *)self setColorPaletteButton:v22];

  v23 = [(PUParallaxLayerStackDebugViewController *)self colorPaletteButton];
  [v23 addTarget:self action:sel_showColorPalettes_ forControlEvents:0x2000];

  v24 = [(PUParallaxLayerStackDebugViewController *)self _newButtonWithSystemImageName:@"square.and.arrow.up"];
  [(PUParallaxLayerStackDebugViewController *)self setShareButton:v24];

  v25 = [(PUParallaxLayerStackDebugViewController *)self shareButton];
  [v25 addTarget:self action:sel_shareLayerStack_ forControlEvents:0x2000];

  v26 = [(PUParallaxLayerStackDebugViewController *)self _newButtonWithSystemImageName:@"ant.fill"];
  [(PUParallaxLayerStackDebugViewController *)self setRadarButton:v26];

  v27 = [(PUParallaxLayerStackDebugViewController *)self radarButton];
  [v27 addTarget:self action:sel_tapToRadar_ forControlEvents:0x2000];

  v28 = objc_alloc(MEMORY[0x1E69DCF90]);
  v29 = [(PUParallaxLayerStackDebugViewController *)self parallaxEnabledButton];
  v50[0] = v29;
  v30 = [(PUParallaxLayerStackDebugViewController *)self looksButton];
  v50[1] = v30;
  v31 = [(PUParallaxLayerStackDebugViewController *)self layerListButton];
  v50[2] = v31;
  v32 = [(PUParallaxLayerStackDebugViewController *)self colorPaletteButton];
  v50[3] = v32;
  v33 = [(PUParallaxLayerStackDebugViewController *)self shareButton];
  v50[4] = v33;
  v34 = [(PUParallaxLayerStackDebugViewController *)self radarButton];
  v50[5] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:6];
  v36 = [v28 initWithArrangedSubviews:v35];
  [(PUParallaxLayerStackDebugViewController *)self setButtonStackView:v36];

  v37 = [MEMORY[0x1E69DC888] clearColor];
  v38 = [(PUParallaxLayerStackDebugViewController *)self buttonStackView];
  [v38 setBackgroundColor:v37];

  v39 = [(PUParallaxLayerStackDebugViewController *)self buttonStackView];
  [v39 setAxis:0];

  v40 = [(PUParallaxLayerStackDebugViewController *)self buttonStackView];
  [v40 setAlignment:3];

  v41 = [(PUParallaxLayerStackDebugViewController *)self buttonStackView];
  [v41 setDistribution:1];

  v42 = [(PUParallaxLayerStackDebugViewController *)self view];
  v43 = [(PUParallaxLayerStackDebugViewController *)self buttonStackView];
  [v42 addSubview:v43];

  v44 = [(PUParallaxLayerStackDebugViewController *)self buttonStackView];
  [v44 sizeToFit];

  v45 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_panGesture_];
  v46 = [(PUParallaxLayerStackDebugViewController *)self layerStackView];
  [v46 addGestureRecognizer:v45];

  v47 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel_pinchGesture_];
  v48 = [(PUParallaxLayerStackDebugViewController *)self view];
  [v48 addGestureRecognizer:v47];
}

- (id)_newButtonWithSystemImageName:(id)a3
{
  v3 = MEMORY[0x1E69DC740];
  v4 = a3;
  v5 = [v3 borderlessButtonConfiguration];
  [v5 setButtonSize:0];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:v4];

  [v5 setImage:v6];
  v7 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v7 setConfiguration:v5];
  [v7 sizeToFit];

  return v7;
}

- (PUParallaxLayerStackDebugViewController)init
{
  v5.receiver = self;
  v5.super_class = PUParallaxLayerStackDebugViewController;
  v2 = [(PUParallaxLayerStackDebugViewController *)&v5 init];
  v3 = PLWallpaperGetLog();
  v2->_signpost = os_signpost_id_make_with_pointer(v3, v2);

  return v2;
}

@end