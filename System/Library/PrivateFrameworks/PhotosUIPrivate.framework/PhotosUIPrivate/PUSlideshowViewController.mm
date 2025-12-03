@interface PUSlideshowViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)prefersHomeIndicatorAutoHidden;
- (PUSlideshowViewController)initWithSession:(id)session mode:(unint64_t)mode;
- (PUSlideshowViewControllerDelegate)delegate;
- (id)ancestorViewOfInstance:(id)instance;
- (id)contentViewControllerForAirPlayController:(id)controller;
- (id)visibleAssets;
- (void)_airplayButtonTapped:(id)tapped;
- (void)_dismissSlideshow;
- (void)_doneButtonTapped:(id)tapped;
- (void)_handleAppWillResignActiveNotification:(id)notification;
- (void)_handleStateChange;
- (void)_installPresentationController:(id)controller;
- (void)_invalidateSpec;
- (void)_playerStateButtonTapped:(id)tapped;
- (void)_removeCurrentPresentationController;
- (void)_removeSlideshowSettingsViewController;
- (void)_settingsButtonTapped:(id)tapped;
- (void)_setupChromeBar;
- (void)_setupTapGesture;
- (void)_tapGesture:(id)gesture;
- (void)_updateAirplayButton;
- (void)_updateIfNeeded;
- (void)_updatePlaceholder;
- (void)_updatePlayerButton;
- (void)_updateRouteObservation;
- (void)_updateSpecIfNeeded;
- (void)airPlayControllerRouteAvailabilityChanged:(id)changed;
- (void)airPlayControllerScreenAvailabilityChanged:(id)changed;
- (void)couchPotatoPlaybackFinished;
- (void)dealloc;
- (void)finishSession;
- (void)loadView;
- (void)slideshowSession:(id)session stopDisplayingPresentationViewController:(id)controller;
- (void)viewControllerSpec:(id)spec didChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewModel:(id)model didChange:(id)change;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PUSlideshowViewController

- (PUSlideshowViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)slideshowSession:(id)session stopDisplayingPresentationViewController:(id)controller
{
  if (self->_currentPresentationController == controller)
  {
    [(PUSlideshowViewController *)self _removeCurrentPresentationController];
  }
}

- (void)airPlayControllerRouteAvailabilityChanged:(id)changed
{
  [(PUSlideshowViewController *)self _invalidateSpec];

  [(PUSlideshowViewController *)self _updateIfNeeded];
}

- (void)airPlayControllerScreenAvailabilityChanged:(id)changed
{
  if (![changed screenAvailability])
  {
    _secondScreenBrowser = [(PUSlideshowViewController *)self _secondScreenBrowser];
    [_secondScreenBrowser finishSession];

    [(PUSlideshowViewController *)self _setSecondScreenBrowser:0];
  }

  [(PUSlideshowViewController *)self _invalidateSpec];

  [(PUSlideshowViewController *)self _updateIfNeeded];
}

- (id)contentViewControllerForAirPlayController:(id)controller
{
  _secondScreenBrowser = [(PUSlideshowViewController *)self _secondScreenBrowser];
  if (!_secondScreenBrowser)
  {
    session = [(PUSlideshowViewController *)self session];
    _secondScreenBrowser = [[PUSlideshowViewController alloc] initWithSession:session mode:1];
    [(PUSlideshowViewController *)self _setSecondScreenBrowser:_secondScreenBrowser];
  }

  return _secondScreenBrowser;
}

- (void)couchPotatoPlaybackFinished
{
  session = [(PUSlideshowViewController *)self session];
  viewModel = [session viewModel];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__PUSlideshowViewController_couchPotatoPlaybackFinished__block_invoke;
  v5[3] = &unk_1E7B80DD0;
  v6 = viewModel;
  v4 = viewModel;
  [v4 performChanges:v5];
}

- (id)ancestorViewOfInstance:(id)instance
{
  instanceCopy = instance;
  view = [(PUSlideshowViewController *)self view];
  superview = [view superview];

  if (superview && superview != instanceCopy)
  {
    v7 = [superview ancestorViewOfInstance:instanceCopy];

    superview = v7;
  }

  return superview;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  if (self->_tapGestureRecognizer == recognizer && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    view = [gestureRecognizerCopy view];
    view2 = [(PUSlideshowViewController *)self view];
    v10 = [view ancestorViewOfInstance:view2];
    v7 = v10 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)viewControllerSpec:(id)spec didChange:(id)change
{
  specCopy = spec;
  changeCopy = change;
  if (self->_spec == specCopy)
  {
    if ([changeCopy shouldShowChromeBarsChanged])
    {
      [(PUSlideshowViewController *)self _updateChromeVisibility];
      if (![(PUSlideshowViewControllerSpec *)specCopy isChromeVisible])
      {
        _slideshowSettingsViewController = [(PUSlideshowViewController *)self _slideshowSettingsViewController];

        if (_slideshowSettingsViewController)
        {
          [(PUSlideshowViewController *)self _removeSlideshowSettingsViewController];
        }
      }

      [(PUSlideshowViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
    }

    if ([changeCopy shouldObserveAirplayRouteChanged])
    {
      [(PUSlideshowViewController *)self _updateRouteObservation];
    }

    if ([changeCopy shouldShowAirplayButtonChanged])
    {
      [(PUSlideshowViewController *)self _updateAirplayButton];
    }

    if ([changeCopy shouldShowPlaceholderChanged])
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
    viewModel = [(PUSlideshowSession *)self->_session viewModel];
    wantsChromeVisible = [viewModel wantsChromeVisible];

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
    v11 = wantsChromeVisible;
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUSlideshowViewController.m" lineNumber:452 description:@"updates still needed after an update cycle"];
    }
  }
}

- (void)_updatePlaceholder
{
  shouldShowPlaceholder = [(PUSlideshowViewControllerSpec *)self->_spec shouldShowPlaceholder];
  _slideshowPlaceholderView = [(PUSlideshowViewController *)self _slideshowPlaceholderView];
  v5 = !shouldShowPlaceholder;
  if (shouldShowPlaceholder && !_slideshowPlaceholderView)
  {
    v6 = [[PHPlaceholderView alloc] initWithType:1];
    view = [(PUSlideshowViewController *)self view];
    [view bounds];
    [(PHPlaceholderView *)v6 setFrame:?];

    [(PHPlaceholderView *)v6 setAutoresizingMask:18];
    view2 = [(PUSlideshowViewController *)self view];
    [view2 addSubview:v6];

    v9 = v6;
LABEL_8:
    [(PUSlideshowViewController *)self _setSlideshowPlaceHolderView:v6];
    _slideshowPlaceholderView = v9;
    goto LABEL_9;
  }

  if (!_slideshowPlaceholderView)
  {
    v5 = 0;
  }

  if (v5 == 1)
  {
    v9 = _slideshowPlaceholderView;
    [(PHPlaceholderView *)_slideshowPlaceholderView removeFromSuperview];
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

  navigationItem = [(PUSlideshowViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v4 animated:1];
}

- (void)_updateRouteObservation
{
  shouldObserveAirplayRoute = [(PUSlideshowViewControllerSpec *)self->_spec shouldObserveAirplayRoute];
  v4 = +[PHAirPlayScreenController sharedInstance];
  v5 = v4;
  if (shouldObserveAirplayRoute)
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
  viewModel = [(PUSlideshowSession *)self->_session viewModel];
  if ([viewModel currentState] == 2)
  {
    v3 = 18;
  }

  else
  {
    v3 = 17;
  }

  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:v3 target:self action:sel__playerStateButtonTapped_];
  toolbarItems = [(PUSlideshowViewController *)self toolbarItems];
  v6 = [toolbarItems mutableCopy];

  [v6 replaceObjectAtIndex:self->_playerStateButtonItemIndex withObject:v4];
  [(PUSlideshowViewController *)self setToolbarItems:v6 animated:1];
}

- (void)viewModel:(id)model didChange:(id)change
{
  changeCopy = change;
  session = self->_session;
  modelCopy = model;
  viewModel = [(PUSlideshowSession *)session viewModel];

  if (viewModel == modelCopy)
  {
    if ([changeCopy wantsChromeVisibleDidChange])
    {
      [(PUSlideshowViewController *)self _invalidateSpec];
      [(PUSlideshowViewController *)self _updateIfNeeded];
    }

    if ([changeCopy currentStateDidChange])
    {
      [(PUSlideshowViewController *)self _handleStateChange];
    }
  }
}

- (void)_removeSlideshowSettingsViewController
{
  presentedViewController = [(PUSlideshowViewController *)self presentedViewController];
  _slideshowSettingsViewController = [(PUSlideshowViewController *)self _slideshowSettingsViewController];
  v5 = _removeSlideshowSettingsViewController_isDismissing;

  if (presentedViewController == _slideshowSettingsViewController && (v5 & 1) == 0)
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
    parentViewController = [(OKPresentationViewController *)currentPresentationController parentViewController];

    if (parentViewController == self)
    {
      [(OKPresentationViewController *)self->_currentPresentationController willMoveToParentViewController:0];
      view = [(OKPresentationViewController *)self->_currentPresentationController view];
      [view removeFromSuperview];

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
  settingsViewModel = [(PUSlideshowSession *)self->_session settingsViewModel];
  preset = [settingsViewModel preset];

  pluginIdentifier = [preset pluginIdentifier];
  v6 = [pluginIdentifier containsString:@"magazine"];

  if (v6)
  {
    view = [(PUSlideshowViewController *)self view];
    window = [view window];
    v9 = window;
    if (window)
    {
      [window px_peripheryInsets];
      v34 = v11;
      v35 = v10;
      v32 = v13;
      v33 = v12;
    }

    else
    {
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      px_firstKeyWindow = [mEMORY[0x1E69DC668] px_firstKeyWindow];
      [px_firstKeyWindow px_peripheryInsets];
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
      view2 = [(PUSlideshowViewController *)self view];
      [view2 bounds];
      v24 = v33 + v23;
      v26 = v35 + v25;
      v28 = v27 - (v33 + v32);
      v30 = v29 - (v35 + v34);

      view3 = [(OKPresentationViewController *)self->_currentPresentationController view];
      [view3 setBounds:{v24, v26, v28, v30}];
    }
  }
}

- (void)_installPresentationController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy && self->_currentPresentationController != controllerCopy)
  {
    v13 = controllerCopy;
    objc_storeStrong(&self->_currentPresentationController, controller);
    [(OKPresentationViewController *)self->_currentPresentationController setDelegate:self];
    [(PUSlideshowViewController *)self addChildViewController:self->_currentPresentationController];
    view = [(OKPresentationViewController *)self->_currentPresentationController view];
    view2 = [(PUSlideshowViewController *)self view];
    [view2 bounds];
    [view setFrame:?];

    view3 = [(OKPresentationViewController *)self->_currentPresentationController view];
    [view3 setAutoresizingMask:18];

    view4 = [(OKPresentationViewController *)self->_currentPresentationController view];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [view4 setBackgroundColor:blackColor];

    view5 = [(PUSlideshowViewController *)self view];
    view6 = [(OKPresentationViewController *)self->_currentPresentationController view];
    [view5 addSubview:view6];

    [(OKPresentationViewController *)self->_currentPresentationController didMoveToParentViewController:self];
    controllerCopy = v13;
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
  presentedViewController = [(PUSlideshowViewController *)self presentedViewController];

  if (presentedViewController)
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
  viewModel = [(PUSlideshowSession *)self->_session viewModel];
  currentState = [viewModel currentState];
  [(PUSlideshowViewController *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
  if (currentState <= 3)
  {
    if (currentState == 1)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __47__PUSlideshowViewController__handleStateChange__block_invoke;
      v16[3] = &unk_1E7B80DD0;
      v17 = viewModel;
      [v17 performChanges:v16];
      [(PUSlideshowSession *)self->_session updatePresentationViewController];
      viewModel2 = [(PUSlideshowSession *)self->_session viewModel];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __47__PUSlideshowViewController__handleStateChange__block_invoke_2;
      v14[3] = &unk_1E7B80DD0;
      v15 = viewModel2;
      v7 = viewModel2;
      [v7 performChanges:v14];

      v5 = v17;
      goto LABEL_14;
    }

    if (currentState == 2)
    {
      [(OKPresentationViewController *)self->_currentPresentationController instantPlay];
      [(PUSlideshowViewController *)self _updatePlayerButton];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __47__PUSlideshowViewController__handleStateChange__block_invoke_3;
      v12[3] = &unk_1E7B80DD0;
      v13 = viewModel;
      [v13 performChanges:v12];
      v5 = v13;
      goto LABEL_14;
    }

    if (currentState != 3)
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
    v11 = viewModel;
    [v11 performChanges:v10];
    v5 = v11;
LABEL_14:

    goto LABEL_15;
  }

  switch(currentState)
  {
    case 4:
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __47__PUSlideshowViewController__handleStateChange__block_invoke_5;
      v8[3] = &unk_1E7B80DD0;
      v9 = viewModel;
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

- (void)_handleAppWillResignActiveNotification:(id)notification
{
  viewModel = [(PUSlideshowSession *)self->_session viewModel];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PUSlideshowViewController__handleAppWillResignActiveNotification___block_invoke;
  v5[3] = &unk_1E7B80DD0;
  v6 = viewModel;
  v4 = viewModel;
  [v4 performChanges:v5];
}

- (void)_settingsButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  _slideshowSettingsViewController = [(PUSlideshowViewController *)self _slideshowSettingsViewController];
  if (_slideshowSettingsViewController)
  {
    v5 = _slideshowSettingsViewController;
    presentedViewController = [(PUSlideshowViewController *)self presentedViewController];

    if (presentedViewController == v5)
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

  popoverPresentationController = [v5 popoverPresentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [popoverPresentationController setBarButtonItem:tappedCopy];
  }

  [(PUSlideshowViewController *)self presentViewController:v5 animated:1 completion:0];

LABEL_8:
}

- (void)_airplayButtonTapped:(id)tapped
{
  v10 = objc_alloc_init(MEMORY[0x1E69DD6A8]);
  popoverPresentationController = [v10 popoverPresentationController];
  navigationItem = [(PUSlideshowViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [popoverPresentationController setBarButtonItem:rightBarButtonItem];

  popoverPresentationController2 = [v10 popoverPresentationController];
  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [popoverPresentationController2 setBackgroundColor:secondarySystemGroupedBackgroundColor];

  [(PUSlideshowViewController *)self presentViewController:v10 animated:1 completion:0];
  v9 = +[PHAirPlayScreenController sharedInstance];
  [v9 notifyDidPresentAirPlayRoutesFromSlideshow];
}

- (void)_doneButtonTapped:(id)tapped
{
  viewModel = [(PUSlideshowSession *)self->_session viewModel];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__PUSlideshowViewController__doneButtonTapped___block_invoke;
  v5[3] = &unk_1E7B80DD0;
  v6 = viewModel;
  v4 = viewModel;
  [v4 performChanges:v5];
}

- (void)_tapGesture:(id)gesture
{
  if (![(PUSlideshowViewControllerSpec *)self->_spec isAirplayScreenAvailable])
  {
    viewModel = [(PUSlideshowSession *)self->_session viewModel];
    wantsChromeVisible = [viewModel wantsChromeVisible];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__PUSlideshowViewController__tapGesture___block_invoke;
    v7[3] = &unk_1E7B7FF98;
    v8 = viewModel;
    v9 = wantsChromeVisible;
    v6 = viewModel;
    [v6 performChanges:v7];
  }
}

- (void)_playerStateButtonTapped:(id)tapped
{
  viewModel = [(PUSlideshowSession *)self->_session viewModel];
  currentState = [viewModel currentState];
  v5 = 2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__PUSlideshowViewController__playerStateButtonTapped___block_invoke;
  v7[3] = &unk_1E7B7FF70;
  if (currentState == 2)
  {
    v5 = 3;
  }

  v8 = viewModel;
  v9 = v5;
  v6 = viewModel;
  [v6 performChanges:v7];
}

- (id)visibleAssets
{
  presentationViewController = [(PUSlideshowSession *)self->_session presentationViewController];
  visibleMediaObjects = [presentationViewController visibleMediaObjects];
  v4 = [visibleMediaObjects mutableCopy];

  null = [MEMORY[0x1E695DFB0] null];
  [v4 removeObjectIdenticalTo:null];

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
    view = [(PUSlideshowViewController *)self view];
    [view addGestureRecognizer:v3];

    tapGestureRecognizer = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v3;
  }
}

- (void)_setupChromeBar
{
  v15[4] = *MEMORY[0x1E69E9840];
  navigationItem = [(PUSlideshowViewController *)self navigationItem];
  v4 = PULocalizedString(@"SLIDESHOW_TITLE");
  [navigationItem setTitle:v4];

  navigationItem2 = [(PUSlideshowViewController *)self navigationItem];
  [navigationItem2 setHidesBackButton:1];

  v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__doneButtonTapped_];
  v7 = objc_alloc(MEMORY[0x1E69DC708]);
  v8 = PULocalizedString(@"SLIDESHOW_SETTINGS_BUTTON");
  v9 = [v7 initWithTitle:v8 style:0 target:self action:sel__settingsButtonTapped_];

  v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:18 target:self action:sel__playerStateButtonTapped_];
  v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  navigationItem3 = [(PUSlideshowViewController *)self navigationItem];
  [navigationItem3 setLeftBarButtonItem:v6];

  v15[0] = v11;
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v9;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
  [(PUSlideshowViewController *)self setToolbarItems:v13];

  toolbarItems = [(PUSlideshowViewController *)self toolbarItems];
  self->_playerStateButtonItemIndex = [toolbarItems indexOfObject:v10];
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  selfCopy = self;
  viewModel = [(PUSlideshowSession *)self->_session viewModel];
  currentState = [viewModel currentState];
  LOBYTE(selfCopy) = [(PUSlideshowViewControllerSpec *)selfCopy->_spec shouldShowChromeBars];

  return (currentState == 2) & ~selfCopy;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PUSlideshowViewController;
  [(PUSlideshowViewController *)&v5 viewDidAppear:appear];
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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = PUSlideshowViewController;
  [(PUSlideshowViewController *)&v5 viewWillAppear:?];
  if ([(PUSlideshowViewControllerSpec *)self->_spec shouldRegisterToAirplay])
  {
    [(PUSlideshowSession *)self->_session registerSlideshowDisplayContext:self];
  }

  [(UIViewController *)self pu_setupInitialBarsVisibilityOnViewWillAppearAnimated:appearCopy];
}

- (void)finishSession
{
  [(PUSlideshowSession *)self->_session unregisterSlideshowDisplayContext:self];
  viewModel = [(PUSlideshowSession *)self->_session viewModel];
  [viewModel unregisterChangeObserver:self];

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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDBC8] object:0];
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

  viewModel = [(PUSlideshowSession *)self->_session viewModel];
  if (![viewModel currentState])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __40__PUSlideshowViewController_viewDidLoad__block_invoke;
    v4[3] = &unk_1E7B80DD0;
    v5 = viewModel;
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

- (PUSlideshowViewController)initWithSession:(id)session mode:(unint64_t)mode
{
  sessionCopy = session;
  if (!sessionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSlideshowViewController.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"session"}];
  }

  v17.receiver = self;
  v17.super_class = PUSlideshowViewController;
  v9 = [(PUSlideshowViewController *)&v17 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, session);
    v10->_mode = mode;
    v11 = [[PUSlideshowViewControllerSpec alloc] initWithMode:mode];
    spec = v10->_spec;
    v10->_spec = v11;

    [(PUViewControllerSpec *)v10->_spec registerChangeObserver:v10];
    viewModel = [(PUSlideshowSession *)v10->_session viewModel];
    [viewModel registerChangeObserver:v10];

    if ([(PUSlideshowViewControllerSpec *)v10->_spec shouldPauseWhenAppResignsActive])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v10 selector:sel__handleAppWillResignActiveNotification_ name:*MEMORY[0x1E69DDBC8] object:0];
    }
  }

  return v10;
}

@end