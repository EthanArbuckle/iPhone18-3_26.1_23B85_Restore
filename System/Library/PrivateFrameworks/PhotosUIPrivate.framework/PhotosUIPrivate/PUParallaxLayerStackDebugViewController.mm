@interface PUParallaxLayerStackDebugViewController
- (CGRect)initialVisibleRect;
- (PUParallaxLayerStackDebugViewController)init;
- (id)_newButtonWithSystemImageName:(id)name;
- (void)_presentSheetController:(id)controller;
- (void)_updateDateTimeView;
- (void)hideDowloadProgressIndicator;
- (void)hideProgressIndicator;
- (void)loadLayerStack:(id)stack;
- (void)loadLayerStack:(id)stack segmentationItem:(id)item;
- (void)loadPHAsset:(id)asset;
- (void)loadPartialSegmentationItem:(id)item loadingState:(unint64_t)state;
- (void)loadSegmentationItem:(id)item;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)panGesture:(id)gesture;
- (void)pinchGesture:(id)gesture;
- (void)renderAfterStyleChange;
- (void)renderAfterVisibleFrameChange;
- (void)setViewModel:(id)model;
- (void)shareLayerStack:(id)stack;
- (void)showColorPalettes:(id)palettes;
- (void)showDownloadProgressIndicator;
- (void)showLayerList:(id)list;
- (void)showLooks:(id)looks;
- (void)showProgressIndicator:(id)indicator;
- (void)tapToRadar:(id)radar;
- (void)toggleParallaxEnabled:(id)enabled;
- (void)updateDownloadProgressIndicator:(double)indicator;
- (void)updateProgressIndicator:(id)indicator;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (context != "LayerStackViewModelObservationContext")
  {
    goto LABEL_9;
  }

  v19 = observableCopy;
  v10 = observableCopy;
  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackDebugViewController.m" lineNumber:542 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v16}];
LABEL_14:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    px_descriptionForAssertionMessage = [v10 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackDebugViewController.m" lineNumber:542 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v16, px_descriptionForAssertionMessage}];

    goto LABEL_14;
  }

LABEL_4:
  currentLayerStackPropertiesChange = [v10 currentLayerStackPropertiesChange];
  stylePropertiesChange = [v10 stylePropertiesChange];
  if (currentLayerStackPropertiesChange & 0x10 | (changeCopy & 0x200))
  {
    view = [(PUParallaxLayerStackDebugViewController *)self view];
    [view setNeedsLayout];
  }

  if ((stylePropertiesChange & 0x11) != 0)
  {
    [(PUParallaxLayerStackDebugViewController *)self _updateDateTimeView];
  }

  observableCopy = v19;
LABEL_9:
}

- (void)pinchGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if (state == 2)
  {
    [gestureCopy scale];
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
    layerStackView = [(PUParallaxLayerStackDebugViewController *)self layerStackView];
    [layerStackView layoutIfNeeded];

    [(PUParallaxLayerStackDebugViewController *)self renderAfterVisibleFrameChange];
  }

  else if (state == 1)
  {
    [(PUParallaxLayerStackViewModel *)self->_viewModel visibleFrame];
    [(PUParallaxLayerStackDebugViewController *)self setInitialVisibleRect:?];
  }
}

- (void)panGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if (state == 2)
  {
    layerStackView = [(PUParallaxLayerStackDebugViewController *)self layerStackView];
    [gestureCopy translationInView:layerStackView];

    [(PUParallaxLayerStackViewModel *)self->_viewModel visibleFrame];
    [(PUParallaxLayerStackViewModel *)self->_viewModel extendedImageRect];
    view = [(PUParallaxLayerStackDebugViewController *)self view];
    [view bounds];

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
    layerStackView2 = [(PUParallaxLayerStackDebugViewController *)self layerStackView];
    [layerStackView2 layoutIfNeeded];

    [(PUParallaxLayerStackDebugViewController *)self renderAfterVisibleFrameChange];
  }

  else if (state == 1)
  {
    [(PUParallaxLayerStackViewModel *)self->_viewModel visibleFrame];
    [(PUParallaxLayerStackDebugViewController *)self setInitialVisibleRect:?];
  }
}

- (void)renderAfterStyleChange
{
  viewModelUpdater = [(PUParallaxLayerStackDebugViewController *)self viewModelUpdater];
  viewModel = [(PUParallaxLayerStackDebugViewController *)self viewModel];
  [viewModelUpdater renderOnscreenModelAfterStyleChange:viewModel];
}

- (void)renderAfterVisibleFrameChange
{
  v7[1] = *MEMORY[0x1E69E9840];
  viewModelUpdater = [(PUParallaxLayerStackDebugViewController *)self viewModelUpdater];
  viewModel = [(PUParallaxLayerStackDebugViewController *)self viewModel];
  viewModel2 = [(PUParallaxLayerStackDebugViewController *)self viewModel];
  v7[0] = viewModel2;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [viewModelUpdater renderOnscreenModelAfterVisibleFrameChange:viewModel recalculateLayoutProperties:1 allViewModels:v6];
}

- (void)tapToRadar:(id)radar
{
  asset = [(PUParallaxLayerStackDebugViewController *)self asset];

  if (asset)
  {
    [(PUParallaxLayerStackDebugViewController *)self showProgressIndicator:@"Preparing Attachments…"];
    compoundLayerStack = [(PUParallaxLayerStackViewModel *)self->_viewModel compoundLayerStack];
    asset2 = [(PUParallaxLayerStackDebugViewController *)self asset];
    segmentationItem = [(PUParallaxLayerStackViewModel *)self->_viewModel segmentationItem];
    v8 = [PUWallpaperRadarAttachmentProvider radarConfigurationForAsset:asset2 suggestion:0 compoundLayerStack:compoundLayerStack segmentationItem:segmentationItem posterDescriptor:0 posterConfiguration:0 component:9 completionHandler:0];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__PUParallaxLayerStackDebugViewController_tapToRadar___block_invoke;
    v9[3] = &unk_1E7B80280;
    v9[4] = self;
    [v8 setCompletionHandler:v9];
    PXFileRadarWithConfiguration();
  }
}

- (void)shareLayerStack:(id)stack
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

- (void)showColorPalettes:(id)palettes
{
  v4 = objc_alloc_init(PUParallaxLayerStackDebugPaletteViewController);
  [(PUParallaxLayerStackDebugPaletteViewController *)v4 setTitle:@"Color Palettes"];
  [(PUParallaxLayerStackDebugViewController *)self _presentSheetController:v4];
}

- (void)showLayerList:(id)list
{
  v5 = [[PUParallaxLayerStackDebugTableViewController alloc] initWithStyle:0];
  layerStackView = [(PUParallaxLayerStackDebugViewController *)self layerStackView];
  [(PUParallaxLayerStackDebugTableViewController *)v5 setLayerStackView:layerStackView];

  [(PUParallaxLayerStackDebugTableViewController *)v5 setTitle:@"Layers"];
  [(PUParallaxLayerStackDebugViewController *)self _presentSheetController:v5];
}

- (void)showLooks:(id)looks
{
  v6 = [[PUParallaxLayerStackDebugStyleTableViewController alloc] initWithStyle:0];
  viewModel = [(PUParallaxLayerStackDebugViewController *)self viewModel];
  [(PUParallaxLayerStackDebugStyleTableViewController *)v6 setViewModel:viewModel];

  viewModelUpdater = [(PUParallaxLayerStackDebugViewController *)self viewModelUpdater];
  [(PUParallaxLayerStackDebugStyleTableViewController *)v6 setViewModelUpdater:viewModelUpdater];

  [(PUParallaxLayerStackDebugStyleTableViewController *)v6 setTitle:@"Looks"];
  [(PUParallaxLayerStackDebugViewController *)self _presentSheetController:v6];
}

- (void)_presentSheetController:(id)controller
{
  v18[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v7 = controllerCopy;
  v8 = v7;
  if (userInterfaceIdiom)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];
    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__dismissSheetController_];
    v18[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    navigationItem = [v7 navigationItem];
    [navigationItem setRightBarButtonItems:v10];
  }

  [v8 setModalPresentationStyle:1];
  mediumDetent = [MEMORY[0x1E69DCF58] mediumDetent];
  largeDetent = [MEMORY[0x1E69DCF58] largeDetent];
  v17[1] = largeDetent;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  sheetPresentationController = [v8 sheetPresentationController];
  [sheetPresentationController setDetents:v14];

  sheetPresentationController2 = [v8 sheetPresentationController];
  [sheetPresentationController2 setPrefersGrabberVisible:userInterfaceIdiom == 0];

  [(PUParallaxLayerStackDebugViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)toggleParallaxEnabled:(id)enabled
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__PUParallaxLayerStackDebugViewController_toggleParallaxEnabled___block_invoke;
  v12[3] = &unk_1E7B80DD0;
  v12[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:0.2];
  parallaxEnabledButton = [(PUParallaxLayerStackDebugViewController *)self parallaxEnabledButton];
  configuration = [parallaxEnabledButton configuration];
  v6 = [configuration copy];

  v7 = MEMORY[0x1E69DCAB8];
  currentLayerStack = [(PUParallaxLayerStackViewModel *)self->_viewModel currentLayerStack];
  if ([currentLayerStack parallaxDisabled])
  {
    v9 = @"square.stack.3d.up.slash";
  }

  else
  {
    v9 = @"square.stack.3d.up";
  }

  v10 = [v7 systemImageNamed:v9];
  [v6 setImage:v10];

  parallaxEnabledButton2 = [(PUParallaxLayerStackDebugViewController *)self parallaxEnabledButton];
  [parallaxEnabledButton2 setConfiguration:v6];
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

- (void)setViewModel:(id)model
{
  modelCopy = model;
  v5 = self->_viewModel;
  v6 = v5;
  if (v5 == modelCopy)
  {
  }

  else
  {
    v7 = [(PUParallaxLayerStackViewModel *)v5 isEqual:modelCopy];

    if ((v7 & 1) == 0)
    {
      [(PUParallaxLayerStackViewModel *)self->_viewModel unregisterChangeObserver:self context:"LayerStackViewModelObservationContext"];
      objc_storeStrong(&self->_viewModel, model);
      [(PUParallaxLayerStackViewModel *)modelCopy registerChangeObserver:self context:"LayerStackViewModelObservationContext"];
      layerStackView = [(PUParallaxLayerStackDebugViewController *)self layerStackView];
      [layerStackView setViewModel:modelCopy];

      [(PUParallaxLayerStackDebugViewController *)self _updateDateTimeView];
    }
  }
}

- (void)loadLayerStack:(id)stack segmentationItem:(id)item
{
  itemCopy = item;
  stackCopy = stack;
  v8 = [[PUParallaxLayerStackViewModel alloc] initWithSegmentationItem:itemCopy initialStyle:0 compoundLayerStack:stackCopy deviceOrientation:1 allowedBehaviors:0];

  [(PUParallaxLayerStackDebugViewController *)self setViewModel:v8];
  v9 = [[PUParallaxLayerStackViewModelUpdater alloc] initWithSegmentationItem:itemCopy];

  [(PUParallaxLayerStackDebugViewController *)self setViewModelUpdater:v9];
}

- (void)loadLayerStack:(id)stack
{
  stackCopy = stack;
  v5 = [[PUParallaxLayerStackViewModel alloc] initWithCompoundLayerStack:stackCopy style:0 deviceOrientation:1 allowedBehaviors:0];

  [(PUParallaxLayerStackDebugViewController *)self setViewModel:v5];
}

- (void)loadSegmentationItem:(id)item
{
  itemCopy = item;
  v5 = [objc_alloc(MEMORY[0x1E69BDEA0]) initWithSegmentationItem:itemCopy];
  [v5 setResponseQueue:MEMORY[0x1E69E96A0]];
  v6 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:0];
  [v5 setPriority:v6];

  [v5 setLayerStackOptions:0xFFFFLL];
  if ([itemCopy isSettlingEffectAvailable])
  {
    [v5 setSettlingEffectEnabled:1];
  }

  if ([itemCopy isSpatialPhotoAvailable])
  {
    [v5 setSpatialPhotoEnabled:1];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PUParallaxLayerStackDebugViewController_loadSegmentationItem___block_invoke;
  v8[3] = &unk_1E7B773D8;
  v8[4] = self;
  v9 = itemCopy;
  v7 = itemCopy;
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

- (void)loadPartialSegmentationItem:(id)item loadingState:(unint64_t)state
{
  v17 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v7 = PLWallpaperGetLog();
  v8 = v7;
  signpost = self->_signpost;
  if (signpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 134217984;
    stateCopy2 = state;
    _os_signpost_emit_with_name_impl(&dword_1B36F3000, v8, OS_SIGNPOST_EVENT, signpost, "PUParallaxLayerStackDebugViewController.LoadingState", "state=%lx", buf, 0xCu);
  }

  v10 = [objc_alloc(MEMORY[0x1E69BDEB8]) initWithSegmentationItem:itemCopy];
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
  if ((state & 4) != 0)
  {
    v13 = @"Finishing…";
  }

  else if ((state & 2) != 0)
  {
    v13 = @"Analyzing…";
  }

  else if (state)
  {
    v13 = @"Segmenting…";
  }

  else
  {
    v12 = PLWallpaperGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      stateCopy2 = state;
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

- (void)loadPHAsset:(id)asset
{
  if (asset)
  {
    assetCopy = asset;
    [(PUParallaxLayerStackDebugViewController *)self setAsset:assetCopy];
    layerStackView = [(PUParallaxLayerStackDebugViewController *)self layerStackView];
    [layerStackView setHidden:1];

    [(PUParallaxLayerStackDebugViewController *)self showProgressIndicator:@"Loading…"];
    v6 = [objc_alloc(MEMORY[0x1E6978B20]) initWithPhotoAsset:assetCopy];

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
  downloadProgressIndicator = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
  isShowingProgress = [downloadProgressIndicator isShowingProgress];

  if (isShowingProgress)
  {
    downloadProgressIndicator2 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__PUParallaxLayerStackDebugViewController_hideDowloadProgressIndicator__block_invoke;
    v16[3] = &unk_1E7B80DD0;
    v16[4] = self;
    [downloadProgressIndicator2 endShowingProgressImmediately:1 animated:1 withCompletionHandler:v16];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    buttonStackView = [(PUParallaxLayerStackDebugViewController *)self buttonStackView];
    arrangedSubviews = [buttonStackView arrangedSubviews];

    v8 = [arrangedSubviews countByEnumeratingWithState:&v12 objects:v17 count:16];
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
            objc_enumerationMutation(arrangedSubviews);
          }

          [*(*(&v12 + 1) + 8 * v11++) setEnabled:1];
        }

        while (v9 != v11);
        v9 = [arrangedSubviews countByEnumeratingWithState:&v12 objects:v17 count:16];
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

- (void)updateDownloadProgressIndicator:(double)indicator
{
  downloadProgressIndicator = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
  [downloadProgressIndicator setCurrentProgress:indicator];

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
  downloadProgressIndicator = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];

  if (!downloadProgressIndicator)
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

    downloadProgressIndicator2 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
    [downloadProgressIndicator2 setLocalizedMessage:@"Downloading…"];

    downloadProgressIndicator3 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
    [downloadProgressIndicator3 setDeterminate:1];

    downloadProgressIndicator4 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
    [downloadProgressIndicator4 setCurrentProgress:0.0];

    downloadProgressIndicator5 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
    [downloadProgressIndicator5 setShowsBackground:1];

    downloadProgressIndicator6 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
    [downloadProgressIndicator6 setTranslatesAutoresizingMaskIntoConstraints:0];

    downloadProgressIndicator7 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
    [downloadProgressIndicator7 beginShowingProgressImmediately:1 animated:1];

    view = [(PUParallaxLayerStackDebugViewController *)self view];
    downloadProgressIndicator8 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
    [view addSubview:downloadProgressIndicator8];

    downloadProgressIndicator9 = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
    [downloadProgressIndicator9 sizeToFit];
  }
}

- (void)hideProgressIndicator
{
  v16 = *MEMORY[0x1E69E9840];
  progressIndicator = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__PUParallaxLayerStackDebugViewController_hideProgressIndicator__block_invoke;
  v14[3] = &unk_1E7B80DD0;
  v14[4] = self;
  [progressIndicator endShowingProgressImmediately:1 animated:1 withCompletionHandler:v14];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  buttonStackView = [(PUParallaxLayerStackDebugViewController *)self buttonStackView];
  arrangedSubviews = [buttonStackView arrangedSubviews];

  v6 = [arrangedSubviews countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(arrangedSubviews);
        }

        [*(*(&v10 + 1) + 8 * v9++) setEnabled:1];
      }

      while (v7 != v9);
      v7 = [arrangedSubviews countByEnumeratingWithState:&v10 objects:v15 count:16];
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

- (void)updateProgressIndicator:(id)indicator
{
  indicatorCopy = indicator;
  progressIndicator = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];
  [progressIndicator setLocalizedMessage:indicatorCopy];
}

- (void)showProgressIndicator:(id)indicator
{
  v30 = *MEMORY[0x1E69E9840];
  indicatorCopy = indicator;
  progressIndicator = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];

  if (!progressIndicator)
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

    progressIndicator2 = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];
    [progressIndicator2 setLocalizedMessage:indicatorCopy];

    progressIndicator3 = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];
    [progressIndicator3 setDeterminate:0];

    progressIndicator4 = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];
    [progressIndicator4 setShowsBackground:1];

    progressIndicator5 = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];
    [progressIndicator5 setTranslatesAutoresizingMaskIntoConstraints:0];

    progressIndicator6 = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];
    [progressIndicator6 beginShowingProgressImmediately:1 animated:1];

    view = [(PUParallaxLayerStackDebugViewController *)self view];
    progressIndicator7 = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];
    [view addSubview:progressIndicator7];

    progressIndicator8 = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];
    [progressIndicator8 sizeToFit];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  buttonStackView = [(PUParallaxLayerStackDebugViewController *)self buttonStackView];
  arrangedSubviews = [buttonStackView arrangedSubviews];

  v20 = [arrangedSubviews countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(arrangedSubviews);
        }

        [*(*(&v24 + 1) + 8 * v23++) setEnabled:0];
      }

      while (v21 != v23);
      v21 = [arrangedSubviews countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v21);
  }
}

- (void)_updateDateTimeView
{
  dateTimeView = [(PUParallaxLayerStackDebugViewController *)self dateTimeView];
  viewModel = [(PUParallaxLayerStackDebugViewController *)self viewModel];
  style = [viewModel style];

  clockFont = [style clockFont];
  v6 = PUPosterSimulatedTimeFontForIdentifier(clockFont);
  [dateTimeView setTimeFont:v6];

  v7 = MEMORY[0x1E69DC888];
  clockColor = [style clockColor];
  v9 = [v7 colorWithCGColor:{objc_msgSend(clockColor, "CGColor")}];
  [dateTimeView setTimeColor:v9];

  [dateTimeView setUseVibrantAppearance:0];
}

- (void)viewDidLayoutSubviews
{
  v49.receiver = self;
  v49.super_class = PUParallaxLayerStackDebugViewController;
  [(PUParallaxLayerStackDebugViewController *)&v49 viewDidLayoutSubviews];
  view = [(PUParallaxLayerStackDebugViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  layerStackView = [(PUParallaxLayerStackDebugViewController *)self layerStackView];
  [layerStackView setFrame:{v5, v7, v9, v11}];

  view2 = [(PUParallaxLayerStackDebugViewController *)self view];
  [view2 bounds];
  MidX = CGRectGetMidX(v50);
  view3 = [(PUParallaxLayerStackDebugViewController *)self view];
  [view3 bounds];
  v16 = CGRectGetMidY(v51) * 0.67;
  progressIndicator = [(PUParallaxLayerStackDebugViewController *)self progressIndicator];
  [progressIndicator setCenter:{MidX, v16}];

  view4 = [(PUParallaxLayerStackDebugViewController *)self view];
  [view4 bounds];
  v19 = CGRectGetMidX(v52);
  view5 = [(PUParallaxLayerStackDebugViewController *)self view];
  [view5 bounds];
  v21 = CGRectGetMidY(v53) * 1.33;
  downloadProgressIndicator = [(PUParallaxLayerStackDebugViewController *)self downloadProgressIndicator];
  [downloadProgressIndicator setCenter:{v19, v21}];

  view6 = [(PUParallaxLayerStackDebugViewController *)self view];
  [view6 safeAreaInsets];
  v25 = v24;
  v27 = v26;
  v29 = v28;

  view7 = [(PUParallaxLayerStackDebugViewController *)self view];
  [view7 bounds];
  v31 = CGRectGetMaxY(v54) - v27;
  radarButton = [(PUParallaxLayerStackDebugViewController *)self radarButton];
  [radarButton bounds];
  v33 = v31 - CGRectGetHeight(v55);
  view8 = [(PUParallaxLayerStackDebugViewController *)self view];
  [view8 bounds];
  v35 = CGRectGetWidth(v56) - v29 - v25;
  radarButton2 = [(PUParallaxLayerStackDebugViewController *)self radarButton];
  [radarButton2 bounds];
  Height = CGRectGetHeight(v57);

  buttonStackView = [(PUParallaxLayerStackDebugViewController *)self buttonStackView];
  [buttonStackView setFrame:{v25, v33, v35, Height}];

  viewModel = [(PUParallaxLayerStackDebugViewController *)self viewModel];
  currentLayerStack = [viewModel currentLayerStack];

  layout = [currentLayerStack layout];
  if (layout)
  {
    v58.origin.x = v5;
    v58.origin.y = v7;
    v58.size.width = v9;
    v58.size.height = v11;
    if (!CGRectIsEmpty(v58))
    {
      dateTimeView = [(PUParallaxLayerStackDebugViewController *)self dateTimeView];
      [dateTimeView layoutWithLayout:layout inContainerFrame:{v5, v7, v9, v11}];

      viewModel2 = [(PUParallaxLayerStackDebugViewController *)self viewModel];
      clockAppearsAboveForeground = [viewModel2 clockAppearsAboveForeground];

      v45 = MEMORY[0x1E69C0C08];
      if (!clockAppearsAboveForeground)
      {
        v45 = MEMORY[0x1E69C0C00];
      }

      v46 = *v45;
      dateTimeView2 = [(PUParallaxLayerStackDebugViewController *)self dateTimeView];
      layer = [dateTimeView2 layer];
      [layer setZPosition:v46];
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = PUParallaxLayerStackDebugViewController;
  [(PUParallaxLayerStackDebugViewController *)&v3 viewWillDisappear:disappear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = PUParallaxLayerStackDebugViewController;
  [(PUParallaxLayerStackDebugViewController *)&v3 viewDidAppear:appear];
}

- (void)viewDidLoad
{
  v50[6] = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = PUParallaxLayerStackDebugViewController;
  [(PUParallaxLayerStackDebugViewController *)&v49 viewDidLoad];
  grayColor = [MEMORY[0x1E69DC888] grayColor];
  view = [(PUParallaxLayerStackDebugViewController *)self view];
  [view setBackgroundColor:grayColor];

  v5 = [PUParallaxLayerStackView alloc];
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(PUParallaxLayerStackView *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
  [(PUParallaxLayerStackDebugViewController *)self setLayerStackView:v10];

  view2 = [(PUParallaxLayerStackDebugViewController *)self view];
  layerStackView = [(PUParallaxLayerStackDebugViewController *)self layerStackView];
  [view2 addSubview:layerStackView];

  v13 = [[PUWallpaperPosterDateView alloc] initWithFrame:v6, v7, v8, v9];
  [(PUParallaxLayerStackDebugViewController *)self setDateTimeView:v13];

  view3 = [(PUParallaxLayerStackDebugViewController *)self view];
  dateTimeView = [(PUParallaxLayerStackDebugViewController *)self dateTimeView];
  [view3 addSubview:dateTimeView];

  v16 = [(PUParallaxLayerStackDebugViewController *)self _newButtonWithSystemImageName:@"square.stack.3d.up"];
  [(PUParallaxLayerStackDebugViewController *)self setParallaxEnabledButton:v16];

  parallaxEnabledButton = [(PUParallaxLayerStackDebugViewController *)self parallaxEnabledButton];
  [parallaxEnabledButton addTarget:self action:sel_toggleParallaxEnabled_ forControlEvents:0x2000];

  v18 = [(PUParallaxLayerStackDebugViewController *)self _newButtonWithSystemImageName:@"slider.horizontal.below.rectangle"];
  [(PUParallaxLayerStackDebugViewController *)self setLooksButton:v18];

  looksButton = [(PUParallaxLayerStackDebugViewController *)self looksButton];
  [looksButton addTarget:self action:sel_showLooks_ forControlEvents:0x2000];

  v20 = [(PUParallaxLayerStackDebugViewController *)self _newButtonWithSystemImageName:@"list.dash"];
  [(PUParallaxLayerStackDebugViewController *)self setLayerListButton:v20];

  layerListButton = [(PUParallaxLayerStackDebugViewController *)self layerListButton];
  [layerListButton addTarget:self action:sel_showLayerList_ forControlEvents:0x2000];

  v22 = [(PUParallaxLayerStackDebugViewController *)self _newButtonWithSystemImageName:@"eyedropper.full"];
  [(PUParallaxLayerStackDebugViewController *)self setColorPaletteButton:v22];

  colorPaletteButton = [(PUParallaxLayerStackDebugViewController *)self colorPaletteButton];
  [colorPaletteButton addTarget:self action:sel_showColorPalettes_ forControlEvents:0x2000];

  v24 = [(PUParallaxLayerStackDebugViewController *)self _newButtonWithSystemImageName:@"square.and.arrow.up"];
  [(PUParallaxLayerStackDebugViewController *)self setShareButton:v24];

  shareButton = [(PUParallaxLayerStackDebugViewController *)self shareButton];
  [shareButton addTarget:self action:sel_shareLayerStack_ forControlEvents:0x2000];

  v26 = [(PUParallaxLayerStackDebugViewController *)self _newButtonWithSystemImageName:@"ant.fill"];
  [(PUParallaxLayerStackDebugViewController *)self setRadarButton:v26];

  radarButton = [(PUParallaxLayerStackDebugViewController *)self radarButton];
  [radarButton addTarget:self action:sel_tapToRadar_ forControlEvents:0x2000];

  v28 = objc_alloc(MEMORY[0x1E69DCF90]);
  parallaxEnabledButton2 = [(PUParallaxLayerStackDebugViewController *)self parallaxEnabledButton];
  v50[0] = parallaxEnabledButton2;
  looksButton2 = [(PUParallaxLayerStackDebugViewController *)self looksButton];
  v50[1] = looksButton2;
  layerListButton2 = [(PUParallaxLayerStackDebugViewController *)self layerListButton];
  v50[2] = layerListButton2;
  colorPaletteButton2 = [(PUParallaxLayerStackDebugViewController *)self colorPaletteButton];
  v50[3] = colorPaletteButton2;
  shareButton2 = [(PUParallaxLayerStackDebugViewController *)self shareButton];
  v50[4] = shareButton2;
  radarButton2 = [(PUParallaxLayerStackDebugViewController *)self radarButton];
  v50[5] = radarButton2;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:6];
  v36 = [v28 initWithArrangedSubviews:v35];
  [(PUParallaxLayerStackDebugViewController *)self setButtonStackView:v36];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  buttonStackView = [(PUParallaxLayerStackDebugViewController *)self buttonStackView];
  [buttonStackView setBackgroundColor:clearColor];

  buttonStackView2 = [(PUParallaxLayerStackDebugViewController *)self buttonStackView];
  [buttonStackView2 setAxis:0];

  buttonStackView3 = [(PUParallaxLayerStackDebugViewController *)self buttonStackView];
  [buttonStackView3 setAlignment:3];

  buttonStackView4 = [(PUParallaxLayerStackDebugViewController *)self buttonStackView];
  [buttonStackView4 setDistribution:1];

  view4 = [(PUParallaxLayerStackDebugViewController *)self view];
  buttonStackView5 = [(PUParallaxLayerStackDebugViewController *)self buttonStackView];
  [view4 addSubview:buttonStackView5];

  buttonStackView6 = [(PUParallaxLayerStackDebugViewController *)self buttonStackView];
  [buttonStackView6 sizeToFit];

  v45 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_panGesture_];
  layerStackView2 = [(PUParallaxLayerStackDebugViewController *)self layerStackView];
  [layerStackView2 addGestureRecognizer:v45];

  v47 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:self action:sel_pinchGesture_];
  view5 = [(PUParallaxLayerStackDebugViewController *)self view];
  [view5 addGestureRecognizer:v47];
}

- (id)_newButtonWithSystemImageName:(id)name
{
  v3 = MEMORY[0x1E69DC740];
  nameCopy = name;
  borderlessButtonConfiguration = [v3 borderlessButtonConfiguration];
  [borderlessButtonConfiguration setButtonSize:0];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:nameCopy];

  [borderlessButtonConfiguration setImage:v6];
  v7 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v7 setConfiguration:borderlessButtonConfiguration];
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