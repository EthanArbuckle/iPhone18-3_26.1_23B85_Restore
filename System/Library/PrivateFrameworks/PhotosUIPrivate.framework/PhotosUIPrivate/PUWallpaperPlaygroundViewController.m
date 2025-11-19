@interface PUWallpaperPlaygroundViewController
- (PUWallpaperPlaygroundViewController)initWithAssets:(id)a3;
- (PUWallpaperPlaygroundViewController)initWithConfiguration:(id)a3 assetDirectory:(id)a4;
- (double)px_backlightTransformAnimationDuration;
- (double)px_lowLuminanceAlphaAnimationDuration;
- (double)px_shuffleSleepFadeInAnimationDuration;
- (double)px_shuffleSleepFadeOutAnimationDuration;
- (double)px_shuffleSleepTransformOutAnimationDuration;
- (id)_renderingEnvironmentForAssets:(id)a3;
- (id)px_extendRenderSessionForReason:(id)a3;
- (void)_commonInit;
- (void)_dismiss;
- (void)_handlePanGesture:(id)a3;
- (void)_handleTap:(id)a3;
- (void)_handleTwoFingerTap:(id)a3;
- (void)_setupControls;
- (void)_setupLowLuminanceFilter;
- (void)_setupPosterController;
- (void)_setupRendererViews;
- (void)_updateEnvironmentUsingBlock:(id)a3;
- (void)_updateLowLuminanceState;
- (void)_updateTitleTransform;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)presentPlaygroundWithPresentingViewController:(id)a3;
- (void)px_updatePreferences:(id)a3;
- (void)setPosterController:(id)a3;
- (void)setShowsControls:(BOOL)a3;
- (void)setUseLowLuminance:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PUWallpaperPlaygroundViewController

- (void)presentPlaygroundWithPresentingViewController:(id)a3
{
  v4 = [a3 view];
  v8 = [v4 window];

  v5 = [v8 windowScene];
  v6 = [objc_alloc(MEMORY[0x1E69DD2E8]) initWithWindowScene:v5];
  v7 = wrapperWindow;
  wrapperWindow = v6;

  [wrapperWindow setRootViewController:self];
  [wrapperWindow makeKeyAndVisible];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (ViewModelObservationContext == a6)
  {
    v7 = [(PUWallpaperPlaygroundViewController *)self view:a3];
    [v7 setNeedsLayout];
  }
}

- (id)px_extendRenderSessionForReason:(id)a3
{
  v3 = objc_alloc_init(PUWallpaperPlaygroundInvalidatable);

  return v3;
}

- (void)_updateTitleTransform
{
  v3 = [(PUWallpaperPlaygroundViewController *)self environment];
  [v3 containerFrame];
  PXRectWithSize();

  v4 = [(PUWallpaperPlaygroundViewController *)self environment];
  [v4 px_titleBoundsForLayout:0];
  PXRectDenormalize();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v33.origin.x = v6;
  v33.origin.y = v8;
  v33.size.width = v10;
  v33.size.height = v12;
  if (!CGRectIsEmpty(v33))
  {
    v13 = [(PUWallpaperPlaygroundViewController *)self environment];
    [v13 px_minimumTitleBounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v34.origin.x = v6;
    v34.origin.y = v8;
    v34.size.width = v10;
    v34.size.height = v12;
    Height = CGRectGetHeight(v34);
    v35.origin.x = v15;
    v35.origin.y = v17;
    v35.size.width = v19;
    v35.size.height = v21;
    v23 = Height / CGRectGetHeight(v35);
    memset(&v32, 0, sizeof(v32));
    v24 = 1.0;
    if (v23 >= 1.0)
    {
      v24 = v23;
    }

    CGAffineTransformMakeScale(&v32, 1.0, v24);
    v31 = v32;
    v25 = [(PUWallpaperPlaygroundViewController *)self dateView];
    v30 = v31;
    [v25 setTransform:&v30];

    v26 = *MEMORY[0x1E695EFF8];
    v27 = *(MEMORY[0x1E695EFF8] + 8);
    v28 = [(PUWallpaperPlaygroundViewController *)self dateView];
    v29 = [v28 layer];
    [v29 setAnchorPoint:{v26, v27}];
  }
}

- (void)px_updatePreferences:(id)a3
{
  v5 = a3;
  v6 = [(PUWallpaperPlaygroundViewController *)self preferences];
  v7 = objc_opt_new();
  (*(a3 + 2))(v5, v6, v7);

  v8 = [(PUWallpaperPlaygroundViewController *)self preferences];
  [v8 px_preferredTitleBounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(PUWallpaperPlaygroundViewController *)self environment];
  [v17 setPx_preferredTitleBounds:{v10, v12, v14, v16}];

  [(PUWallpaperPlaygroundViewController *)self _updateTitleTransform];
}

- (double)px_shuffleSleepFadeInAnimationDuration
{
  v2 = +[PUWallpaperPlaygroundSettings sharedInstance];
  [v2 shuffleSleepFadeInAnimationDuration];
  v4 = v3;

  return v4;
}

- (double)px_shuffleSleepFadeOutAnimationDuration
{
  v2 = +[PUWallpaperPlaygroundSettings sharedInstance];
  [v2 shuffleSleepFadeOutAnimationDuration];
  v4 = v3;

  return v4;
}

- (double)px_shuffleSleepTransformOutAnimationDuration
{
  v2 = +[PUWallpaperPlaygroundSettings sharedInstance];
  [v2 shuffleSleepTransformOutAnimationDuration];
  v4 = v3;

  return v4;
}

- (double)px_backlightTransformAnimationDuration
{
  v2 = +[PUWallpaperPlaygroundSettings sharedInstance];
  [v2 lowLuminanceTransformAnimationDuration];
  v4 = v3;

  return v4;
}

- (double)px_lowLuminanceAlphaAnimationDuration
{
  v2 = +[PUWallpaperPlaygroundSettings sharedInstance];
  [v2 lowLuminanceAlphaAnimationDuration];
  v4 = v3;

  return v4;
}

- (void)_updateLowLuminanceState
{
  if (PFPosterWantsLowLuminanceContent())
  {
    v3 = +[PUWallpaperPlaygroundSettings sharedInstance];
    [v3 lowLuminanceAlphaAnimationDuration];
    v5 = v4;
    v6 = MEMORY[0x1E69DD250];
    v7 = [(PUWallpaperPlaygroundViewController *)self dateView];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __63__PUWallpaperPlaygroundViewController__updateLowLuminanceState__block_invoke;
    v20[3] = &unk_1E7B80DD0;
    v20[4] = self;
    [v6 transitionWithView:v7 duration:5242880 options:v20 animations:0 completion:v5];

    if ([v3 applyLowAPLFilter])
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      if ([(PUWallpaperPlaygroundViewController *)self useLowLuminance])
      {
        v8 = &unk_1F2B7F3B8;
      }

      else
      {
        v8 = &unk_1F2B7F3A8;
      }

      v9 = [(PUWallpaperPlaygroundViewController *)self hostingView];
      v10 = [v9 layer];

      v11 = [(PUWallpaperPlaygroundViewController *)self lowLuminanceFilterInputScaleKeyPath];
      v12 = [MEMORY[0x1E6979318] animationWithKeyPath:v11];
      v13 = [v10 presentationLayer];
      v14 = [v13 valueForKeyPath:v11];
      [v12 setFromValue:v14];

      [v12 setToValue:v8];
      [v12 setDuration:v5];
      [v12 setRemovedOnCompletion:0];
      [v12 setFillMode:*MEMORY[0x1E69797E8]];
      v15 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
      [v12 setTimingFunction:v15];

      [v10 addAnimation:v12 forKey:@"lowLuminanceIntensity"];
      [v10 setValue:v8 forKeyPath:v11];
      v16 = MEMORY[0x1E696AD98];
      v17 = +[PUWallpaperPlaygroundSettings sharedInstance];
      [v17 lowAPLFilterAmount];
      v18 = [v16 numberWithDouble:?];
      v19 = [(PUWallpaperPlaygroundViewController *)self lowLuminanceFilterInputAmountKeyPath];
      [v10 setValue:v18 forKeyPath:v19];

      [MEMORY[0x1E6979518] commit];
    }
  }
}

void __63__PUWallpaperPlaygroundViewController__updateLowLuminanceState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) useLowLuminance];
  v3 = [*(a1 + 32) dateView];
  [v3 setUseThinnerFontWeightForTime:v2];
}

- (void)setUseLowLuminance:(BOOL)a3
{
  if (self->_useLowLuminance != a3)
  {
    v11 = v3;
    v12 = v4;
    self->_useLowLuminance = a3;
    [(PUWallpaperPlaygroundViewController *)self _updateLowLuminanceState];
    v7 = [(PUWallpaperPlaygroundViewController *)self posterController];
    v8 = [v7 viewModel];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__PUWallpaperPlaygroundViewController_setUseLowLuminance___block_invoke;
    v9[3] = &__block_descriptor_33_e48_v16__0___PUParallaxLayerStackMutableViewModel__8l;
    v10 = a3;
    [v8 performChanges:v9];
  }
}

void __58__PUWallpaperPlaygroundViewController_setUseLowLuminance___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = PFPosterWantsLowLuminanceContent();
  if (*(a1 + 32))
  {
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  [v5 setBacklightLuminance:v4];
}

- (void)_setupLowLuminanceFilter
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6979C40];
  v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979C40]];
  v5 = MEMORY[0x1E696AD98];
  v6 = +[PUWallpaperPlaygroundSettings sharedInstance];
  [v6 lowAPLFilterAmount];
  v7 = [v5 numberWithDouble:?];
  v8 = *MEMORY[0x1E6979990];
  [v4 setValue:v7 forKey:*MEMORY[0x1E6979990]];

  v9 = *MEMORY[0x1E6979BF0];
  [v4 setValue:&unk_1F2B7F3A8 forKey:*MEMORY[0x1E6979BF0]];
  v15[0] = v4;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v11 = [(PUWallpaperPlaygroundViewController *)self hostingView];
  v12 = [v11 layer];
  [v12 setFilters:v10];

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"filters.%@.%@", v3, v9];
  [(PUWallpaperPlaygroundViewController *)self setLowLuminanceFilterInputScaleKeyPath:v13];

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"filters.%@.%@", v3, v8];
  [(PUWallpaperPlaygroundViewController *)self setLowLuminanceFilterInputAmountKeyPath:v14];
}

void __60__PUWallpaperPlaygroundViewController__handleShuffleTrigger__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPx_significantEventsCounter:{objc_msgSend(v2, "px_significantEventsCounter") + 1}];
}

- (void)_handleTwoFingerTap:(id)a3
{
  v4 = [(PUWallpaperPlaygroundViewController *)self useLowLuminance]^ 1;

  [(PUWallpaperPlaygroundViewController *)self setUseLowLuminance:v4];
}

- (void)_handleTap:(id)a3
{
  v4 = [(PUWallpaperPlaygroundViewController *)self showsControls]^ 1;

  [(PUWallpaperPlaygroundViewController *)self setShowsControls:v4];
}

- (void)_updateEnvironmentUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(PUWallpaperPlaygroundViewController *)self environment];
  v6 = [v5 copy];

  v4[2](v4, v6);
  environment = self->_environment;
  self->_environment = v6;
  v8 = v6;

  v9 = [(PUWallpaperPlaygroundViewController *)self posterController];
  [v9 renderer:self didUpdateEnvironment:v8 withTransition:0];
}

- (void)setShowsControls:(BOOL)a3
{
  if (self->_showsControls != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_showsControls = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__PUWallpaperPlaygroundViewController_setShowsControls___block_invoke;
    v5[3] = &unk_1E7B7FF98;
    v5[4] = self;
    v6 = a3;
    [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:2 animations:v5 completion:0];
  }
}

uint64_t __56__PUWallpaperPlaygroundViewController_setShowsControls___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) doneButton];
  [v3 setAlpha:v2];

  if (*(a1 + 40))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 32) settingsButton];
  [v5 setAlpha:v4];

  v6 = *(a1 + 32);

  return [v6 setNeedsStatusBarAppearanceUpdate];
}

- (void)_dismiss
{
  v2 = [(PUWallpaperPlaygroundViewController *)self view];
  v3 = [v2 window];
  [v3 setHidden:1];

  v4 = wrapperWindow;
  wrapperWindow = 0;
}

- (void)_setupControls
{
  v40[4] = *MEMORY[0x1E69E9840];
  v35 = [(PUWallpaperPlaygroundViewController *)self view];
  v34 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  [v34 setButtonSize:1];
  [v34 setCornerStyle:4];
  v3 = [MEMORY[0x1E69DC888] systemWhiteColor];
  [v34 setBaseForegroundColor:v3];

  [v34 setTitle:@"Done"];
  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x1E69DC738]);
  v5 = MEMORY[0x1E69DC628];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __53__PUWallpaperPlaygroundViewController__setupControls__block_invoke;
  v37[3] = &unk_1E7B80890;
  objc_copyWeak(&v38, &location);
  v6 = [v5 actionWithTitle:@"Done" image:0 identifier:0 handler:v37];
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v10 = *(MEMORY[0x1E695F058] + 24);
  v33 = [v4 initWithFrame:v6 primaryAction:{*MEMORY[0x1E695F058], v8, v9, v10}];

  [v33 setConfiguration:v34];
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v35 addSubview:v33];
  [(PUWallpaperPlaygroundViewController *)self setDoneButton:v33];
  v11 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  [v11 setButtonSize:3];
  [v11 setCornerStyle:4];
  v12 = [MEMORY[0x1E69DC888] systemWhiteColor];
  [v11 setBaseForegroundColor:v12];
  v32 = v11;

  v13 = objc_alloc(MEMORY[0x1E69DC738]);
  v14 = MEMORY[0x1E69DC628];
  v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"gearshape.fill"];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __53__PUWallpaperPlaygroundViewController__setupControls__block_invoke_2;
  v36[3] = &unk_1E7B7C4A0;
  v36[4] = self;
  v16 = [v14 actionWithTitle:&stru_1F2AC6818 image:v15 identifier:0 handler:v36];
  v17 = [v13 initWithFrame:v16 primaryAction:{v7, v8, v9, v10}];

  [v17 setConfiguration:v32];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v35 addSubview:v17];
  [(PUWallpaperPlaygroundViewController *)self setSettingsButton:v17];
  v27 = MEMORY[0x1E696ACD8];
  v31 = [v33 trailingAnchor];
  v30 = [v35 trailingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30 constant:-20.0];
  v40[0] = v29;
  v28 = [v33 topAnchor];
  v18 = [v35 topAnchor];
  v19 = [v28 constraintEqualToAnchor:v18 constant:20.0];
  v40[1] = v19;
  v20 = [v17 centerXAnchor];
  v21 = [v35 centerXAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v40[2] = v22;
  v23 = [v17 bottomAnchor];
  v24 = [v35 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:-50.0];
  v40[3] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
  [v27 activateConstraints:v26];

  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);
}

void __53__PUWallpaperPlaygroundViewController__setupControls__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismiss];
}

void __53__PUWallpaperPlaygroundViewController__setupControls__block_invoke_2(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69C66C0]);
  v3 = +[PUWallpaperPlaygroundSettings sharedInstance];
  v4 = [v2 initWithRootSettings:v3];

  v5 = [MEMORY[0x1E69DCF58] customDetentWithIdentifier:0 resolver:&__block_literal_global_238];
  v9[0] = v5;
  v6 = [MEMORY[0x1E69DCF58] mediumDetent];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v8 = [v4 sheetPresentationController];
  [v8 setDetents:v7];

  [*(a1 + 32) presentViewController:v4 animated:1 completion:0];
}

- (void)setPosterController:(id)a3
{
  v8 = a3;
  v5 = self->_posterController;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PUWallpaperPosterController *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      [(PUWallpaperPosterController *)self->_posterController removeObserver:self forKeyPath:@"viewModel" context:&ViewModelObservationContext];
      objc_storeStrong(&self->_posterController, a3);
      [(PUWallpaperPosterController *)self->_posterController addObserver:self forKeyPath:@"viewModel" options:0 context:&ViewModelObservationContext];
    }
  }
}

- (void)_setupPosterController
{
  v3 = [PUWallpaperPosterController alloc];
  v4 = [(PUWallpaperPlaygroundViewController *)self assets];
  v5 = [v4 firstObject];
  v6 = [v5 photoLibrary];
  v8 = [(PUWallpaperPosterController *)v3 initWithRenderer:self photoLibrary:v6];

  v7 = [(PUWallpaperPlaygroundViewController *)self environment];
  [(PUWallpaperPosterController *)v8 renderer:self didInitializeWithEnvironment:v7];

  [(PUWallpaperPlaygroundViewController *)self setPosterController:v8];
}

- (void)_setupRendererViews
{
  v23 = [(PUWallpaperPlaygroundViewController *)self view];
  [v23 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v3, v5, v7, v9}];
  [(UIView *)v11 setAutoresizingMask:18];
  [v23 addSubview:v11];
  hostingView = self->_hostingView;
  self->_hostingView = v11;
  v13 = v11;

  v14 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v6, v8, v10}];
  [(UIView *)v14 setAutoresizingMask:18];
  [(UIView *)v13 addSubview:v14];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v14;
  v16 = v14;

  v17 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v6, v8, v10}];
  [(UIView *)v17 setAutoresizingMask:18];
  [(UIView *)v13 addSubview:v17];
  foregroundView = self->_foregroundView;
  self->_foregroundView = v17;
  v19 = v17;

  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  v26 = CGRectOffset(v25, 0.0, 100.0);
  v20 = [[PUWallpaperPosterDateView alloc] initWithFrame:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height];
  [(UIView *)v13 addSubview:v20];
  [(PUWallpaperPlaygroundViewController *)self setDateView:v20];
  v21 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v6, v8, v10}];
  [(UIView *)v21 setAutoresizingMask:18];
  [(UIView *)v13 addSubview:v21];
  floatingView = self->_floatingView;
  self->_floatingView = v21;
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = PUWallpaperPlaygroundViewController;
  [(PUWallpaperPlaygroundViewController *)&v18 viewDidLayoutSubviews];
  v3 = [(PUWallpaperPlaygroundViewController *)self posterController];
  v4 = [v3 viewModel];
  v5 = [v4 currentLayerStack];

  v6 = [v5 layout];
  v7 = [(PUWallpaperPlaygroundViewController *)self view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (v6)
  {
    v19.origin.x = v9;
    v19.origin.y = v11;
    v19.size.width = v13;
    v19.size.height = v15;
    if (!CGRectIsEmpty(v19))
    {
      v16 = [(PUWallpaperPlaygroundViewController *)self dateView];
      [v16 layoutWithLayout:v6 inContainerFrame:{v9, v11, v13, v15}];

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __60__PUWallpaperPlaygroundViewController_viewDidLayoutSubviews__block_invoke;
      v17[3] = &unk_1E7B75C00;
      v17[4] = self;
      [(PUWallpaperPlaygroundViewController *)self _updateEnvironmentUsingBlock:v17];
    }
  }
}

void __60__PUWallpaperPlaygroundViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 dateView];
  [v5 frame];
  [v4 setPx_minimumTitleBounds:?];

  v6 = [*(a1 + 32) view];
  [v6 bounds];
  [v4 setContainerFrame:?];
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = PUWallpaperPlaygroundViewController;
  [(PUWallpaperPlaygroundViewController *)&v6 traitCollectionDidChange:a3];
  v4 = [(PUWallpaperPlaygroundViewController *)self posterController];

  if (v4)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __64__PUWallpaperPlaygroundViewController_traitCollectionDidChange___block_invoke;
    v5[3] = &unk_1E7B75C00;
    v5[4] = self;
    [(PUWallpaperPlaygroundViewController *)self _updateEnvironmentUsingBlock:v5];
  }
}

void __64__PUWallpaperPlaygroundViewController_traitCollectionDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 view];
  v4 = [v5 traitCollection];
  [v3 setPx_traitCollection:v4];
}

- (void)_handlePanGesture:(id)a3
{
  v4 = a3;
  v5 = [(PUWallpaperPlaygroundViewController *)self view];
  [v4 translationInView:v5];
  v7 = v6;

  v8 = [(PUWallpaperPlaygroundViewController *)self view];
  [v8 frame];
  v10 = v7 / v9 + 1.0;

  v11 = 0.0;
  if (v10 >= 0.0)
  {
    v11 = v10;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__PUWallpaperPlaygroundViewController__handlePanGesture___block_invoke;
  v12[3] = &__block_descriptor_40_e47_v16__0___PUWallpaperDebugRenderingEnvironment_8l;
  v12[4] = fmin(v11, 1.0);
  [(PUWallpaperPlaygroundViewController *)self _updateEnvironmentUsingBlock:v12];
  [(PUWallpaperPlaygroundViewController *)self _updateTitleTransform];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = PUWallpaperPlaygroundViewController;
  [(PUWallpaperPlaygroundViewController *)&v13 viewDidLoad];
  v3 = [(PUWallpaperPlaygroundViewController *)self view];
  v4 = [v3 traitCollection];
  v5 = [(PUWallpaperPlaygroundViewController *)self environment];
  [v5 setPx_traitCollection:v4];

  v6 = [(PUWallpaperPlaygroundViewController *)self view];
  v7 = [MEMORY[0x1E69DC888] blackColor];
  [v6 setBackgroundColor:v7];

  v8 = [(PUWallpaperPlaygroundViewController *)self view];
  v9 = [(PUWallpaperPlaygroundViewController *)self panGestureRecognizer];
  [v8 addGestureRecognizer:v9];

  [(PUWallpaperPlaygroundViewController *)self _setupRendererViews];
  [(PUWallpaperPlaygroundViewController *)self _setupPosterController];
  [(PUWallpaperPlaygroundViewController *)self _setupControls];
  [(PUWallpaperPlaygroundViewController *)self _setupLowLuminanceFilter];
  v10 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTap_];
  [v6 addGestureRecognizer:v10];
  v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTwoFingerTap_];
  [v11 setNumberOfTouchesRequired:2];
  [v6 addGestureRecognizer:v11];
  v12 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleThreeFingerTap_];
  [v12 setNumberOfTouchesRequired:3];
  [v6 addGestureRecognizer:v12];
}

- (id)_renderingEnvironmentForAssets:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v5 = [objc_alloc(MEMORY[0x1E69C07E8]) initWithConfigurationType:v4 > 1];
  if (v4 >= 2)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C0830]) initWithShuffleType:1];
    [v5 setShuffleConfiguration:v6];
  }

  v7 = PXMap();
  [v5 setMedia:v7];

  v8 = [[_PUWallpaperDebugRenderingEnvironment alloc] initWithPosterConfiguration:v5 assetDirectory:0];

  return v8;
}

id __70__PUWallpaperPlaygroundViewController__renderingEnvironmentForAssets___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C0808];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 uuid];

  v6 = [v4 initWithAssetUUID:v5];

  return v6;
}

- (void)dealloc
{
  v3 = [(PUWallpaperPlaygroundViewController *)self posterController];
  [v3 removeObserver:self forKeyPath:@"viewModel" context:&ViewModelObservationContext];

  v4.receiver = self;
  v4.super_class = PUWallpaperPlaygroundViewController;
  [(PUWallpaperPlaygroundViewController *)&v4 dealloc];
}

- (void)_commonInit
{
  self->_showsControls = 1;
  v3 = objc_alloc_init(_PUWallpaperDebugMutablePreferences);
  preferences = self->_preferences;
  self->_preferences = v3;

  v5 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__handlePanGesture_];
  panGestureRecognizer = self->_panGestureRecognizer;
  self->_panGestureRecognizer = v5;

  objc_initWeak(&location, self);
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__PUWallpaperPlaygroundViewController__commonInit__block_invoke;
  v10[3] = &unk_1E7B75BB8;
  objc_copyWeak(&v11, &location);
  v8 = [v7 addObserverForName:@"PUWallpaperShuffleNotificationName" object:0 queue:0 usingBlock:v10];
  shuffleTriggerObserver = self->_shuffleTriggerObserver;
  self->_shuffleTriggerObserver = v8;

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__PUWallpaperPlaygroundViewController__commonInit__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleShuffleTrigger];
}

- (PUWallpaperPlaygroundViewController)initWithConfiguration:(id)a3 assetDirectory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PUWallpaperPlaygroundViewController;
  v8 = [(PUWallpaperPlaygroundViewController *)&v12 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [[_PUWallpaperDebugRenderingEnvironment alloc] initWithPosterConfiguration:v6 assetDirectory:v7];
    environment = v8->_environment;
    v8->_environment = v9;

    [(PUWallpaperPlaygroundViewController *)v8 _commonInit];
  }

  return v8;
}

- (PUWallpaperPlaygroundViewController)initWithAssets:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PUWallpaperPlaygroundViewController;
  v5 = [(PUWallpaperPlaygroundViewController *)&v11 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    assets = v5->_assets;
    v5->_assets = v6;

    v8 = [(PUWallpaperPlaygroundViewController *)v5 _renderingEnvironmentForAssets:v4];
    environment = v5->_environment;
    v5->_environment = v8;

    [(PUWallpaperPlaygroundViewController *)v5 _commonInit];
  }

  return v5;
}

@end