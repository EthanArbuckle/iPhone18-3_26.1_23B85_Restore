@interface PGPictureInPictureViewController
+ (double)defaultContentCornerRadius;
+ (void)animateViewWithAnimationType:(int64_t)type initialSpringVelocity:(double)velocity animations:(id)animations completion:(id)completion;
+ (void)tetherViewController:(id)controller toViewController:(id)viewController mode:(int64_t)mode;
- (BOOL)wantsStashTabSuppression;
- (CGSize)microPIPSize;
- (CGSize)minimumStashTabSize;
- (CGSize)preferredContentSize;
- (PGPictureInPictureApplication)application;
- (PGPictureInPictureViewController)initWithApplication:(id)application sourceSceneSessionPersistentIdentifier:(id)identifier controlsStyle:(int64_t)style;
- (PGPictureInPictureViewController)initWithCoder:(id)coder;
- (PGPictureInPictureViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PGPictureInPictureViewController)tetheredViewController;
- (PGPictureInPictureViewController)tetheringViewController;
- (PGPictureInPictureViewControllerContentContainer)contentContainer;
- (PGPictureInPictureViewControllerDelegate)delegate;
- (UIPointerInteraction)pointerInteraction;
- (double)currentContentCornerRadius;
- (id)_newShadowView;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (int64_t)contentType;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (void)_addMaskViewSubviewIfNeeded;
- (void)_applyShadowSettingsToView:(id)view;
- (void)_handleTapWhileStashedGestureRecognizer:(id)recognizer;
- (void)_insertContentContainerViewIfNeeded;
- (void)_layoutStashTabViewsIfNeeded;
- (void)_loadShadowViewIfNeeded;
- (void)_loadTabShadowViewIfNeeded;
- (void)_noteTetheringDidUpdate;
- (void)_performStartAnimationWithCompletionHandler:(id)handler;
- (void)_performStopAnimationWithFinalInterfaceOrientation:(int64_t)orientation finalLayerFrame:(CGRect)frame completionHandler:(id)handler;
- (void)_resetStashTabViewsIfPossible;
- (void)_setPortalActive:(BOOL)active left:(BOOL)left;
- (void)_setStashMaskActive:(BOOL)active;
- (void)_setStashedTabHidden:(BOOL)hidden left:(BOOL)left;
- (void)_updateContentCornerRadiusForMaskActive:(BOOL)active;
- (void)_updateCornerRadii;
- (void)_updatePointerEffect;
- (void)_updatePrefersIdleTimerDisabled;
- (void)_updateStashTabStateWithBehavior:(id)behavior;
- (void)acquireInterfaceOrientationLock;
- (void)deactivateAnalyticsSessionIfNeeded;
- (void)dealloc;
- (void)handleCommand:(id)command;
- (void)hostedWindowSizeChangeBegan;
- (void)hostedWindowSizeChangeEnded;
- (void)loadView;
- (void)notePictureInPictureWillStopForAppRequest:(BOOL)request preferredFullScreenRestore:(BOOL)restore;
- (void)pagingAccessorySetCurrentPage:(unint64_t)page numberOfPages:(unint64_t)pages;
- (void)performResumeAnimationWithCompletionHandler:(id)handler;
- (void)performRotateAnimationWithRotation:(int64_t)rotation completionHandler:(id)handler;
- (void)performStartAnimated:(BOOL)animated withCompletionHandler:(id)handler;
- (void)performStopAnimated:(BOOL)animated withFinalInterfaceOrientation:(int64_t)orientation finalLayerFrame:(CGRect)frame completionHandler:(id)handler;
- (void)performSuspendAnimationWithCompletionHandler:(id)handler;
- (void)prepareStartAnimationWithInitialInterfaceOrientation:(int64_t)orientation initialLayerFrame:(CGRect)frame completionHandler:(id)handler;
- (void)prepareStopAnimationWithCompletionHandler:(id)handler;
- (void)relinquishInterfaceOrientationLock;
- (void)setAnalyticsDelegate:(id)delegate analyticsSourceUUID:(id)d;
- (void)setCanStartShowingChrome:(BOOL)chrome;
- (void)setContentContainer:(id)container;
- (void)setContentCornerRadius:(double)radius animated:(BOOL)animated;
- (void)setContentViewHidden:(BOOL)hidden;
- (void)setHostedWindowHostingHandle:(id)handle;
- (void)setInteractivelyResizing:(BOOL)resizing;
- (void)setInterrupted:(BOOL)interrupted;
- (void)setMenuItems:(id)items;
- (void)setMinimumStashTabSize:(CGSize)size;
- (void)setPreferredContentSize:(CGSize)size;
- (void)setPrefersStashTabSuppressed:(BOOL)suppressed;
- (void)setSceneView:(id)view;
- (void)setStashProgress:(double)progress;
- (void)setStashTabHidden:(BOOL)hidden left:(BOOL)left withSpringBehavior:(id)behavior;
- (void)setStashed:(BOOL)stashed;
- (void)setTetheredViewController:(id)controller mode:(int64_t)mode;
- (void)setTetheringViewController:(id)controller mode:(int64_t)mode;
- (void)settings:(id)settings changedValueForKeyPath:(id)path;
- (void)showChrome:(BOOL)chrome animated:(BOOL)animated;
- (void)updateHostedWindowSize:(CGSize)size;
- (void)updatePlaybackStateWithDiff:(id)diff;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PGPictureInPictureViewController

- (PGPictureInPictureViewController)initWithApplication:(id)application sourceSceneSessionPersistentIdentifier:(id)identifier controlsStyle:(int64_t)style
{
  applicationCopy = application;
  identifierCopy = identifier;
  v10 = PGLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureViewController initWithApplication:sourceSceneSessionPersistentIdentifier:controlsStyle:];
  }

  v29.receiver = self;
  v29.super_class = PGPictureInPictureViewController;
  v11 = [(PGPictureInPictureViewController *)&v29 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    v11->_stashTabHidden = 1;
    v11->_canStartShowingChrome = 1;
    v11->_controlsStyle = style;
    v13 = objc_alloc_init(PGControlsViewModel);
    viewModel = v12->_viewModel;
    v12->_viewModel = v13;

    objc_storeWeak(&v12->_application, applicationCopy);
    objc_storeStrong(&v12->_sourceSceneSessionPersistentIdentifier, identifier);
    v12->_shouldDisablePointerInteraction = 0;
    if ((style - 1) <= 3)
    {
      v15 = [PGControlsContainerView alloc];
      v16 = [(PGControlsContainerView *)v15 initWithFrame:v12->_viewModel viewModel:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      controlsContainerView = v12->_controlsContainerView;
      v12->_controlsContainerView = v16;

      [(PGControlsContainerView *)v12->_controlsContainerView setControlsContainerHidden:1 animated:0];
      [(PGControlsContainerView *)v12->_controlsContainerView setCommandHandler:v12];
      objc_initWeak(&location, v12);
      v18 = v12->_controlsContainerView;
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __109__PGPictureInPictureViewController_initWithApplication_sourceSceneSessionPersistentIdentifier_controlsStyle___block_invoke;
      v26 = &unk_1E7F330C8;
      objc_copyWeak(&v27, &location);
      [(PGControlsContainerView *)v18 setCoordinatedAnimationsForControlsVisibiity:&v23];
      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }

    [(PGPictureInPictureViewController *)v12 setAccessibilityIdentifier:@"PG-PictureInPictureViewController", v23, v24, v25, v26];
    v19 = +[PGMobilePIPSettingsDomain rootSettings];
    settings = v12->_settings;
    v12->_settings = v19;

    [(PTSettings *)v12->_settings addKeyPathObserver:v12];
    [objc_opt_class() defaultContentCornerRadius];
    v12->_currentContentCornerRadius = v21;
  }

  return v12;
}

void __109__PGPictureInPictureViewController_initWithApplication_sourceSceneSessionPersistentIdentifier_controlsStyle___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v4 = objc_loadWeakRetained(WeakRetained + 146);
    if ([v4 pictureInPictureViewControllerShouldHideTetheredViewControllerAlongsideControls:v8] ^ 1 | a2)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }

    v6 = objc_loadWeakRetained(v8 + 156);
    v7 = [v6 viewIfLoaded];
    [v7 setAlpha:v5];

    WeakRetained = v8;
  }
}

- (PGPictureInPictureViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D920];
  v7 = _PGLogMethodProem(self, 0);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v5 raise:v6 format:{@"%@ is not a valid initializer. You must call -[%@ initWithControlsStyle:].", v7, v9}];

  return [(PGPictureInPictureViewController *)self initWithApplication:0 sourceSceneSessionPersistentIdentifier:0 controlsStyle:0];
}

- (void)dealloc
{
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureController init];
  }

  if ([(PGPictureInPictureViewController *)self prefersIdleTimerDisabled])
  {
    self->_prefersIdleTimerDisabled = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PGPictureInPictureViewControllerPrefersIdleTimerDisabledDidChangeNotification" object:0];
  }

  v5.receiver = self;
  v5.super_class = PGPictureInPictureViewController;
  [(PGPictureInPictureViewController *)&v5 dealloc];
}

- (PGPictureInPictureViewController)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 raise:v5 format:{@"%@ does not support unarchiving from a nib.", v7}];

  return [(PGPictureInPictureViewController *)self initWithApplication:0 sourceSceneSessionPersistentIdentifier:0 controlsStyle:0];
}

- (int64_t)contentType
{
  playbackState = [(PGControlsViewModel *)self->_viewModel playbackState];
  contentType = [playbackState contentType];

  return contentType;
}

- (void)setStashed:(BOOL)stashed
{
  if (self->_stashed != stashed)
  {
    stashedCopy = stashed;
    self->_stashed = stashed;
    v6 = 0.0;
    if (stashed)
    {
      v6 = 1.0;
    }

    [(PGPictureInPictureViewController *)self setStashProgress:v6];
    if ([(PGPictureInPictureViewController *)self isViewLoaded])
    {
      if (stashedCopy)
      {
        v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapWhileStashedGestureRecognizer_];
        stashedTapGestureRecognizer = self->_stashedTapGestureRecognizer;
        self->_stashedTapGestureRecognizer = v7;

        view = [(PGPictureInPictureViewController *)self view];
        [view addGestureRecognizer:self->_stashedTapGestureRecognizer];
      }

      else
      {
        view = [(PGPictureInPictureViewController *)self view];
        [view removeGestureRecognizer:self->_stashedTapGestureRecognizer];
      }

      [(PGPictureInPictureViewController *)self _updatePrefersIdleTimerDisabled];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pictureInPictureViewController:self didTransitionToStashed:stashedCopy];

    v11 = objc_loadWeakRetained(&self->_analyticsDelegate);
    [v11 pictureInPictureDidChangeStashStateForAnalyticsSessionWithUUID:self->_analyticsSessionUUID stashed:stashedCopy];
  }
}

- (void)setHostedWindowHostingHandle:(id)handle
{
  hostedWindowHostingHandle = handle;
  v9 = hostedWindowHostingHandle;
  if (self->_hostedWindowHostingHandle != hostedWindowHostingHandle)
  {
    objc_storeStrong(&self->_hostedWindowHostingHandle, handle);
    hostedWindowHostingHandle = self->_hostedWindowHostingHandle;
  }

  hostedWindowHostingHandle = [(PGLayerHostView *)self->_contentView hostedWindowHostingHandle];

  v8 = v9;
  if (hostedWindowHostingHandle != hostedWindowHostingHandle)
  {
    v7 = [(PGLayerHostView *)self->_contentView setHostedWindowHostingHandle:v9];
    v8 = v9;
  }

  MEMORY[0x1EEE66BB8](v7, v8);
}

- (void)setSceneView:(id)view
{
  viewCopy = view;
  if (self->_sceneView != viewCopy)
  {
    v7 = viewCopy;
    objc_storeStrong(&self->_sceneView, view);
    layer = [(UIView *)v7 layer];
    [layer setAllowsHitTesting:0];

    [(PGLayerHostView *)self->_contentView setSceneView:v7];
    viewCopy = v7;
  }
}

- (void)setContentContainer:(id)container
{
  obj = container;
  WeakRetained = objc_loadWeakRetained(&self->_contentContainer);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_contentContainer);

    if (v5)
    {
      *&self->_contentContainerRespondsTo &= 0xC0u;
    }

    objc_storeWeak(&self->_contentContainer, obj);
    playbackState = [(PGControlsViewModel *)self->_viewModel playbackState];
    if ([playbackState isRoutingVideoToHostedWindow])
    {
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        [obj playbackSourceDidUpdateIsRoutingVideoToHostedWindow:1];
      }
    }

    else
    {
    }

    v8 = objc_loadWeakRetained(&self->_contentContainer);

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_contentContainer);
      *&self->_contentContainerRespondsTo = *&self->_contentContainerRespondsTo & 0xFE | objc_opt_respondsToSelector() & 1;

      v10 = objc_loadWeakRetained(&self->_contentContainer);
      if (objc_opt_respondsToSelector())
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }

      *&self->_contentContainerRespondsTo = *&self->_contentContainerRespondsTo & 0xFD | v11;

      v12 = objc_loadWeakRetained(&self->_contentContainer);
      if (objc_opt_respondsToSelector())
      {
        v13 = 4;
      }

      else
      {
        v13 = 0;
      }

      *&self->_contentContainerRespondsTo = *&self->_contentContainerRespondsTo & 0xFB | v13;

      v14 = objc_loadWeakRetained(&self->_contentContainer);
      if (objc_opt_respondsToSelector())
      {
        v15 = 8;
      }

      else
      {
        v15 = 0;
      }

      *&self->_contentContainerRespondsTo = *&self->_contentContainerRespondsTo & 0xF7 | v15;

      v16 = objc_loadWeakRetained(&self->_contentContainer);
      if (objc_opt_respondsToSelector())
      {
        v17 = 16;
      }

      else
      {
        v17 = 0;
      }

      *&self->_contentContainerRespondsTo = *&self->_contentContainerRespondsTo & 0xEF | v17;

      v18 = objc_loadWeakRetained(&self->_contentContainer);
      if (objc_opt_respondsToSelector())
      {
        v19 = 32;
      }

      else
      {
        v19 = 0;
      }

      *&self->_contentContainerRespondsTo = *&self->_contentContainerRespondsTo & 0xDF | v19;
    }
  }
}

- (void)setCanStartShowingChrome:(BOOL)chrome
{
  if (self->_canStartShowingChrome == chrome)
  {
    if (!chrome)
    {
      return;
    }
  }

  else
  {
    if (!chrome)
    {
      [(PGPictureInPictureViewController *)self setStashed:0];
      [(PGPictureInPictureViewController *)self showChrome:0 animated:0];
      self->_canStartShowingChrome = chrome;
      return;
    }

    self->_canStartShowingChrome = chrome;
    waitForUIFinalizationCompletionBlock = self->_waitForUIFinalizationCompletionBlock;
    if (waitForUIFinalizationCompletionBlock)
    {
      waitForUIFinalizationCompletionBlock[2](waitForUIFinalizationCompletionBlock, a2);
      v6 = self->_waitForUIFinalizationCompletionBlock;
      self->_waitForUIFinalizationCompletionBlock = 0;
    }
  }

  if (!self->_waitForUIFinalizationCompletionBlock)
  {

    [(PGPictureInPictureViewController *)self _insertContentContainerViewIfNeeded];
  }
}

- (void)setInteractivelyResizing:(BOOL)resizing
{
  if (self->_interactivelyResizing != resizing)
  {
    self->_interactivelyResizing = resizing;
    [(PGControlsContainerView *)self->_controlsContainerView setInteractivelyResizing:?];
    [(PGPictureInPictureViewController *)self _resetStashTabViewsIfPossible];
    view = [(PGPictureInPictureViewController *)self view];
    [view setNeedsLayout];

    view2 = [(PGPictureInPictureViewController *)self view];
    [view2 layoutIfNeeded];
  }
}

- (void)setAnalyticsDelegate:(id)delegate analyticsSourceUUID:(id)d
{
  obj = delegate;
  v6 = [d copy];
  analyticsSourceUUID = self->_analyticsSourceUUID;
  self->_analyticsSourceUUID = v6;

  objc_storeWeak(&self->_analyticsDelegate, obj);
}

- (void)notePictureInPictureWillStopForAppRequest:(BOOL)request preferredFullScreenRestore:(BOOL)restore
{
  if (self->_analyticsSessionUUID && self->_analyticsSourceUUID)
  {
    restoreCopy = restore;
    requestCopy = request;
    WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);
    [WeakRetained pictureInPictureDidDeactivateAnalyticsSessionWithUUID:self->_analyticsSessionUUID analyticsSourceUUID:self->_analyticsSourceUUID appStoppedSession:requestCopy restoredFullScreen:restoreCopy];

    v8 = objc_loadWeakRetained(&self->_analyticsDelegate);
    [v8 pictureInPictureDidDestroyAnalyticsSessionWithUUID:self->_analyticsSessionUUID];
  }

  objc_storeWeak(&self->_analyticsDelegate, 0);
}

- (void)deactivateAnalyticsSessionIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  if (WeakRetained)
  {

    [(PGPictureInPictureViewController *)self notePictureInPictureWillStopForAppRequest:0 preferredFullScreenRestore:0];
  }
}

- (void)setMinimumStashTabSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (self->_minimumStashTabSize.width != size.width || self->_minimumStashTabSize.height != size.height)
  {
    self->_minimumStashTabSize = size;
    if ([(PGPictureInPictureViewController *)self isViewLoaded])
    {
      WeakRetained = objc_loadWeakRetained(&self->_stashMaskView);
      [WeakRetained setMinimumStashTabSize:{width, height}];

      stashView = self->_stashView;

      [(PGStashView *)stashView setStashedTabWidth:width];
    }
  }
}

- (void)pagingAccessorySetCurrentPage:(unint64_t)page numberOfPages:(unint64_t)pages
{
  if (pages >= 2 && !self->_pagingAccessoryViewController)
  {
    v7 = objc_alloc_init(PGPictureInPicturePagingAccessoryViewController);
    pagingAccessoryViewController = self->_pagingAccessoryViewController;
    self->_pagingAccessoryViewController = v7;
  }

  v9 = self->_pagingAccessoryViewController;

  [(PGPictureInPicturePagingAccessoryViewController *)v9 setCurrentPage:page numberOfPages:pages];
}

+ (double)defaultContentCornerRadius
{
  v2 = _UISolariumEnabled();
  result = 32.0;
  if (!v2)
  {
    return 15.0;
  }

  return result;
}

+ (void)tetherViewController:(id)controller toViewController:(id)viewController mode:(int64_t)mode
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  [viewControllerCopy setTetheredViewController:controllerCopy mode:mode];
  [controllerCopy setTetheringViewController:viewControllerCopy mode:mode];
}

- (void)setTetheredViewController:(id)controller mode:(int64_t)mode
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_tetheredViewController);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_tetheredViewController, obj);
  }

  if (self->_tetheringMode != mode)
  {
    self->_tetheringMode = mode;
  }

  [(PGPictureInPictureViewController *)self _noteTetheringDidUpdate];
}

- (void)setTetheringViewController:(id)controller mode:(int64_t)mode
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_tetheringViewController);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_tetheringViewController, obj);
  }

  if (self->_tetheringMode != mode)
  {
    self->_tetheringMode = mode;
  }

  [(PGPictureInPictureViewController *)self _noteTetheringDidUpdate];
  v7 = objc_loadWeakRetained(&self->_pointerInteraction);
  [v7 invalidate];
}

- (void)_noteTetheringDidUpdate
{
  [(PGPictureInPictureViewController *)self _updateCornerRadii];
  WeakRetained = objc_loadWeakRetained(&self->_tetheringViewController);

  if (!WeakRetained)
  {
    viewIfLoaded = [(PGPictureInPictureViewController *)self viewIfLoaded];
    [viewIfLoaded setAlpha:1.0];
  }

  v6 = objc_loadWeakRetained(&self->_contentContainer);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    currentHandler = objc_loadWeakRetained(&self->_contentContainer);
    [currentHandler notePictureInPictureViewControllerTetheringDidUpdate];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_loadWeakRetained(&self->_contentContainer);
  }
}

- (void)showChrome:(BOOL)chrome animated:(BOOL)animated
{
  animatedCopy = animated;
  chromeCopy = chrome;
  if (([(PGPictureInPictureViewController *)self isViewLoaded]& 1) == 0)
  {
    v7 = PGLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureViewController showChrome:animated:];
    }
  }

  self->_isShowingChrome = chromeCopy;
  if (!chromeCopy || self->_canStartShowingChrome)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__PGPictureInPictureViewController_showChrome_animated___block_invoke;
    v13[3] = &unk_1E7F328F0;
    v13[4] = self;
    v14 = chromeCopy;
    v8 = MEMORY[0x1BFB0C680](v13);
    v9 = v8;
    if (animatedCopy)
    {
      v10 = MEMORY[0x1E69DD250];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __56__PGPictureInPictureViewController_showChrome_animated___block_invoke_2;
      v11[3] = &unk_1E7F32CF8;
      v12 = v8;
      [v10 PG_animateUsingDefaultTimingWithAnimations:v11 completion:0];
    }

    else
    {
      v8[2](v8);
    }

    [(PGControlsContainerView *)self->_controlsContainerView setControlsContainerHidden:!chromeCopy animated:animatedCopy];
  }
}

uint64_t __56__PGPictureInPictureViewController_showChrome_animated___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1000);
  if (*(a1 + 40))
  {
    [MEMORY[0x1E69DC888] colorWithRed:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v3 = ;
  [v2 setBackgroundColor:v3];

  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _loadShadowViewIfNeeded];
    [*(a1 + 32) _loadTabShadowViewIfNeeded];
  }

  v4 = *(a1 + 32);
  v5 = 0.0;
  if ((*(v4 + 1218) & 1) == 0 && *(a1 + 40))
  {
    v5 = 1.0;
  }

  [*(v4 + 1048) setAlpha:v5];
  v6 = *(a1 + 32);

  return [v6 _updateCornerRadii];
}

- (double)currentContentCornerRadius
{
  result = 0.0;
  if (self->_isShowingChrome)
  {
    return self->_currentContentCornerRadius;
  }

  return result;
}

- (void)setContentCornerRadius:(double)radius animated:(BOOL)animated
{
  if (self->_currentContentCornerRadius != radius)
  {
    self->_currentContentCornerRadius = radius;
    if (animated)
    {
      v6[5] = v4;
      v6[6] = v5;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __68__PGPictureInPictureViewController_setContentCornerRadius_animated___block_invoke;
      v6[3] = &unk_1E7F32530;
      v6[4] = self;
      [MEMORY[0x1E69DD250] PG_animateUsingDefaultTimingWithAnimations:v6 completion:0];
    }

    else
    {

      [(PGPictureInPictureViewController *)self _updateCornerRadii];
    }
  }
}

- (void)_updateCornerRadii
{
  values = [(PGControlsViewModel *)self->_viewModel values];
  if ([values controlsViewWantsGlassBackground])
  {
    [(PGPictureInPictureViewController *)self currentContentCornerRadius];
    v5 = v4;

    if (v5 == 32.0)
    {
      view = [(PGPictureInPictureViewController *)self view];
      [view bounds];
      [PGControlsViewLayoutMetrics concentricCornerRadiusForViewSize:v7, v8];
      v10 = v9;

      goto LABEL_6;
    }
  }

  else
  {
  }

  [(PGPictureInPictureViewController *)self currentContentCornerRadius];
  v10 = v11;
LABEL_6:
  [(PGPictureInPictureViewControllerClippingView *)self->_contentClippingView _setContinuousCornerRadius:v10];
  [(UIView *)self->_containerView _setContinuousCornerRadius:v10];
  [(PGPictureInPictureViewControllerBackgroundView *)self->_backgroundView _setContinuousCornerRadius:v10];
  [(PGControlsContainerView *)self->_controlsContainerView _setContinuousCornerRadius:v10];
  WeakRetained = objc_loadWeakRetained(&self->_stashMaskView);
  [WeakRetained _setContinuousCornerRadius:v10];

  stashView = self->_stashView;

  [(PGStashView *)stashView _setContinuousCornerRadius:v10];
}

+ (void)animateViewWithAnimationType:(int64_t)type initialSpringVelocity:(double)velocity animations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  completionCopy = completion;
  if (type == 1)
  {
    v14 = MEMORY[0x1E69DD250];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __109__PGPictureInPictureViewController_animateViewWithAnimationType_initialSpringVelocity_animations_completion___block_invoke_2;
    v15[3] = &unk_1E7F330F0;
    v16[1] = self;
    *&v16[2] = velocity;
    v13 = v16;
    v16[0] = animationsCopy;
    [v14 PG_animateUsingDefaultDampedSpringWithInitialSpringVelocity:v15 animations:completionCopy completion:velocity];
    goto LABEL_5;
  }

  if (!type)
  {
    v12 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __109__PGPictureInPictureViewController_animateViewWithAnimationType_initialSpringVelocity_animations_completion___block_invoke;
    v17[3] = &unk_1E7F330F0;
    v18[1] = self;
    v18[2] = 0;
    v13 = v18;
    v18[0] = animationsCopy;
    [v12 PG_animateUsingDefaultTimingWithAnimations:v17 completion:completionCopy];
LABEL_5:
  }
}

void __109__PGPictureInPictureViewController_animateViewWithAnimationType_initialSpringVelocity_animations_completion___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
  objc_setAssociatedObject(v2, "PGPictureInPictureViewController.AnimationType", v3, 1);

  (*(a1[4] + 16))();
  v4 = a1[5];

  objc_setAssociatedObject(v4, "PGPictureInPictureViewController.AnimationType", 0, 1);
}

void __109__PGPictureInPictureViewController_animateViewWithAnimationType_initialSpringVelocity_animations_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  objc_setAssociatedObject(v2, "PGPictureInPictureViewController.InitialSpringVelocity", v3, 1);

  (*(*(a1 + 32) + 16))();
  v4 = *(a1 + 40);

  objc_setAssociatedObject(v4, "PGPictureInPictureViewController.InitialSpringVelocity", 0, 1);
}

- (void)updateHostedWindowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = objc_opt_class();
  v13 = objc_getAssociatedObject(v6, "PGPictureInPictureViewController.InitialSpringVelocity");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v13 doubleValue];
    v8 = v7;
    v9 = 2;
  }

  else
  {
    v10 = objc_opt_class();
    v11 = objc_getAssociatedObject(v10, "PGPictureInPictureViewController.AnimationType");

    v9 = v11 != 0;
    v8 = 0.0;
  }

  delegate = [(PGPictureInPictureViewController *)self delegate];
  [delegate pictureInPictureViewController:self updateHostedWindowSize:v9 animationType:width initialSpringVelocity:{height, v8}];
}

- (void)hostedWindowSizeChangeBegan
{
  delegate = [(PGPictureInPictureViewController *)self delegate];
  [delegate pictureInPictureViewControllerHostedWindowSizeChangeBegan:self];

  WeakRetained = objc_loadWeakRetained(&self->_pointerInteraction);
  [WeakRetained invalidate];
}

- (void)hostedWindowSizeChangeEnded
{
  delegate = [(PGPictureInPictureViewController *)self delegate];
  [delegate pictureInPictureViewControllerHostedWindowSizeChangeEnded:self];

  WeakRetained = objc_loadWeakRetained(&self->_pointerInteraction);
  [WeakRetained invalidate];
}

- (void)setStashProgress:(double)progress
{
  v26 = *MEMORY[0x1E69E9840];
  [(PGStashView *)self->_stashView blurProgress];
  v7 = v6 != 0.0 || progress >= 0.2;
  v8 = v6 == progress || !v7;
  if (!v8 && [(PGPictureInPictureViewController *)self isViewLoaded])
  {
    IsZero = BSFloatIsZero();
    if ((IsZero & 1) == 0 && [(PGStashView *)self->_stashView isHidden])
    {
      v10 = PGLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = NSStringFromSelector(a2);
        *buf = 138543874;
        v21 = v11;
        v22 = 1024;
        v23 = 625;
        v24 = 2114;
        v25 = @"not hidden";
        _os_log_impl(&dword_1BB282000, v10, OS_LOG_TYPE_DEFAULT, "[Layout] %{public}@:%d Stash view set %{public}@", buf, 0x1Cu);
      }

      [(PGStashView *)self->_stashView setHidden:0];
    }

    v12 = self->_inFlightStashProgressAnimationIdentifier + 1;
    self->_inFlightStashProgressAnimationIdentifier = v12;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __53__PGPictureInPictureViewController_setStashProgress___block_invoke;
    v18[3] = &unk_1E7F32A80;
    v18[4] = self;
    v19 = IsZero;
    *&v18[5] = progress;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __53__PGPictureInPictureViewController_setStashProgress___block_invoke_2;
    v16[3] = &unk_1E7F33118;
    v17 = IsZero;
    v16[4] = self;
    v16[5] = v12;
    v16[6] = a2;
    [MEMORY[0x1E69DD250] PG_animateUsingDefaultTimingWithOptions:4 animations:v18 completion:v16];
    v13 = 1.0 - progress;
    v8 = BSFloatIsZero() == 0;
    v14 = 0.5;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__PGPictureInPictureViewController_setStashProgress___block_invoke_145;
    v15[3] = &unk_1E7F32870;
    if (!v8)
    {
      v14 = 0.2;
    }

    v15[4] = self;
    *&v15[5] = v13;
    [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v15 options:0 animations:v14 completion:0.0];
  }
}

uint64_t __53__PGPictureInPictureViewController_setStashProgress___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1064);
  v3 = 1.0;
  if (*(a1 + 48))
  {
    v3 = 0.0;
  }

  [v2 setAlpha:v3];
  v4 = *(*(a1 + 32) + 1064);
  v5 = *(a1 + 40);

  return [v4 setBlurProgress:v5];
}

uint64_t __53__PGPictureInPictureViewController_setStashProgress___block_invoke_2(uint64_t result)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(result + 56) == 1)
  {
    v1 = result;
    if (*(result + 40) == *(*(result + 32) + 1128))
    {
      v2 = PGLogCommon();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = NSStringFromSelector(*(v1 + 48));
        v4 = 138543874;
        v5 = v3;
        v6 = 1024;
        v7 = 635;
        v8 = 2114;
        v9 = @"hidden";
        _os_log_impl(&dword_1BB282000, v2, OS_LOG_TYPE_DEFAULT, "[Layout] %{public}@:%d Stash view set %{public}@", &v4, 0x1Cu);
      }

      [*(*(v1 + 32) + 1064) setHidden:1];
      return [*(v1 + 32) _resetStashTabViewsIfPossible];
    }
  }

  return result;
}

- (void)setPrefersStashTabSuppressed:(BOOL)suppressed
{
  if (self->_prefersStashTabSuppressed != suppressed)
  {
    self->_prefersStashTabSuppressed = suppressed;
    [(PGPictureInPictureViewController *)self _updateStashTabStateWithBehavior:self->_stashTabSpringBehavior];
  }
}

- (BOOL)wantsStashTabSuppression
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(selfCopy) = [WeakRetained pictureInPictureViewControllerWantsStashTabSuppression:selfCopy];

  return selfCopy;
}

- (void)setStashTabHidden:(BOOL)hidden left:(BOOL)left withSpringBehavior:(id)behavior
{
  leftCopy = left;
  hiddenCopy = hidden;
  behaviorCopy = behavior;
  objc_storeStrong(&self->_stashTabSpringBehavior, behavior);
  if (__PAIR64__(self->_stashTabShownLeft, self->_stashTabHidden) != __PAIR64__(leftCopy, hiddenCopy))
  {
    self->_stashTabHidden = hiddenCopy;
    self->_stashTabShownLeft = leftCopy & ~hiddenCopy;
    [(PGPictureInPictureViewController *)self _updateStashTabStateWithBehavior:behaviorCopy];
  }
}

- (void)_updateStashTabStateWithBehavior:(id)behavior
{
  stashTabHidden = self->_stashTabHidden;
  if (self->_prefersStashTabSuppressed)
  {
    stashTabHidden |= self->_stashed;
  }

  v10 = v3;
  v11 = v4;
  v6 = self->_inFlightStashTabAnimationIdentifier + 1;
  self->_inFlightStashTabAnimationIdentifier = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__PGPictureInPictureViewController__updateStashTabStateWithBehavior___block_invoke;
  v8[3] = &unk_1E7F328F0;
  v8[4] = self;
  v9 = stashTabHidden & 1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PGPictureInPictureViewController__updateStashTabStateWithBehavior___block_invoke_2;
  v7[3] = &unk_1E7F33140;
  v7[4] = self;
  v7[5] = v6;
  [MEMORY[0x1E69DD250] _animateUsingSpringBehavior:behavior tracking:0 animations:v8 completion:v7];
}

void *__69__PGPictureInPictureViewController__updateStashTabStateWithBehavior___block_invoke_2(uint64_t a1)
{
  v2 = a1 + 32;
  result = *(a1 + 32);
  if (*(v2 + 8) == result[140])
  {
    return [result _resetStashTabViewsIfPossible];
  }

  return result;
}

- (void)loadView
{
  v3 = [PGHitTestExtendableView alloc];
  v4 = [(PGHitTestExtendableView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(PGPictureInPictureViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v35 = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = PGPictureInPictureViewController;
  [(PGPictureInPictureViewController *)&v33 viewDidLoad];
  v3 = [_PGPictureInPictureContainerView alloc];
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(_PGPictureInPictureContainerView *)v3 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  [(UIView *)v8 setVcForDebugging:self];
  containerView = self->_containerView;
  self->_containerView = v8;
  v10 = v8;

  view = [(PGPictureInPictureViewController *)self view];
  [view addSubview:self->_containerView];

  v12 = [[PGPictureInPictureViewControllerBackgroundView alloc] initWithFrame:v4, v5, v6, v7];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v12;

  [(UIView *)self->_containerView addSubview:self->_backgroundView];
  v14 = [[PGPictureInPictureViewControllerClippingView alloc] initWithFrame:v4, v5, v6, v7];
  contentClippingView = self->_contentClippingView;
  self->_contentClippingView = v14;

  [(UIView *)self->_containerView addSubview:self->_contentClippingView];
  v16 = [[PGLayerHostView alloc] initWithFrame:v4, v5, v6, v7];
  contentView = self->_contentView;
  self->_contentView = v16;

  [(PGLayerHostView *)self->_contentView setHostedWindowHostingHandle:self->_hostedWindowHostingHandle];
  [(PGLayerHostView *)self->_contentView setUserInteractionEnabled:0];
  [(PGPictureInPictureViewControllerClippingView *)self->_contentClippingView addSubview:self->_contentView];
  [(PGPictureInPictureViewControllerClippingView *)self->_contentClippingView setClipsToBounds:1];
  [(UIView *)self->_containerView addSubview:self->_controlsContainerView];
  v18 = [[PGPortalView alloc] initWithFrame:v4, v5, v6, v7];
  leftSideContentPortalView = self->_leftSideContentPortalView;
  self->_leftSideContentPortalView = v18;

  v20 = self->_leftSideContentPortalView;
  v30 = *(MEMORY[0x1E695EFD0] + 16);
  *&v32.a = *MEMORY[0x1E695EFD0];
  v31 = *&v32.a;
  *&v32.c = v30;
  *&v32.tx = *(MEMORY[0x1E695EFD0] + 32);
  v29 = *&v32.tx;
  CGAffineTransformScale(&v34, &v32, -1.0, 1.0);
  [(PGPortalView *)v20 setTransform:&v34];
  [(PGPortalView *)self->_leftSideContentPortalView setUserInteractionEnabled:0];
  [(PGPortalView *)self->_leftSideContentPortalView setHidden:1];
  [(UIView *)self->_containerView addSubview:self->_leftSideContentPortalView];
  v21 = [[PGPortalView alloc] initWithFrame:v4, v5, v6, v7];
  rightSideContentPortalView = self->_rightSideContentPortalView;
  self->_rightSideContentPortalView = v21;

  v23 = self->_rightSideContentPortalView;
  *&v32.a = v31;
  *&v32.c = v30;
  *&v32.tx = v29;
  CGAffineTransformScale(&v34, &v32, -1.0, 1.0);
  [(PGPortalView *)v23 setTransform:&v34];
  [(PGPortalView *)self->_rightSideContentPortalView setHidden:1];
  [(PGPortalView *)self->_leftSideContentPortalView setUserInteractionEnabled:0];
  [(UIView *)self->_containerView addSubview:self->_rightSideContentPortalView];
  v24 = [PGStashView alloc];
  [(UIView *)self->_containerView bounds];
  v25 = [(PGStashView *)v24 initWithFrame:?];
  stashView = self->_stashView;
  self->_stashView = v25;

  [(PGStashView *)self->_stashView setHidden:1];
  [(PGStashView *)self->_stashView setUserInteractionEnabled:0];
  [(UIView *)self->_containerView addSubview:self->_stashView];

  [(PGPictureInPictureViewController *)self _addMaskViewSubviewIfNeeded];
  v27 = PGLogCommon();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    delegate = [(PGPictureInPictureViewController *)self delegate];
    LODWORD(v34.a) = 136315650;
    *(&v34.a + 4) = "[PGPictureInPictureViewController viewDidLoad]";
    WORD2(v34.b) = 2048;
    *(&v34.b + 6) = self;
    HIWORD(v34.c) = 2114;
    *&v34.d = delegate;
    _os_log_impl(&dword_1BB282000, v27, OS_LOG_TYPE_DEFAULT, "%s %p %{public}@", &v34, 0x20u);
  }
}

- (void)viewWillLayoutSubviews
{
  v38.receiver = self;
  v38.super_class = PGPictureInPictureViewController;
  [(PGPictureInPictureViewController *)&v38 viewWillLayoutSubviews];
  view = [(PGPictureInPictureViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_containerView setFrame:v5, v7, v9, v11];
  [(PGPictureInPictureViewControllerClippingView *)self->_contentClippingView setFrame:v5, v7, v9, v11];
  [(UIView *)self->_shadowView setFrame:v5, v7, v9, v11];
  [(UIView *)self->_containerView bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(PGPictureInPictureViewControllerClippingView *)self->_contentClippingView frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  if (self->_interactivelyResizing)
  {
    [(PGLayerHostView *)self->_contentView bounds];
    v29 = v17 / v28;
    memset(&v37, 0, sizeof(v37));
    v30 = *(MEMORY[0x1E695EFD0] + 16);
    *&v36.a = *MEMORY[0x1E695EFD0];
    *&v36.c = v30;
    *&v36.tx = *(MEMORY[0x1E695EFD0] + 32);
    CGAffineTransformScale(&v37, &v36, v29, v29);
    contentView = self->_contentView;
    v36 = v37;
    [(PGLayerHostView *)contentView setTransform:&v36];
    v32 = self->_contentView;
    [(PGPictureInPictureViewControllerClippingView *)self->_contentClippingView bounds];
    UIRectGetCenter();
    [(PGLayerHostView *)v32 setCenter:?];
  }

  else
  {
    v33 = self->_contentView;
    v34 = *(MEMORY[0x1E695EFD0] + 16);
    *&v37.a = *MEMORY[0x1E695EFD0];
    *&v37.c = v34;
    *&v37.tx = *(MEMORY[0x1E695EFD0] + 32);
    [(PGLayerHostView *)v33 setTransform:&v37];
    [(PGLayerHostView *)self->_contentView setFrame:v13, v15, v17, v19];
  }

  [(UIView *)self->_backgroundView PG_setAllowsEdgeAntialiasing:self->_interactivelyResizing];
  [(UIView *)self->_contentClippingView PG_setAllowsEdgeAntialiasing:self->_interactivelyResizing];
  [(UIView *)self->_controlsContainerView PG_setAllowsEdgeAntialiasing:self->_interactivelyResizing];
  [(UIView *)self->_contentView PG_setAllowsEdgeAntialiasing:self->_interactivelyResizing];
  backgroundView = self->_backgroundView;
  v39.origin.x = v21;
  v39.origin.y = v23;
  v39.size.width = v25;
  v39.size.height = v27;
  v40 = CGRectInset(v39, 1.0, 1.0);
  [(PGPictureInPictureViewControllerBackgroundView *)backgroundView setFrame:v40.origin.x, v40.origin.y, v40.size.width, v40.size.height];
  [(PGControlsContainerView *)self->_controlsContainerView setFrame:v21, v23, v25, v27];
  [(PGPictureInPictureViewControllerBackgroundView *)self->_backgroundView layoutIfNeeded];
  [(PGLayerHostView *)self->_contentView setNeedsLayout];
  [(PGLayerHostView *)self->_contentView layoutIfNeeded];
  [(PGControlsContainerView *)self->_controlsContainerView layoutIfNeeded];
  [(PGPictureInPictureViewController *)self _layoutStashTabViewsIfNeeded];
}

- (void)_layoutStashTabViewsIfNeeded
{
  [(UIView *)self->_containerView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  WeakRetained = objc_loadWeakRetained(&self->_stashMaskView);
  if (WeakRetained && self->_tabShadowView)
  {
    v23 = WeakRetained;
    v12 = objc_loadWeakRetained(&self->_stashMaskView);
    [v12 bounds];
    v30.origin.x = v4;
    v30.origin.y = v6;
    v30.size.width = v8;
    v30.size.height = v10;
    v13 = CGRectEqualToRect(v25, v30);

    if (!v13)
    {
      v14 = objc_loadWeakRetained(&self->_stashMaskView);
      [v14 setFrame:{v4, v6, v8, v10}];

      v15 = objc_loadWeakRetained(&self->_stashMaskView);
      [v15 layoutIfNeeded];

      tabShadowView = self->_tabShadowView;
      v17 = objc_loadWeakRetained(&self->_stashMaskView);
      [v17 tabViewBounds];
      [(UIView *)tabShadowView setBounds:?];

      v18 = self->_tabShadowView;
      v19 = objc_loadWeakRetained(&self->_stashMaskView);
      [v19 position];
      [(UIView *)v18 setPosition:?];

      [(UIView *)self->_tabShadowView layoutIfNeeded];
      leftSideContentPortalView = self->_leftSideContentPortalView;
      v26.origin.x = v4;
      v26.origin.y = v6;
      v26.size.width = v8;
      v26.size.height = v10;
      v27 = CGRectOffset(v26, -(v8 + -1.0), 0.0);
      [(PGPortalView *)leftSideContentPortalView setFrame:v27.origin.x, v27.origin.y, v27.size.width, v27.size.height];
      rightSideContentPortalView = self->_rightSideContentPortalView;
      v28.origin.x = v4;
      v28.origin.y = v6;
      v28.size.width = v8;
      v28.size.height = v10;
      v29 = CGRectOffset(v28, v8 + -1.0, 0.0);
      [(PGPortalView *)rightSideContentPortalView setFrame:v29.origin.x, v29.origin.y, v29.size.width, v29.size.height];
      [(PGPortalView *)self->_leftSideContentPortalView layoutIfNeeded];
      [(PGPortalView *)self->_rightSideContentPortalView layoutIfNeeded];
      [(PGStashView *)self->_stashView setFrame:v4, v6, v8, v10];
      stashView = self->_stashView;

      [(PGStashView *)stashView layoutIfNeeded];
    }
  }

  else
  {
  }
}

- (void)_setStashedTabHidden:(BOOL)hidden left:(BOOL)left
{
  leftCopy = left;
  hiddenCopy = hidden;
  if (!hidden)
  {
    [(UIView *)self->_tabShadowView setAlpha:0.0];
    [(UIView *)self->_tabShadowView setHidden:0];
    [(PGPictureInPictureViewController *)self _setPortalActive:1 left:leftCopy];
    [(PGPictureInPictureViewController *)self _setStashMaskActive:1];
  }

  [(PGControlsContainerView *)self->_controlsContainerView setControlsContainerHidden:!self->_isShowingChrome animated:1];
  WeakRetained = objc_loadWeakRetained(&self->_stashMaskView);
  [WeakRetained setTabHidden:hiddenCopy left:leftCopy];

  stashView = self->_stashView;

  [(PGStashView *)stashView setChevronHidden:hiddenCopy left:leftCopy];
}

- (void)_setPortalActive:(BOOL)active left:(BOOL)left
{
  leftCopy = left;
  if (self->_portalsWereActive != active || self->_portalsWereActiveLeft != left)
  {
    self->_portalsWereActive = active;
    self->_portalsWereActiveLeft = left;
    leftSideContentPortalView = self->_leftSideContentPortalView;
    v7 = !active;
    v8 = active && left;
    if (active && left)
    {
      contentView = self->_contentView;
    }

    else
    {
      contentView = 0;
    }

    [(PGPortalView *)leftSideContentPortalView setSourceView:contentView];
    v10 = v7 | leftCopy;
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = self->_contentView;
    }

    [(PGPortalView *)self->_rightSideContentPortalView setSourceView:v11];
    [(PGPortalView *)self->_leftSideContentPortalView setHidden:!v8];
    rightSideContentPortalView = self->_rightSideContentPortalView;

    [(PGPortalView *)rightSideContentPortalView setHidden:v10];
  }
}

- (void)_setStashMaskActive:(BOOL)active
{
  activeCopy = active;
  if (active)
  {
    maskView = [(UIView *)self->_containerView maskView];

    if (maskView)
    {
      goto LABEL_6;
    }

    WeakRetained = objc_loadWeakRetained(&self->_stashMaskView);
    [WeakRetained setHidden:0];

    containerView = self->_containerView;
    v8 = objc_loadWeakRetained(&self->_stashMaskView);
    [(UIView *)containerView setMaskView:v8];

    view = [(PGPictureInPictureViewController *)self view];
    v10 = objc_loadWeakRetained(&self->_stashMaskView);
    [view setHitTestExtenderView:v10];
  }

  else
  {
    objc_storeWeak(&self->_stashMaskView, 0);
    [(UIView *)self->_containerView setMaskView:0];
    [(PGPictureInPictureViewController *)self _addMaskViewSubviewIfNeeded];
    view = [(PGPictureInPictureViewController *)self view];
    [view setHitTestExtenderView:0];
  }

LABEL_6:

  [(PGPictureInPictureViewController *)self _updateContentCornerRadiusForMaskActive:activeCopy];
}

- (void)_updateContentCornerRadiusForMaskActive:(BOOL)active
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__PGPictureInPictureViewController__updateContentCornerRadiusForMaskActive___block_invoke;
  v3[3] = &unk_1E7F328F0;
  activeCopy = active;
  v3[4] = self;
  [MEMORY[0x1E69DD250] PG_performWithoutRetargetingAnimation:v3];
}

uint64_t __76__PGPictureInPictureViewController__updateContentCornerRadiusForMaskActive___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) != 1 && [*(*(a1 + 32) + 1024) ignoreCornerRadiusUpdates])
  {
    [*(*(a1 + 32) + 1024) setIgnoreCornerRadiusUpdates:0];
  }

  [*(*(a1 + 32) + 1024) _setContinuousCornerRadius:0.0];
  [*(*(a1 + 32) + 1024) setIgnoreCornerRadiusUpdates:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _updateCornerRadii];
}

- (void)_resetStashTabViewsIfPossible
{
  if (self->_stashTabHidden)
  {
    maskView = [(UIView *)self->_containerView maskView];

    if (maskView)
    {
      if (self->_interactivelyResizing || ![(PGStashView *)self->_stashView isHidden])
      {

        [(PGPictureInPictureViewController *)self _updateContentCornerRadiusForMaskActive:0];
      }

      else
      {
        v4 = PGLogCommon();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "[Layout] Removing Stash Tab Views", buf, 2u);
        }

        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = __65__PGPictureInPictureViewController__resetStashTabViewsIfPossible__block_invoke;
        v5[3] = &unk_1E7F32530;
        v5[4] = self;
        [MEMORY[0x1E69DD250] PG_performWithoutRetargetingAnimation:v5];
      }
    }
  }
}

uint64_t __65__PGPictureInPictureViewController__resetStashTabViewsIfPossible__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1056) setAlpha:0.0];
  [*(*(a1 + 32) + 1056) setHidden:1];
  [*(a1 + 32) _setPortalActive:0 left:0];
  [*(a1 + 32) _setStashMaskActive:0];
  [*(*(a1 + 32) + 1064) resetChevronState];
  [*(*(a1 + 32) + 1056) layoutIfNeeded];
  v2 = *(*(a1 + 32) + 1064);

  return [v2 layoutIfNeeded];
}

- (CGSize)preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setPreferredContentSize:(CGSize)size
{
  if (self->_preferredContentSize.width != size.width || self->_preferredContentSize.height != size.height)
  {
    self->_preferredContentSize = size;
    WeakRetained = objc_loadWeakRetained(&self->_contentContainer);
    [WeakRetained preferredContentSizeDidChangeForPictureInPictureViewController];
  }
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  if (![(PGPictureInPictureViewController *)self shouldAutorotate])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = PGPictureInPictureViewController;
  return [(PGPictureInPictureViewController *)&v4 interfaceOrientation];
}

- (void)prepareStartAnimationWithInitialInterfaceOrientation:(int64_t)orientation initialLayerFrame:(CGRect)frame completionHandler:(id)handler
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v23 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (([(PGPictureInPictureViewController *)self isViewLoaded]& 1) == 0)
  {
    v12 = PGLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureViewController showChrome:animated:];
    }
  }

  v13 = PGLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = _PGLogMethodProem(self, 1);
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v15 = NSStringFromCGRect(v24);
    LODWORD(v22.a) = 138543618;
    *(&v22.a + 4) = v14;
    WORD2(v22.b) = 2112;
    *(&v22.b + 6) = v15;
    _os_log_impl(&dword_1BB282000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Preparing animation with initial layer frame: %@", &v22, 0x16u);
  }

  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  IsNull = CGRectIsNull(v25);
  self->_initialLayerFrameIsNull = IsNull;
  WeakRetained = objc_loadWeakRetained(&self->_contentContainer);
  v18 = WeakRetained;
  if (IsNull)
  {
    v19 = objc_opt_respondsToSelector();

    if ((v19 & 1) == 0)
    {
      view = [(PGPictureInPictureViewController *)self view];
      [view setAlpha:0.0];

      view2 = [(PGPictureInPictureViewController *)self view];
      CGAffineTransformMakeScale(&v22, 0.100000001, 0.100000001);
      [view2 setTransform:&v22];
    }

    handlerCopy[2](handlerCopy);
  }

  else
  {
    [WeakRetained prepareStartAnimationWithInitialInterfaceOrientation:orientation initialLayerFrame:handlerCopy completionHandler:{x, y, width, height}];
  }
}

- (void)performStartAnimated:(BOOL)animated withCompletionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  if (([(PGPictureInPictureViewController *)self isViewLoaded]& 1) == 0)
  {
    v7 = PGLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureViewController showChrome:animated:];
    }
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __79__PGPictureInPictureViewController_performStartAnimated_withCompletionHandler___block_invoke;
  v28[3] = &unk_1E7F32D98;
  v28[4] = self;
  v8 = handlerCopy;
  v29 = v8;
  v9 = MEMORY[0x1BFB0C680](v28);
  [(PGPictureInPictureViewController *)self acquireInterfaceOrientationLock];
  [(PGPictureInPictureViewController *)self showChrome:0 animated:0];
  if (animatedCopy)
  {
    [(PGPictureInPictureViewController *)self _performStartAnimationWithCompletionHandler:v9];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_contentContainer);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_contentContainer);
      [v12 performStartInIsolationWithCompletionHandler:v9];
    }

    else
    {
      v9[2](v9);
    }
  }

  if (self->_analyticsSessionUUID)
  {
    v13 = PGLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureViewController performStartAnimated:v13 withCompletionHandler:?];
    }
  }

  contentType = [(PGPictureInPictureViewController *)self contentType];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  analyticsSessionUUID = self->_analyticsSessionUUID;
  self->_analyticsSessionUUID = uUID;

  v17 = objc_loadWeakRetained(&self->_application);
  bundleIdentifier = [v17 bundleIdentifier];
  v19 = bundleIdentifier;
  v20 = @"com.apple.MissingBundleIdentifier";
  if (bundleIdentifier)
  {
    v20 = bundleIdentifier;
  }

  v21 = v20;

  v22 = objc_loadWeakRetained(&self->_analyticsDelegate);
  [v22 pictureInPictureDidCreateAnalyticsSessionWithUUID:self->_analyticsSessionUUID bundleIdentifier:v21 contentType:contentType];

  v23 = objc_loadWeakRetained(&self->_analyticsDelegate);
  [v23 pictureInPictureDidActivateAnalyticsSessionWithUUID:self->_analyticsSessionUUID analyticsSourceUUID:self->_analyticsSourceUUID automatically:self->_startedAutomatically];

  if ([(PGPictureInPictureViewController *)self contentType]== 6)
  {
    objc_initWeak(&location, self);
    v24 = dispatch_time(0, 5000000000);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __79__PGPictureInPictureViewController_performStartAnimated_withCompletionHandler___block_invoke_166;
    v25[3] = &unk_1E7F33190;
    objc_copyWeak(&v26, &location);
    dispatch_after(v24, MEMORY[0x1E69E96A0], v25);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

void __79__PGPictureInPictureViewController_performStartAnimated_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2[1217])
  {
    if (v3)
    {
      [*(a1 + 32) showChrome:1 animated:0];
      [*(a1 + 32) relinquishInterfaceOrientationLock];
      [*(a1 + 32) _insertContentContainerViewIfNeeded];
      v4 = *(*(a1 + 40) + 16);

      v4();
      return;
    }
  }

  else if (v3)
  {
    objc_initWeak(&location, v2);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __79__PGPictureInPictureViewController_performStartAnimated_withCompletionHandler___block_invoke_2;
    v9[3] = &unk_1E7F33168;
    objc_copyWeak(&v11, &location);
    v10 = *(a1 + 40);
    v5 = MEMORY[0x1BFB0C680](v9);
    v6 = *(a1 + 32);
    v7 = *(v6 + 1296);
    *(v6 + 1296) = v5;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    return;
  }

  v8 = *(a1 + 32);

  [v8 _insertContentContainerViewIfNeeded];
}

void __79__PGPictureInPictureViewController_performStartAnimated_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained _updateCornerRadii];
    [WeakRetained showChrome:1 animated:1];
    [WeakRetained relinquishInterfaceOrientationLock];
    [WeakRetained _insertContentContainerViewIfNeeded];
  }

  (*(*(a1 + 32) + 16))();
}

void __79__PGPictureInPictureViewController_performStartAnimated_withCompletionHandler___block_invoke_166(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained contentType] == 6 && (objc_msgSend(WeakRetained, "stashed") & 1) == 0)
  {
    v1 = [WeakRetained contentContainer];
    v2 = objc_opt_respondsToSelector();

    if (v2)
    {
      v3 = [WeakRetained contentContainer];
      [v3 pictureInPictureClientDidRequestStashing];
    }
  }
}

- (void)_performStartAnimationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__PGPictureInPictureViewController__performStartAnimationWithCompletionHandler___block_invoke;
  v17[3] = &unk_1E7F32D98;
  v17[4] = self;
  v5 = handlerCopy;
  v18 = v5;
  v6 = MEMORY[0x1BFB0C680](v17);
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] beginIgnoringInteractionEvents];

  [(PGPictureInPictureViewController *)self showChrome:1 animated:1];
  initialLayerFrameIsNull = self->_initialLayerFrameIsNull;
  WeakRetained = objc_loadWeakRetained(&self->_contentContainer);
  v10 = WeakRetained;
  if (initialLayerFrameIsNull)
  {
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_contentContainer);
      [v12 performStartInIsolationWithCompletionHandler:v6];
    }

    else
    {
      v13 = MEMORY[0x1E69DD250];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __80__PGPictureInPictureViewController__performStartAnimationWithCompletionHandler___block_invoke_2;
      v16[3] = &unk_1E7F32530;
      v16[4] = self;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __80__PGPictureInPictureViewController__performStartAnimationWithCompletionHandler___block_invoke_3;
      v14[3] = &unk_1E7F331B8;
      v15 = v6;
      [v13 PG_animateUsingDefaultTimingWithAnimations:v16 completion:v14];
    }
  }

  else
  {
    [WeakRetained performStartAnimationWithCompletionHandler:v6];
  }
}

uint64_t __80__PGPictureInPictureViewController__performStartAnimationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1217) == 1)
  {
    [*(v2 + 1032) setControlsContainerHidden:0 animated:1];
  }

  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  [v3 endIgnoringInteractionEvents];

  [*(a1 + 32) relinquishInterfaceOrientationLock];
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void __80__PGPictureInPictureViewController__performStartAnimationWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) view];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v4;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v3 setTransform:v5];
}

- (void)performStopAnimated:(BOOL)animated withFinalInterfaceOrientation:(int64_t)orientation finalLayerFrame:(CGRect)frame completionHandler:(id)handler
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  animatedCopy = animated;
  handlerCopy = handler;
  if (([(PGPictureInPictureViewController *)self isViewLoaded]& 1) == 0)
  {
    v14 = PGLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureViewController showChrome:animated:];
    }
  }

  if (animatedCopy)
  {
    [(PGPictureInPictureViewController *)self _performStopAnimationWithFinalInterfaceOrientation:orientation finalLayerFrame:handlerCopy completionHandler:x, y, width, height];
  }

  else
  {
    [(PGControlsContainerView *)self->_controlsContainerView setControlsContainerHidden:1 animated:0];
    handlerCopy[2](handlerCopy);
  }
}

- (void)_performStopAnimationWithFinalInterfaceOrientation:(int64_t)orientation finalLayerFrame:(CGRect)frame completionHandler:(id)handler
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  handlerCopy = handler;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __121__PGPictureInPictureViewController__performStopAnimationWithFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke;
  v24[3] = &unk_1E7F32530;
  v24[4] = self;
  v12 = MEMORY[0x1BFB0C680](v24);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __121__PGPictureInPictureViewController__performStopAnimationWithFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_2;
  v22[3] = &unk_1E7F32D98;
  v22[4] = self;
  v13 = handlerCopy;
  v23 = v13;
  v14 = MEMORY[0x1BFB0C680](v22);
  v12[2](v12);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  if (CGRectIsNull(v25))
  {
    WeakRetained = objc_loadWeakRetained(&self->_contentContainer);
    v16 = objc_opt_respondsToSelector();

    if ((v16 & 1) == 0)
    {
      v18 = MEMORY[0x1E69DD250];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __121__PGPictureInPictureViewController__performStopAnimationWithFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_3;
      v21[3] = &unk_1E7F32530;
      v21[4] = self;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __121__PGPictureInPictureViewController__performStopAnimationWithFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_4;
      v19[3] = &unk_1E7F331B8;
      v20 = v14;
      [v18 PG_animateUsingDefaultTimingWithAnimations:v21 completion:v19];

      goto LABEL_7;
    }

    v17 = objc_loadWeakRetained(&self->_contentContainer);
    [v17 performStopInIsolationWithCompletionHandler:v14];
  }

  else
  {
    [(PGPictureInPictureViewController *)self showChrome:0 animated:1];
    v17 = objc_loadWeakRetained(&self->_contentContainer);
    [v17 performStopAnimationWithFinalInterfaceOrientation:orientation finalLayerFrame:v14 completionHandler:{x, y, width, height}];
  }

LABEL_7:
}

uint64_t __121__PGPictureInPictureViewController__performStopAnimationWithFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 beginIgnoringInteractionEvents];

  v3 = *(*(a1 + 32) + 1032);

  return [v3 setControlsContainerHidden:1 animated:0];
}

uint64_t __121__PGPictureInPictureViewController__performStopAnimationWithFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 endIgnoringInteractionEvents];

  [*(a1 + 32) relinquishInterfaceOrientationLock];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __121__PGPictureInPictureViewController__performStopAnimationWithFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) view];
  CGAffineTransformMakeScale(&v4, 0.100000001, 0.100000001);
  [v3 setTransform:&v4];
}

- (void)performSuspendAnimationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (([(PGPictureInPictureViewController *)self isViewLoaded]& 1) == 0)
  {
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureViewController showChrome:animated:];
    }
  }

  self->_isSuspended = 1;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] beginIgnoringInteractionEvents];

  [(PGControlsContainerView *)self->_controlsContainerView setControlsContainerHidden:1 animated:1];
  v7 = MEMORY[0x1E69DD250];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __81__PGPictureInPictureViewController_performSuspendAnimationWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E7F32530;
  v11[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__PGPictureInPictureViewController_performSuspendAnimationWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E7F32EB0;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [v7 PG_animateUsingDefaultTimingWithAnimations:v11 completion:v9];
}

void __81__PGPictureInPictureViewController_performSuspendAnimationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) view];
  CGAffineTransformMakeScale(&v4, 0.100000001, 0.100000001);
  [v3 setTransform:&v4];
}

uint64_t __81__PGPictureInPictureViewController_performSuspendAnimationWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 endIgnoringInteractionEvents];

  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);

  return [v3 _updatePrefersIdleTimerDisabled];
}

- (void)performResumeAnimationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (([(PGPictureInPictureViewController *)self isViewLoaded]& 1) == 0)
  {
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureViewController showChrome:animated:];
    }
  }

  self->_isSuspended = 0;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] beginIgnoringInteractionEvents];

  v7 = MEMORY[0x1E69DD250];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__PGPictureInPictureViewController_performResumeAnimationWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E7F32530;
  v11[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__PGPictureInPictureViewController_performResumeAnimationWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E7F331E0;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [v7 PG_animateUsingDefaultTimingWithAnimations:v11 completion:v9];
}

void __80__PGPictureInPictureViewController_performResumeAnimationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) view];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v4;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v3 setTransform:v5];
}

uint64_t __80__PGPictureInPictureViewController_performResumeAnimationWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1217) == 1)
  {
    [*(v2 + 1032) setControlsContainerHidden:0 animated:1];
  }

  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  [v3 endIgnoringInteractionEvents];

  (*(*(a1 + 40) + 16))();
  v4 = *(a1 + 32);

  return [v4 _updatePrefersIdleTimerDisabled];
}

- (void)performRotateAnimationWithRotation:(int64_t)rotation completionHandler:(id)handler
{
  handlerCopy = handler;
  if (([(PGPictureInPictureViewController *)self isViewLoaded]& 1) == 0)
  {
    v7 = PGLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureViewController showChrome:animated:];
    }
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] beginIgnoringInteractionEvents];

  [(PGControlsContainerView *)self->_controlsContainerView setControlsContainerHidden:1 animated:0];
  if ((*&self->_contentContainerRespondsTo & 0x20) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_contentContainer);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __89__PGPictureInPictureViewController_performRotateAnimationWithRotation_completionHandler___block_invoke;
    v10[3] = &unk_1E7F32D98;
    v10[4] = self;
    v11 = handlerCopy;
    [WeakRetained performRotateAnimationWithRotation:rotation completionHandler:v10];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

uint64_t __89__PGPictureInPictureViewController_performRotateAnimationWithRotation_completionHandler___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1032) setControlsContainerHidden:0 animated:0];
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 endIgnoringInteractionEvents];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)prepareStopAnimationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (([(PGPictureInPictureViewController *)self isViewLoaded]& 1) == 0)
  {
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureViewController showChrome:animated:];
    }
  }

  [(PGPictureInPictureViewController *)self acquireInterfaceOrientationLock];
  if (*&self->_contentContainerRespondsTo)
  {
    WeakRetained = objc_loadWeakRetained(&self->_contentContainer);
    [WeakRetained prepareStopAnimationWithCompletionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)acquireInterfaceOrientationLock
{
  if (([(PGPictureInPictureViewController *)self isViewLoaded]& 1) == 0)
  {
    v3 = PGLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureViewController showChrome:animated:];
    }
  }

  if ((*&self->_contentContainerRespondsTo & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_contentContainer);
    [WeakRetained acquireInterfaceOrientationLock];
  }
}

- (void)relinquishInterfaceOrientationLock
{
  if (([(PGPictureInPictureViewController *)self isViewLoaded]& 1) == 0)
  {
    v3 = PGLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureViewController showChrome:animated:];
    }
  }

  if ((*&self->_contentContainerRespondsTo & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_contentContainer);
    [WeakRetained relinquishInterfaceOrientationLock];
  }
}

- (void)setInterrupted:(BOOL)interrupted
{
  interruptedCopy = interrupted;
  isInterrupted = [(PGPictureInPictureViewController *)self isInterrupted];
  [(PGControlsViewModel *)self->_viewModel setInterrupted:interruptedCopy];
  [(PGPictureInPictureViewController *)self _updatePrefersIdleTimerDisabled];
  if (isInterrupted != interruptedCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_tetheringViewController);
    [WeakRetained flashControls];

    if (!interruptedCopy)
    {
      if ([(PGPictureInPictureViewController *)self isViewLoaded])
      {
        view = [(PGPictureInPictureViewController *)self view];
        [view alpha];
        v9 = v8;

        if (v9 == 0.0)
        {
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 3221225472;
          v10[2] = __51__PGPictureInPictureViewController_setInterrupted___block_invoke;
          v10[3] = &unk_1E7F32530;
          v10[4] = self;
          [MEMORY[0x1E69DD250] PG_animateUsingDefaultTimingWithAnimations:v10 completion:0];
        }
      }
    }
  }
}

void __51__PGPictureInPictureViewController_setInterrupted___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

- (void)setContentViewHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v11 = *MEMORY[0x1E69E9840];
  if ([(PGLayerHostView *)self->_contentView isHidden]!= hidden)
  {
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = _PGLogMethodProem(self, 1);
      v7 = 138412546;
      v8 = v6;
      v9 = 1024;
      v10 = hiddenCopy;
      _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%@ %{BOOL}u", &v7, 0x12u);
    }

    [(PGLayerHostView *)self->_contentView setHidden:hiddenCopy];
  }
}

- (void)setMenuItems:(id)items
{
  itemsCopy = items;
  menuItems = self->_menuItems;
  v12 = itemsCopy;
  if (menuItems != itemsCopy || (v6 = [(NSArray *)menuItems isEqualToArray:itemsCopy], itemsCopy = v12, (v6 & 1) == 0))
  {
    v7 = [(NSArray *)itemsCopy copy];
    v8 = self->_menuItems;
    self->_menuItems = v7;

    WeakRetained = objc_loadWeakRetained(&self->_contentContainer);
    v10 = objc_opt_respondsToSelector();

    itemsCopy = v12;
    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_contentContainer);
      [v11 updateMenuItems];

      itemsCopy = v12;
    }
  }

  MEMORY[0x1EEE66BB8](v6, itemsCopy);
}

- (void)_handleTapWhileStashedGestureRecognizer:(id)recognizer
{
  if ((*&self->_contentContainerRespondsTo & 8) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_contentContainer);
    [WeakRetained handleTapWhileStashedGesture];
  }
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  if (self->_shouldDisablePointerInteraction)
  {
    return 0;
  }

  else
  {
    return region;
  }
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = [(PGPictureInPictureViewController *)self view:interaction];
  _isInAWindow = [v5 _isInAWindow];

  if (_isInAWindow)
  {
    v7 = objc_alloc(MEMORY[0x1E69DD070]);
    view = [(PGPictureInPictureViewController *)self view];
    v9 = [v7 initWithView:view];

    tetheringViewController = [(PGPictureInPictureViewController *)self tetheringViewController];

    if (tetheringViewController)
    {
      v11 = [MEMORY[0x1E69DCDB8] effectWithPreview:v9];
    }

    else
    {
      v11 = [MEMORY[0x1E69DCDA8] effectWithPreview:v9];
      [v11 setPrefersShadow:1];
      [v11 setPreferredTintMode:0];
    }

    v13 = [MEMORY[0x1E69DCDD0] styleWithEffect:v11 shape:0];
  }

  else
  {
    v12 = PGLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PGPictureInPictureViewController pointerInteraction:v12 styleForRegion:?];
    }

    v13 = 0;
  }

  return v13;
}

- (void)handleCommand:(id)command
{
  commandCopy = command;
  systemAction = [commandCopy systemAction];
  if (systemAction <= 2)
  {
    if (systemAction >= 3)
    {
      goto LABEL_12;
    }

    WeakRetained = [(PGPictureInPictureViewController *)self delegate];
    [WeakRetained pictureInPictureViewController:self didReceiveCommand:commandCopy];
    goto LABEL_4;
  }

  switch(systemAction)
  {
    case 3:
      delegate = [(PGPictureInPictureViewController *)self delegate];
      [delegate pictureInPictureViewController:self didReceiveCommand:commandCopy];

      if ([(PGPictureInPictureViewController *)self isInterrupted])
      {
        [(PGLayerHostView *)self->_contentView setHidden:1];
      }

      break;
    case 5:
      if ((*&self->_contentContainerRespondsTo & 0x10) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_contentContainer);
        [WeakRetained handleDoubleTapGesture];
LABEL_4:
      }

      break;
    case 4:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PGPictureInPictureViewController.m" lineNumber:1256 description:@"Toggle visibility action should not be sent to PictureInPictureViewController."];

      break;
  }

LABEL_12:
  [(PGPictureInPictureViewController *)self _updatePrefersIdleTimerDisabled];
}

- (void)updatePlaybackStateWithDiff:(id)diff
{
  v27 = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    playbackState = [(PGControlsViewModel *)self->_viewModel playbackState];
    v21 = 136315650;
    v22 = "[PGPictureInPictureViewController updatePlaybackStateWithDiff:]";
    v23 = 2048;
    selfCopy = self;
    v25 = 2114;
    v26 = playbackState;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %p REMOTE: %{public}@", &v21, 0x20u);
  }

  playbackState2 = [(PGControlsViewModel *)self->_viewModel playbackState];
  isRoutingVideoToHostedWindow = [playbackState2 isRoutingVideoToHostedWindow];

  [(PGControlsViewModel *)self->_viewModel updatePlaybackStateWithDiff:diffCopy];
  [(PGPictureInPictureViewController *)self _updatePrefersIdleTimerDisabled];
  playbackState3 = [(PGControlsViewModel *)self->_viewModel playbackState];
  isRoutingVideoToHostedWindow2 = [playbackState3 isRoutingVideoToHostedWindow];

  if (isRoutingVideoToHostedWindow != isRoutingVideoToHostedWindow2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_contentContainer);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_contentContainer);
      [v13 playbackSourceDidUpdateIsRoutingVideoToHostedWindow:isRoutingVideoToHostedWindow2];
    }
  }

  [(PGPictureInPictureViewController *)self _updatePointerEffect];
  prefersHiddenFromClonedDisplay = self->_prefersHiddenFromClonedDisplay;
  playbackState4 = [(PGControlsViewModel *)self->_viewModel playbackState];
  disablesLayerCloning = [playbackState4 disablesLayerCloning];

  if (prefersHiddenFromClonedDisplay != disablesLayerCloning)
  {
    playbackState5 = [(PGControlsViewModel *)self->_viewModel playbackState];
    self->_prefersHiddenFromClonedDisplay = [playbackState5 disablesLayerCloning];

    v18 = objc_loadWeakRetained(&self->_contentContainer);
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = objc_loadWeakRetained(&self->_contentContainer);
      [v20 notePictureInPictureViewControllerPrefersHiddenFromClonedDisplayDidChange];
    }
  }
}

- (void)_loadShadowViewIfNeeded
{
  if ([(PGPictureInPictureViewController *)self isViewLoaded]&& !self->_shadowView)
  {
    view = [(PGPictureInPictureViewController *)self view];
    _newShadowView = [(PGPictureInPictureViewController *)self _newShadowView];
    shadowView = self->_shadowView;
    self->_shadowView = _newShadowView;

    v5 = self->_shadowView;
    [view bounds];
    [(UIView *)v5 setFrame:?];
    [view insertSubview:self->_shadowView atIndex:0];
  }
}

- (id)_newShadowView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v4 setUserInteractionEnabled:0];
  layer = [v4 layer];
  [layer setAllowsEdgeAntialiasing:1];

  layer2 = [v4 layer];
  [layer2 setShadowPathIsBounds:1];

  [(PGPictureInPictureViewController *)self _applyShadowSettingsToView:v4];
  return v4;
}

- (void)_applyShadowSettingsToView:(id)view
{
  viewCopy = view;
  layer = [viewCopy layer];
  [(PGMobilePIPSettings *)self->_settings shadowOffsetX];
  v6 = v5;
  [(PGMobilePIPSettings *)self->_settings shadowOffsetY];
  [layer setShadowOffset:{v6, v7}];

  layer2 = [viewCopy layer];
  [(PGMobilePIPSettings *)self->_settings shadowOpacity];
  *&v9 = v9;
  [layer2 setShadowOpacity:v9];

  layer3 = [viewCopy layer];
  [(PGMobilePIPSettings *)self->_settings shadowRadius];
  [layer3 setShadowRadius:?];

  [(PGMobilePIPSettings *)self->_settings shadowContinuousCornerRadius];
  [viewCopy _setContinuousCornerRadius:?];
}

- (void)_updatePointerEffect
{
  values = [(PGControlsViewModel *)self->_viewModel values];
  includesRestoreButton = [values includesRestoreButton];

  WeakRetained = objc_loadWeakRetained(&self->_pointerInteraction);
  if (includesRestoreButton)
  {
    if (WeakRetained)
    {
      v8 = WeakRetained;
      view = [(PGPictureInPictureViewController *)self view];
      [view removeInteraction:v8];

      objc_storeWeak(&self->_pointerInteraction, 0);
LABEL_7:
      WeakRetained = v8;
    }
  }

  else if (!WeakRetained)
  {
    if (![(PGPictureInPictureViewController *)self isViewLoaded])
    {
      return;
    }

    v8 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:self];
    objc_storeWeak(&self->_pointerInteraction, v8);
    view2 = [(PGPictureInPictureViewController *)self view];
    [view2 addInteraction:v8];

    goto LABEL_7;
  }
}

- (void)settings:(id)settings changedValueForKeyPath:(id)path
{
  [(PGPictureInPictureViewController *)self _applyShadowSettingsToView:self->_shadowView, path];
  tabShadowView = self->_tabShadowView;

  [(PGPictureInPictureViewController *)self _applyShadowSettingsToView:tabShadowView];
}

- (void)_loadTabShadowViewIfNeeded
{
  if ([(PGPictureInPictureViewController *)self isViewLoaded]&& !self->_tabShadowView)
  {
    _newShadowView = [(PGPictureInPictureViewController *)self _newShadowView];
    tabShadowView = self->_tabShadowView;
    self->_tabShadowView = _newShadowView;

    [(UIView *)self->_tabShadowView setHidden:1];
    view = [(PGPictureInPictureViewController *)self view];
    [view insertSubview:self->_tabShadowView atIndex:0];
  }
}

- (void)_addMaskViewSubviewIfNeeded
{
  if ([(PGPictureInPictureViewController *)self isViewLoaded])
  {
    WeakRetained = objc_loadWeakRetained(&self->_stashMaskView);

    if (!WeakRetained)
    {
      v4 = [PGStashedMaskView alloc];
      [(UIView *)self->_containerView bounds];
      obj = [PGStashedMaskView initWithFrame:v4 minimumStashTabSize:"initWithFrame:minimumStashTabSize:"];
      [(PGPictureInPictureViewController *)self _loadTabShadowViewIfNeeded];
      [(PGStashedMaskView *)obj setTabShadowView:self->_tabShadowView];
      [(PGStashedMaskView *)obj setHidden:1];
      [(UIView *)self->_containerView addSubview:obj];
      objc_storeWeak(&self->_stashMaskView, obj);
    }
  }
}

- (void)_updatePrefersIdleTimerDisabled
{
  prefersIdleTimerDisabled = self->_prefersIdleTimerDisabled;
  if (self->_stashed || self->_isSuspended || [(PGPictureInPictureViewController *)self isInterrupted])
  {
    v4 = 0;
  }

  else
  {
    playbackState = [(PGControlsViewModel *)self->_viewModel playbackState];
    contentType = [playbackState contentType];
    if (contentType > 5)
    {
      v4 = 0;
    }

    else if (((1 << contentType) & 0x31) != 0 || ((1 << contentType) & 6) == 0)
    {
      v4 = 1;
    }

    else
    {
      [playbackState playbackRate];
      v4 = v7 != 0.0;
    }
  }

  if (prefersIdleTimerDisabled != v4)
  {
    self->_prefersIdleTimerDisabled = v4;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"PGPictureInPictureViewControllerPrefersIdleTimerDisabledDidChangeNotification" object:self];
  }
}

- (void)_insertContentContainerViewIfNeeded
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(PGPictureInPictureViewController *)self canStartShowingChrome])
  {
    if ([(PGPictureInPictureViewController *)self isViewLoaded])
    {
      superview = [(UIView *)self->_containerView superview];
      view = [(PGPictureInPictureViewController *)self view];

      if (superview != view)
      {
        v5 = PGLogCommon();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315394;
          v13 = "[PGPictureInPictureViewController _insertContentContainerViewIfNeeded]";
          v14 = 2048;
          selfCopy = self;
          _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %p ", &v12, 0x16u);
        }

        tabShadowView = self->_tabShadowView;
        v7 = tabShadowView == 0;
        v8 = tabShadowView != 0;
        v9 = 1;
        if (!v7)
        {
          v9 = 2;
        }

        if (self->_shadowView)
        {
          v10 = v9;
        }

        else
        {
          v10 = v8;
        }

        view2 = [(PGPictureInPictureViewController *)self view];
        [view2 insertSubview:self->_containerView atIndex:v10];
      }
    }
  }
}

- (PGPictureInPictureApplication)application
{
  WeakRetained = objc_loadWeakRetained(&self->_application);

  return WeakRetained;
}

- (PGPictureInPictureViewControllerContentContainer)contentContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_contentContainer);

  return WeakRetained;
}

- (PGPictureInPictureViewController)tetheredViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_tetheredViewController);

  return WeakRetained;
}

- (PGPictureInPictureViewController)tetheringViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_tetheringViewController);

  return WeakRetained;
}

- (CGSize)minimumStashTabSize
{
  width = self->_minimumStashTabSize.width;
  height = self->_minimumStashTabSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIPointerInteraction)pointerInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_pointerInteraction);

  return WeakRetained;
}

- (CGSize)microPIPSize
{
  width = self->_microPIPSize.width;
  height = self->_microPIPSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PGPictureInPictureViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithApplication:sourceSceneSessionPersistentIdentifier:controlsStyle:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = _PGLogMethodProem(v0, 1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1BB282000, v2, v3, "%@", v4, v5, v6, v7, v8);
}

- (void)showChrome:animated:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  v2 = _PGLogMethodProem(v0, v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1BB282000, v3, v4, "%@ may not be called before view is loaded!", v5, v6, v7, v8, v9);
}

@end