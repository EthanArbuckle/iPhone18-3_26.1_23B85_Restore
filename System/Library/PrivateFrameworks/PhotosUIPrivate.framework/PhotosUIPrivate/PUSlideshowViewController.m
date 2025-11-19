@interface PUSlideshowViewController
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (PUSlideshowViewController)initWithSession:(id)a3 mode:(unint64_t)a4;
- (PUSlideshowViewControllerDelegate)delegate;
- (id)ancestorViewOfInstance:(id)a3;
- (id)contentViewControllerForAirPlayController:(id)a3;
- (id)visibleAssets;
- (void)_airplayButtonTapped:(id)a3;
- (void)_dismissSlideshow;
- (void)_doneButtonTapped:(id)a3;
- (void)_handleAppWillResignActiveNotification:(id)a3;
- (void)_handleStateChange;
- (void)_installPresentationController:(id)a3;
- (void)_invalidateSpec;
- (void)_playerStateButtonTapped:(id)a3;
- (void)_removeCurrentPresentationController;
- (void)_removeSlideshowSettingsViewController;
- (void)_settingsButtonTapped:(id)a3;
- (void)_setupChromeBar;
- (void)_setupTapGesture;
- (void)_tapGesture:(id)a3;
- (void)_updateAirplayButton;
- (void)_updateIfNeeded;
- (void)_updatePlaceholder;
- (void)_updatePlayerButton;
- (void)_updateRouteObservation;
- (void)_updateSpecIfNeeded;
- (void)airPlayControllerRouteAvailabilityChanged:(id)a3;
- (void)airPlayControllerScreenAvailabilityChanged:(id)a3;
- (void)couchPotatoPlaybackFinished;
- (void)dealloc;
- (void)finishSession;
- (void)loadView;
- (void)slideshowSession:(id)a3 stopDisplayingPresentationViewController:(id)a4;
- (void)viewControllerSpec:(id)a3 didChange:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewModel:(id)a3 didChange:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation PUSlideshowViewController

- (PUSlideshowViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)slideshowSession:(id)a3 stopDisplayingPresentationViewController:(id)a4
{
  if (self->_currentPresentationController == a4)
  {
    [(PUSlideshowViewController *)self _removeCurrentPresentationController];
  }
}

- (void)airPlayControllerRouteAvailabilityChanged:(id)a3
{
  [(PUSlideshowViewController *)self _invalidateSpec];

  [(PUSlideshowViewController *)self _updateIfNeeded];
}

- (void)airPlayControllerScreenAvailabilityChanged:(id)a3
{
  if (![a3 screenAvailability])
  {
    v4 = [(PUSlideshowViewController *)self _secondScreenBrowser];
    [v4 finishSession];

    [(PUSlideshowViewController *)self _setSecondScreenBrowser:0];
  }

  [(PUSlideshowViewController *)self _invalidateSpec];

  [(PUSlideshowViewController *)self _updateIfNeeded];
}

- (id)contentViewControllerForAirPlayController:(id)a3
{
  v4 = [(PUSlideshowViewController *)self _secondScreenBrowser];
  if (!v4)
  {
    v5 = [(PUSlideshowViewController *)self session];
    v4 = [[PUSlideshowViewController alloc] initWithSession:v5 mode:1];
    [(PUSlideshowViewController *)self _setSecondScreenBrowser:v4];
  }

  return v4;
}

- (void)couchPotatoPlaybackFinished
{
  v2 = [(PUSlideshowViewController *)self session];
  v3 = [v2 viewModel];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__PUSlideshowViewController_couchPotatoPlaybackFinished__block_invoke;
  v5[3] = &unk_1E7B80DD0;
  v6 = v3;
  v4 = v3;
  [v4 performChanges:v5];
}

- (id)ancestorViewOfInstance:(id)a3
{
  v4 = a3;
  v5 = [(PUSlideshowViewController *)self view];
  v6 = [v5 superview];

  if (v6 && v6 != v4)
  {
    v7 = [v6 ancestorViewOfInstance:v4];

    v6 = v7;
  }

  return v6;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a4;
  if (self->_tapGestureRecognizer == a3 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v8 = [v6 view];
    v9 = [(PUSlideshowViewController *)self view];
    v10 = [v8 ancestorViewOfInstance:v9];
    v7 = v10 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)viewControllerSpec:(id)a3 didChange:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (self->_spec == v8)
  {
    if ([v6 shouldShowChromeBarsChanged])
    {
      [(PUSlideshowViewController *)self _updateChromeVisibility];
      if (![(PUSlideshowViewControllerSpec *)v8 isChromeVisible])
      {
        v7 = [(PUSlideshowViewController *)self _slideshowSettingsViewController];

        if (v7)
        {
          [(PUSlideshowViewController *)self _removeSlideshowSettingsViewController];
        }
      }

      [(PUSlideshowViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
    }

    if ([v6 shouldObserveAirplayRouteChanged])
    {
      [(PUSlideshowViewController *)self _updateRouteObservation];
    }

    if ([v6 shouldShowAirplayButtonChanged])
    {
      [(PUSlideshowViewController *)self _updateAirplayButton];
    }

    if ([v6 shouldShowPlaceholderChanged])
    {
      [(PUSlideshowViewController *)self _updatePlaceholder];
    }
  }
}

- (void)_updateSpecIfNeeded
{
  if ([(PUSlideshowViewController *)self _needsUpdateSpec])
  {
    [(PUSlideshowViewController *)self _setNeedsUpdateSpec:0];
    v3 = [(PUSlideshowSession *)self->_session viewModel];
    v4 = [v3 wantsChromeVisible];

    v5 = +[PHAirPlayScreenController sharedInstance];
    v6 = [v5 screenAvailability] != 0;

    v7 = +[PHAirPlayScreenController sharedInstance];
    v8 = [v7 routeAvailability] == 1;

    spec = self->_spec;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__PUSlideshowViewController__updateSpecIfNeeded__block_invoke;
    v10[3] = &unk_1E7B7FAF8;
    v10[4] = self;
    v11 = v4;
    v12 = v6;
    v13 = v8;
    [(PUViewControllerSpec *)spec performChanges:v10];
  }
}

uint64_t __48__PUSlideshowViewController__updateSpecIfNeeded__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1000) setChromeVisible:*(a1 + 40)];
  [*(*(a1 + 32) + 1000) setAirplayScreenAvailable:*(a1 + 41)];
  v2 = *(*(a1 + 32) + 1000);
  v3 = *(a1 + 42);

  return [v2 setAirplayRouteAvailable:v3];
}

- (void)_invalidateSpec
{
  [(PUSlideshowViewController *)self _setNeedsUpdateSpec:1];

  [(PUSlideshowViewController *)self _setNeedsUpdate];
}

- (void)_updateIfNeeded
{
  if ([(PUSlideshowViewController *)self _needsUpdate])
  {
    [(PUSlideshowViewController *)self _updateSpecIfNeeded];
    if ([(PUSlideshowViewController *)self _needsUpdate])
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:a2 object:self file:@"PUSlideshowViewController.m" lineNumber:452 description:@"updates still needed after an update cycle"];
    }
  }
}

- (void)_updatePlaceholder
{
  v3 = [(PUSlideshowViewControllerSpec *)self->_spec shouldShowPlaceholder];
  v4 = [(PUSlideshowViewController *)self _slideshowPlaceholderView];
  v5 = !v3;
  if (v3 && !v4)
  {
    v6 = [[PHPlaceholderView alloc] initWithType:1];
    v7 = [(PUSlideshowViewController *)self view];
    [v7 bounds];
    [(PHPlaceholderView *)v6 setFrame:?];

    [(PHPlaceholderView *)v6 setAutoresizingMask:18];
    v8 = [(PUSlideshowViewController *)self view];
    [v8 addSubview:v6];

    v9 = v6;
LABEL_8:
    [(PUSlideshowViewController *)self _setSlideshowPlaceHolderView:v6];
    v4 = v9;
    goto LABEL_9;
  }

  if (!v4)
  {
    v5 = 0;
  }

  if (v5 == 1)
  {
    v9 = v4;
    [(PHPlaceholderView *)v4 removeFromSuperview];
    v6 = 0;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_updateAirplayButton
{
  if ([(PUSlideshowViewControllerSpec *)self->_spec shouldShowAirplayButton])
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:111 target:self action:sel__airplayButtonTapped_];
  }

  else
  {
    v4 = 0;
  }

  v3 = [(PUSlideshowViewController *)self navigationItem];
  [v3 setRightBarButtonItem:v4 animated:1];
}

- (void)_updateRouteObservation
{
  v3 = [(PUSlideshowViewControllerSpec *)self->_spec shouldObserveAirplayRoute];
  v4 = +[PHAirPlayScreenController sharedInstance];
  v5 = v4;
  if (v3)
  {
    [v4 registerRouteObserver:self];
  }

  else
  {
    [v4 unregisterRouteObserver:self];
  }

  [(PUSlideshowViewController *)self _invalidateSpec];

  [(PUSlideshowViewController *)self _updateIfNeeded];
}

- (void)_updatePlayerButton
{
  v7 = [(PUSlideshowSession *)self->_session viewModel];
  if ([v7 currentState] == 2)
  {
    v3 = 18;
  }

  else
  {
    v3 = 17;
  }

  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:v3 target:self action:sel__playerStateButtonTapped_];
  v5 = [(PUSlideshowViewController *)self toolbarItems];
  v6 = [v5 mutableCopy];

  [v6 replaceObjectAtIndex:self->_playerStateButtonItemIndex withObject:v4];
  [(PUSlideshowViewController *)self setToolbarItems:v6 animated:1];
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v9 = a4;
  session = self->_session;
  v7 = a3;
  v8 = [(PUSlideshowSession *)session viewModel];

  if (v8 == v7)
  {
    if ([v9 wantsChromeVisibleDidChange])
    {
      [(PUSlideshowViewController *)self _invalidateSpec];
      [(PUSlideshowViewController *)self _updateIfNeeded];
    }

    if ([v9 currentStateDidChange])
    {
      [(PUSlideshowViewController *)self _handleStateChange];
    }
  }
}

- (void)_removeSlideshowSettingsViewController
{
  v3 = [(PUSlideshowViewController *)self presentedViewController];
  v4 = [(PUSlideshowViewController *)self _slideshowSettingsViewController];
  v5 = _removeSlideshowSettingsViewController_isDismissing;

  if (v3 == v4 && (v5 & 1) == 0)
  {
    _removeSlideshowSettingsViewController_isDismissing = 1;

    [(PUSlideshowViewController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_82499];
  }
}

- (void)_removeCurrentPresentationController
{
  currentPresentationController = self->_currentPresentationController;
  if (currentPresentationController)
  {
    v4 = [(OKPresentationViewController *)currentPresentationController parentViewController];

    if (v4 == self)
    {
      [(OKPresentationViewController *)self->_currentPresentationController willMoveToParentViewController:0];
      v5 = [(OKPresentationViewController *)self->_currentPresentationController view];
      [v5 removeFromSuperview];

      [(OKPresentationViewController *)self->_currentPresentationController removeFromParentViewController];
      v6 = self->_currentPresentationController;
      self->_currentPresentationController = 0;
    }
  }
}

- (void)viewWillLayoutSubviews
{
  v36.receiver = self;
  v36.super_class = PUSlideshowViewController;
  [(PUSlideshowViewController *)&v36 viewWillLayoutSubviews];
  v3 = [(PUSlideshowSession *)self->_session settingsViewModel];
  v4 = [v3 preset];

  v5 = [v4 pluginIdentifier];
  v6 = [v5 containsString:@"magazine"];

  if (v6)
  {
    v7 = [(PUSlideshowViewController *)self view];
    v8 = [v7 window];
    v9 = v8;
    if (v8)
    {
      [v8 px_peripheryInsets];
      v34 = v11;
      v35 = v10;
      v32 = v13;
      v33 = v12;
    }

    else
    {
      v14 = [MEMORY[0x1E69DC668] sharedApplication];
      v15 = [v14 px_firstKeyWindow];
      [v15 px_peripheryInsets];
      v34 = v17;
      v35 = v16;
      v32 = v19;
      v33 = v18;
    }

    v20.f64[0] = v34;
    v20.f64[1] = v32;
    v21.f64[0] = v35;
    v21.f64[1] = v33;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v21, *MEMORY[0x1E69DDCE0]), vceqq_f64(v20, *(MEMORY[0x1E69DDCE0] + 16))))) & 1) == 0)
    {
      v22 = [(PUSlideshowViewController *)self view];
      [v22 bounds];
      v24 = v33 + v23;
      v26 = v35 + v25;
      v28 = v27 - (v33 + v32);
      v30 = v29 - (v35 + v34);

      v31 = [(OKPresentationViewController *)self->_currentPresentationController view];
      [v31 setBounds:{v24, v26, v28, v30}];
    }
  }
}

- (void)_installPresentationController:(id)a3
{
  v5 = a3;
  if (v5 && self->_currentPresentationController != v5)
  {
    v13 = v5;
    objc_storeStrong(&self->_currentPresentationController, a3);
    [(OKPresentationViewController *)self->_currentPresentationController setDelegate:self];
    [(PUSlideshowViewController *)self addChildViewController:self->_currentPresentationController];
    v6 = [(OKPresentationViewController *)self->_currentPresentationController view];
    v7 = [(PUSlideshowViewController *)self view];
    [v7 bounds];
    [v6 setFrame:?];

    v8 = [(OKPresentationViewController *)self->_currentPresentationController view];
    [v8 setAutoresizingMask:18];

    v9 = [(OKPresentationViewController *)self->_currentPresentationController view];
    v10 = [MEMORY[0x1E69DC888] blackColor];
    [v9 setBackgroundColor:v10];

    v11 = [(PUSlideshowViewController *)self view];
    v12 = [(OKPresentationViewController *)self->_currentPresentationController view];
    [v11 addSubview:v12];

    [(OKPresentationViewController *)self->_currentPresentationController didMoveToParentViewController:self];
    v5 = v13;
  }
}

- (void)_dismissSlideshow
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__PUSlideshowViewController__dismissSlideshow__block_invoke;
  aBlock[3] = &unk_1E7B80DD0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(PUSlideshowViewController *)self presentedViewController];

  if (v4)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__PUSlideshowViewController__dismissSlideshow__block_invoke_2;
    v5[3] = &unk_1E7B80C88;
    v6 = v3;
    [(PUSlideshowViewController *)self dismissViewControllerAnimated:1 completion:v5];
  }

  else
  {
    v3[2](v3);
  }
}

uint64_t __46__PUSlideshowViewController__dismissSlideshow__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1048));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 1048));
    v5 = *(a1 + 32);
    v6 = [v5 visibleAssets];
    [v4 slideshowViewControllerDidFinish:v5 withVisibleAssets:v6];
  }

  v7 = *(a1 + 32);

  return [v7 finishSession];
}

- (void)_handleStateChange
{
  v3 = [(PUSlideshowSession *)self->_session viewModel];
  v4 = [v3 currentState];
  [(PUSlideshowViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
  if (v4 <= 3)
  {
    if (v4 == 1)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __47__PUSlideshowViewController__handleStateChange__block_invoke;
      v16[3] = &unk_1E7B80DD0;
      v17 = v3;
      [v17 performChanges:v16];
      [(PUSlideshowSession *)self->_session updatePresentationViewController];
      v6 = [(PUSlideshowSession *)self->_session viewModel];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __47__PUSlideshowViewController__handleStateChange__block_invoke_2;
      v14[3] = &unk_1E7B80DD0;
      v15 = v6;
      v7 = v6;
      [v7 performChanges:v14];

      v5 = v17;
      goto LABEL_14;
    }

    if (v4 == 2)
    {
      [(OKPresentationViewController *)self->_currentPresentationController instantPlay];
      [(PUSlideshowViewController *)self _updatePlayerButton];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __47__PUSlideshowViewController__handleStateChange__block_invoke_3;
      v12[3] = &unk_1E7B80DD0;
      v13 = v3;
      [v13 performChanges:v12];
      v5 = v13;
      goto LABEL_14;
    }

    if (v4 != 3)
    {
      goto LABEL_15;
    }

LABEL_10:
    [(OKPresentationViewController *)self->_currentPresentationController instantPause];
    [(PUSlideshowViewController *)self _updatePlayerButton];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__PUSlideshowViewController__handleStateChange__block_invoke_4;
    v10[3] = &unk_1E7B80DD0;
    v11 = v3;
    [v11 performChanges:v10];
    v5 = v11;
LABEL_14:

    goto LABEL_15;
  }

  switch(v4)
  {
    case 4:
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __47__PUSlideshowViewController__handleStateChange__block_invoke_5;
      v8[3] = &unk_1E7B80DD0;
      v9 = v3;
      [v9 performChanges:v8];
      v5 = v9;
      goto LABEL_14;
    case 5:
      goto LABEL_10;
    case 6:
      [(PUSlideshowViewController *)self _dismissSlideshow];
      break;
  }

LABEL_15:
}

- (void)_handleAppWillResignActiveNotification:(id)a3
{
  v3 = [(PUSlideshowSession *)self->_session viewModel];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PUSlideshowViewController__handleAppWillResignActiveNotification___block_invoke;
  v5[3] = &unk_1E7B80DD0;
  v6 = v3;
  v4 = v3;
  [v4 performChanges:v5];
}

- (void)_settingsButtonTapped:(id)a3
{
  v9 = a3;
  v4 = [(PUSlideshowViewController *)self _slideshowSettingsViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [(PUSlideshowViewController *)self presentedViewController];

    if (v6 == v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = [[PUSlideshowSettingsViewController alloc] initWithSession:self->_session];
    [(PUSlideshowSettingsViewController *)v7 setDelegate:self];
    v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];
    [v5 setModalPresentationStyle:7];
    [(PUSlideshowViewController *)self _setSlideshowSettingsViewController:v5];
  }

  v8 = [v5 popoverPresentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setBarButtonItem:v9];
  }

  [(PUSlideshowViewController *)self presentViewController:v5 animated:1 completion:0];

LABEL_8:
}

- (void)_airplayButtonTapped:(id)a3
{
  v10 = objc_alloc_init(MEMORY[0x1E69DD6A8]);
  v4 = [v10 popoverPresentationController];
  v5 = [(PUSlideshowViewController *)self navigationItem];
  v6 = [v5 rightBarButtonItem];
  [v4 setBarButtonItem:v6];

  v7 = [v10 popoverPresentationController];
  v8 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [v7 setBackgroundColor:v8];

  [(PUSlideshowViewController *)self presentViewController:v10 animated:1 completion:0];
  v9 = +[PHAirPlayScreenController sharedInstance];
  [v9 notifyDidPresentAirPlayRoutesFromSlideshow];
}

- (void)_doneButtonTapped:(id)a3
{
  v3 = [(PUSlideshowSession *)self->_session viewModel];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__PUSlideshowViewController__doneButtonTapped___block_invoke;
  v5[3] = &unk_1E7B80DD0;
  v6 = v3;
  v4 = v3;
  [v4 performChanges:v5];
}

- (void)_tapGesture:(id)a3
{
  if (![(PUSlideshowViewControllerSpec *)self->_spec isAirplayScreenAvailable])
  {
    v4 = [(PUSlideshowSession *)self->_session viewModel];
    v5 = [v4 wantsChromeVisible];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__PUSlideshowViewController__tapGesture___block_invoke;
    v7[3] = &unk_1E7B7FF98;
    v8 = v4;
    v9 = v5;
    v6 = v4;
    [v6 performChanges:v7];
  }
}

- (void)_playerStateButtonTapped:(id)a3
{
  v3 = [(PUSlideshowSession *)self->_session viewModel];
  v4 = [v3 currentState];
  v5 = 2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__PUSlideshowViewController__playerStateButtonTapped___block_invoke;
  v7[3] = &unk_1E7B7FF70;
  if (v4 == 2)
  {
    v5 = 3;
  }

  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v6 performChanges:v7];
}

- (id)visibleAssets
{
  v2 = [(PUSlideshowSession *)self->_session presentationViewController];
  v3 = [v2 visibleMediaObjects];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x1E695DFB0] null];
  [v4 removeObjectIdenticalTo:v5];

  return v4;
}

- (void)_setupTapGesture
{
  if (!self->_tapGestureRecognizer)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__tapGesture_];
    [(UITapGestureRecognizer *)v3 setDelegate:self];
    [(UITapGestureRecognizer *)v3 setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)v3 setNumberOfTouchesRequired:1];
    v4 = [(PUSlideshowViewController *)self view];
    [v4 addGestureRecognizer:v3];

    tapGestureRecognizer = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v3;
  }
}

- (void)_setupChromeBar
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = [(PUSlideshowViewController *)self navigationItem];
  v4 = PULocalizedString(@"SLIDESHOW_TITLE");
  [v3 setTitle:v4];

  v5 = [(PUSlideshowViewController *)self navigationItem];
  [v5 setHidesBackButton:1];

  v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__doneButtonTapped_];
  v7 = objc_alloc(MEMORY[0x1E69DC708]);
  v8 = PULocalizedString(@"SLIDESHOW_SETTINGS_BUTTON");
  v9 = [v7 initWithTitle:v8 style:0 target:self action:sel__settingsButtonTapped_];

  v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:18 target:self action:sel__playerStateButtonTapped_];
  v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  v12 = [(PUSlideshowViewController *)self navigationItem];
  [v12 setLeftBarButtonItem:v6];

  v15[0] = v11;
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v9;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
  [(PUSlideshowViewController *)self setToolbarItems:v13];

  v14 = [(PUSlideshowViewController *)self toolbarItems];
  self->_playerStateButtonItemIndex = [v14 indexOfObject:v10];
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  v2 = self;
  v3 = [(PUSlideshowSession *)self->_session viewModel];
  v4 = [v3 currentState];
  LOBYTE(v2) = [(PUSlideshowViewControllerSpec *)v2->_spec shouldShowChromeBars];

  return (v4 == 2) & ~v2;
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PUSlideshowViewController;
  [(PUSlideshowViewController *)&v5 viewDidAppear:a3];
  if ([(PUSlideshowViewControllerSpec *)self->_spec shouldRegisterToAirplay])
  {
    v4 = +[PHAirPlayScreenController sharedInstance];
    [v4 registerContentProvider:self];
  }

  else
  {
    [(PUSlideshowSession *)self->_session registerSlideshowDisplayContext:self];
  }

  [(PUSlideshowViewController *)self _invalidateSpec];
  [(PUSlideshowViewController *)self _updateIfNeeded];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PUSlideshowViewController;
  [(PUSlideshowViewController *)&v5 viewWillAppear:?];
  if ([(PUSlideshowViewControllerSpec *)self->_spec shouldRegisterToAirplay])
  {
    [(PUSlideshowSession *)self->_session registerSlideshowDisplayContext:self];
  }

  [(UIViewController *)self pu_setupInitialBarsVisibilityOnViewWillAppearAnimated:v3];
}

- (void)finishSession
{
  [(PUSlideshowSession *)self->_session unregisterSlideshowDisplayContext:self];
  v3 = [(PUSlideshowSession *)self->_session viewModel];
  [v3 unregisterChangeObserver:self];

  [(PUViewControllerSpec *)self->_spec unregisterChangeObserver:self];
  if ([(PUSlideshowViewControllerSpec *)self->_spec shouldRegisterToAirplay])
  {
    v4 = +[PHAirPlayScreenController sharedInstance];
    [v4 unregisterContentProvider:self];

    v5 = +[PHAirPlayScreenController sharedInstance];
    [v5 unregisterRouteObserver:self];
  }

  if ([(PUSlideshowViewControllerSpec *)self->_spec shouldPauseWhenAppResignsActive])
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:self name:*MEMORY[0x1E69DDBC8] object:0];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PUSlideshowViewController;
  [(PUSlideshowViewController *)&v6 viewDidLoad];
  if ([(PUSlideshowViewControllerSpec *)self->_spec shouldUseChromeBars])
  {
    [(PUSlideshowViewController *)self _setupChromeBar];
  }

  if ([(PUSlideshowViewControllerSpec *)self->_spec shouldUseTapGesture])
  {
    [(PUSlideshowViewController *)self _setupTapGesture];
  }

  v3 = [(PUSlideshowSession *)self->_session viewModel];
  if (![v3 currentState])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __40__PUSlideshowViewController_viewDidLoad__block_invoke;
    v4[3] = &unk_1E7B80DD0;
    v5 = v3;
    [v5 performChanges:v4];
  }
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(PUSlideshowViewController *)self setView:v4];
}

- (void)dealloc
{
  [(PUSlideshowViewController *)self finishSession];
  v3.receiver = self;
  v3.super_class = PUSlideshowViewController;
  [(PUSlideshowViewController *)&v3 dealloc];
}

- (PUSlideshowViewController)initWithSession:(id)a3 mode:(unint64_t)a4
{
  v8 = a3;
  if (!v8)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUSlideshowViewController.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"session"}];
  }

  v17.receiver = self;
  v17.super_class = PUSlideshowViewController;
  v9 = [(PUSlideshowViewController *)&v17 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, a3);
    v10->_mode = a4;
    v11 = [[PUSlideshowViewControllerSpec alloc] initWithMode:a4];
    spec = v10->_spec;
    v10->_spec = v11;

    [(PUViewControllerSpec *)v10->_spec registerChangeObserver:v10];
    v13 = [(PUSlideshowSession *)v10->_session viewModel];
    [v13 registerChangeObserver:v10];

    if ([(PUSlideshowViewControllerSpec *)v10->_spec shouldPauseWhenAppResignsActive])
    {
      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      [v14 addObserver:v10 selector:sel__handleAppWillResignActiveNotification_ name:*MEMORY[0x1E69DDBC8] object:0];
    }
  }

  return v10;
}

@end