@interface PGPictureInPictureViewController
+ (double)defaultContentCornerRadius;
+ (void)animateViewWithAnimationType:(int64_t)a3 initialSpringVelocity:(double)a4 animations:(id)a5 completion:(id)a6;
+ (void)tetherViewController:(id)a3 toViewController:(id)a4 mode:(int64_t)a5;
- (BOOL)wantsStashTabSuppression;
- (CGSize)microPIPSize;
- (CGSize)minimumStashTabSize;
- (CGSize)preferredContentSize;
- (PGPictureInPictureApplication)application;
- (PGPictureInPictureViewController)initWithApplication:(id)a3 sourceSceneSessionPersistentIdentifier:(id)a4 controlsStyle:(int64_t)a5;
- (PGPictureInPictureViewController)initWithCoder:(id)a3;
- (PGPictureInPictureViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PGPictureInPictureViewController)tetheredViewController;
- (PGPictureInPictureViewController)tetheringViewController;
- (PGPictureInPictureViewControllerContentContainer)contentContainer;
- (PGPictureInPictureViewControllerDelegate)delegate;
- (UIPointerInteraction)pointerInteraction;
- (double)currentContentCornerRadius;
- (id)_newShadowView;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (int64_t)contentType;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (void)_addMaskViewSubviewIfNeeded;
- (void)_applyShadowSettingsToView:(id)a3;
- (void)_handleTapWhileStashedGestureRecognizer:(id)a3;
- (void)_insertContentContainerViewIfNeeded;
- (void)_layoutStashTabViewsIfNeeded;
- (void)_loadShadowViewIfNeeded;
- (void)_loadTabShadowViewIfNeeded;
- (void)_noteTetheringDidUpdate;
- (void)_performStartAnimationWithCompletionHandler:(id)a3;
- (void)_performStopAnimationWithFinalInterfaceOrientation:(int64_t)a3 finalLayerFrame:(CGRect)a4 completionHandler:(id)a5;
- (void)_resetStashTabViewsIfPossible;
- (void)_setPortalActive:(BOOL)a3 left:(BOOL)a4;
- (void)_setStashMaskActive:(BOOL)a3;
- (void)_setStashedTabHidden:(BOOL)a3 left:(BOOL)a4;
- (void)_updateContentCornerRadiusForMaskActive:(BOOL)a3;
- (void)_updateCornerRadii;
- (void)_updatePointerEffect;
- (void)_updatePrefersIdleTimerDisabled;
- (void)_updateStashTabStateWithBehavior:(id)a3;
- (void)acquireInterfaceOrientationLock;
- (void)deactivateAnalyticsSessionIfNeeded;
- (void)dealloc;
- (void)handleCommand:(id)a3;
- (void)hostedWindowSizeChangeBegan;
- (void)hostedWindowSizeChangeEnded;
- (void)loadView;
- (void)notePictureInPictureWillStopForAppRequest:(BOOL)a3 preferredFullScreenRestore:(BOOL)a4;
- (void)pagingAccessorySetCurrentPage:(unint64_t)a3 numberOfPages:(unint64_t)a4;
- (void)performResumeAnimationWithCompletionHandler:(id)a3;
- (void)performRotateAnimationWithRotation:(int64_t)a3 completionHandler:(id)a4;
- (void)performStartAnimated:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)performStopAnimated:(BOOL)a3 withFinalInterfaceOrientation:(int64_t)a4 finalLayerFrame:(CGRect)a5 completionHandler:(id)a6;
- (void)performSuspendAnimationWithCompletionHandler:(id)a3;
- (void)prepareStartAnimationWithInitialInterfaceOrientation:(int64_t)a3 initialLayerFrame:(CGRect)a4 completionHandler:(id)a5;
- (void)prepareStopAnimationWithCompletionHandler:(id)a3;
- (void)relinquishInterfaceOrientationLock;
- (void)setAnalyticsDelegate:(id)a3 analyticsSourceUUID:(id)a4;
- (void)setCanStartShowingChrome:(BOOL)a3;
- (void)setContentContainer:(id)a3;
- (void)setContentCornerRadius:(double)a3 animated:(BOOL)a4;
- (void)setContentViewHidden:(BOOL)a3;
- (void)setHostedWindowHostingHandle:(id)a3;
- (void)setInteractivelyResizing:(BOOL)a3;
- (void)setInterrupted:(BOOL)a3;
- (void)setMenuItems:(id)a3;
- (void)setMinimumStashTabSize:(CGSize)a3;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)setPrefersStashTabSuppressed:(BOOL)a3;
- (void)setSceneView:(id)a3;
- (void)setStashProgress:(double)a3;
- (void)setStashTabHidden:(BOOL)a3 left:(BOOL)a4 withSpringBehavior:(id)a5;
- (void)setStashed:(BOOL)a3;
- (void)setTetheredViewController:(id)a3 mode:(int64_t)a4;
- (void)setTetheringViewController:(id)a3 mode:(int64_t)a4;
- (void)settings:(id)a3 changedValueForKeyPath:(id)a4;
- (void)showChrome:(BOOL)a3 animated:(BOOL)a4;
- (void)updateHostedWindowSize:(CGSize)a3;
- (void)updatePlaybackStateWithDiff:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PGPictureInPictureViewController

- (PGPictureInPictureViewController)initWithApplication:(id)a3 sourceSceneSessionPersistentIdentifier:(id)a4 controlsStyle:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
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
    v11->_controlsStyle = a5;
    v13 = objc_alloc_init(PGControlsViewModel);
    viewModel = v12->_viewModel;
    v12->_viewModel = v13;

    objc_storeWeak(&v12->_application, v8);
    objc_storeStrong(&v12->_sourceSceneSessionPersistentIdentifier, a4);
    v12->_shouldDisablePointerInteraction = 0;
    if ((a5 - 1) <= 3)
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

- (PGPictureInPictureViewController)initWithNibName:(id)a3 bundle:(id)a4
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
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"PGPictureInPictureViewControllerPrefersIdleTimerDisabledDidChangeNotification" object:0];
  }

  v5.receiver = self;
  v5.super_class = PGPictureInPictureViewController;
  [(PGPictureInPictureViewController *)&v5 dealloc];
}

- (PGPictureInPictureViewController)initWithCoder:(id)a3
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
  v2 = [(PGControlsViewModel *)self->_viewModel playbackState];
  v3 = [v2 contentType];

  return v3;
}

- (void)setStashed:(BOOL)a3
{
  if (self->_stashed != a3)
  {
    v4 = a3;
    self->_stashed = a3;
    v6 = 0.0;
    if (a3)
    {
      v6 = 1.0;
    }

    [(PGPictureInPictureViewController *)self setStashProgress:v6];
    if ([(PGPictureInPictureViewController *)self isViewLoaded])
    {
      if (v4)
      {
        v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapWhileStashedGestureRecognizer_];
        stashedTapGestureRecognizer = self->_stashedTapGestureRecognizer;
        self->_stashedTapGestureRecognizer = v7;

        v9 = [(PGPictureInPictureViewController *)self view];
        [v9 addGestureRecognizer:self->_stashedTapGestureRecognizer];
      }

      else
      {
        v9 = [(PGPictureInPictureViewController *)self view];
        [v9 removeGestureRecognizer:self->_stashedTapGestureRecognizer];
      }

      [(PGPictureInPictureViewController *)self _updatePrefersIdleTimerDisabled];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pictureInPictureViewController:self didTransitionToStashed:v4];

    v11 = objc_loadWeakRetained(&self->_analyticsDelegate);
    [v11 pictureInPictureDidChangeStashStateForAnalyticsSessionWithUUID:self->_analyticsSessionUUID stashed:v4];
  }
}

- (void)setHostedWindowHostingHandle:(id)a3
{
  hostedWindowHostingHandle = a3;
  v9 = hostedWindowHostingHandle;
  if (self->_hostedWindowHostingHandle != hostedWindowHostingHandle)
  {
    objc_storeStrong(&self->_hostedWindowHostingHandle, a3);
    hostedWindowHostingHandle = self->_hostedWindowHostingHandle;
  }

  v6 = [(PGLayerHostView *)self->_contentView hostedWindowHostingHandle];

  v8 = v9;
  if (hostedWindowHostingHandle != v6)
  {
    v7 = [(PGLayerHostView *)self->_contentView setHostedWindowHostingHandle:v9];
    v8 = v9;
  }

  MEMORY[0x1EEE66BB8](v7, v8);
}

- (void)setSceneView:(id)a3
{
  v5 = a3;
  if (self->_sceneView != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_sceneView, a3);
    v6 = [(UIView *)v7 layer];
    [v6 setAllowsHitTesting:0];

    [(PGLayerHostView *)self->_contentView setSceneView:v7];
    v5 = v7;
  }
}

- (void)setContentContainer:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_contentContainer);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_contentContainer);

    if (v5)
    {
      *&self->_contentContainerRespondsTo &= 0xC0u;
    }

    objc_storeWeak(&self->_contentContainer, obj);
    v6 = [(PGControlsViewModel *)self->_viewModel playbackState];
    if ([v6 isRoutingVideoToHostedWindow])
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

- (void)setCanStartShowingChrome:(BOOL)a3
{
  if (self->_canStartShowingChrome == a3)
  {
    if (!a3)
    {
      return;
    }
  }

  else
  {
    if (!a3)
    {
      [(PGPictureInPictureViewController *)self setStashed:0];
      [(PGPictureInPictureViewController *)self showChrome:0 animated:0];
      self->_canStartShowingChrome = a3;
      return;
    }

    self->_canStartShowingChrome = a3;
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

- (void)setInteractivelyResizing:(BOOL)a3
{
  if (self->_interactivelyResizing != a3)
  {
    self->_interactivelyResizing = a3;
    [(PGControlsContainerView *)self->_controlsContainerView setInteractivelyResizing:?];
    [(PGPictureInPictureViewController *)self _resetStashTabViewsIfPossible];
    v5 = [(PGPictureInPictureViewController *)self view];
    [v5 setNeedsLayout];

    v6 = [(PGPictureInPictureViewController *)self view];
    [v6 layoutIfNeeded];
  }
}

- (void)setAnalyticsDelegate:(id)a3 analyticsSourceUUID:(id)a4
{
  obj = a3;
  v6 = [a4 copy];
  analyticsSourceUUID = self->_analyticsSourceUUID;
  self->_analyticsSourceUUID = v6;

  objc_storeWeak(&self->_analyticsDelegate, obj);
}

- (void)notePictureInPictureWillStopForAppRequest:(BOOL)a3 preferredFullScreenRestore:(BOOL)a4
{
  if (self->_analyticsSessionUUID && self->_analyticsSourceUUID)
  {
    v5 = a4;
    v6 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);
    [WeakRetained pictureInPictureDidDeactivateAnalyticsSessionWithUUID:self->_analyticsSessionUUID analyticsSourceUUID:self->_analyticsSourceUUID appStoppedSession:v6 restoredFullScreen:v5];

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

- (void)setMinimumStashTabSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (self->_minimumStashTabSize.width != a3.width || self->_minimumStashTabSize.height != a3.height)
  {
    self->_minimumStashTabSize = a3;
    if ([(PGPictureInPictureViewController *)self isViewLoaded])
    {
      WeakRetained = objc_loadWeakRetained(&self->_stashMaskView);
      [WeakRetained setMinimumStashTabSize:{width, height}];

      stashView = self->_stashView;

      [(PGStashView *)stashView setStashedTabWidth:width];
    }
  }
}

- (void)pagingAccessorySetCurrentPage:(unint64_t)a3 numberOfPages:(unint64_t)a4
{
  if (a4 >= 2 && !self->_pagingAccessoryViewController)
  {
    v7 = objc_alloc_init(PGPictureInPicturePagingAccessoryViewController);
    pagingAccessoryViewController = self->_pagingAccessoryViewController;
    self->_pagingAccessoryViewController = v7;
  }

  v9 = self->_pagingAccessoryViewController;

  [(PGPictureInPicturePagingAccessoryViewController *)v9 setCurrentPage:a3 numberOfPages:a4];
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

+ (void)tetherViewController:(id)a3 toViewController:(id)a4 mode:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  [v7 setTetheredViewController:v8 mode:a5];
  [v8 setTetheringViewController:v7 mode:a5];
}

- (void)setTetheredViewController:(id)a3 mode:(int64_t)a4
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tetheredViewController);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_tetheredViewController, obj);
  }

  if (self->_tetheringMode != a4)
  {
    self->_tetheringMode = a4;
  }

  [(PGPictureInPictureViewController *)self _noteTetheringDidUpdate];
}

- (void)setTetheringViewController:(id)a3 mode:(int64_t)a4
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tetheringViewController);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_tetheringViewController, obj);
  }

  if (self->_tetheringMode != a4)
  {
    self->_tetheringMode = a4;
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
    v5 = [(PGPictureInPictureViewController *)self viewIfLoaded];
    [v5 setAlpha:1.0];
  }

  v6 = objc_loadWeakRetained(&self->_contentContainer);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = objc_loadWeakRetained(&self->_contentContainer);
    [v9 notePictureInPictureViewControllerTetheringDidUpdate];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_loadWeakRetained(&self->_contentContainer);
  }
}

- (void)showChrome:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (([(PGPictureInPictureViewController *)self isViewLoaded]& 1) == 0)
  {
    v7 = PGLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureViewController showChrome:animated:];
    }
  }

  self->_isShowingChrome = v5;
  if (!v5 || self->_canStartShowingChrome)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__PGPictureInPictureViewController_showChrome_animated___block_invoke;
    v13[3] = &unk_1E7F328F0;
    v13[4] = self;
    v14 = v5;
    v8 = MEMORY[0x1BFB0C680](v13);
    v9 = v8;
    if (v4)
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

    [(PGControlsContainerView *)self->_controlsContainerView setControlsContainerHidden:!v5 animated:v4];
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

- (void)setContentCornerRadius:(double)a3 animated:(BOOL)a4
{
  if (self->_currentContentCornerRadius != a3)
  {
    self->_currentContentCornerRadius = a3;
    if (a4)
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
  v3 = [(PGControlsViewModel *)self->_viewModel values];
  if ([v3 controlsViewWantsGlassBackground])
  {
    [(PGPictureInPictureViewController *)self currentContentCornerRadius];
    v5 = v4;

    if (v5 == 32.0)
    {
      v6 = [(PGPictureInPictureViewController *)self view];
      [v6 bounds];
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

+ (void)animateViewWithAnimationType:(int64_t)a3 initialSpringVelocity:(double)a4 animations:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  if (a3 == 1)
  {
    v14 = MEMORY[0x1E69DD250];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __109__PGPictureInPictureViewController_animateViewWithAnimationType_initialSpringVelocity_animations_completion___block_invoke_2;
    v15[3] = &unk_1E7F330F0;
    v16[1] = a1;
    *&v16[2] = a4;
    v13 = v16;
    v16[0] = v10;
    [v14 PG_animateUsingDefaultDampedSpringWithInitialSpringVelocity:v15 animations:v11 completion:a4];
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __109__PGPictureInPictureViewController_animateViewWithAnimationType_initialSpringVelocity_animations_completion___block_invoke;
    v17[3] = &unk_1E7F330F0;
    v18[1] = a1;
    v18[2] = 0;
    v13 = v18;
    v18[0] = v10;
    [v12 PG_animateUsingDefaultTimingWithAnimations:v17 completion:v11];
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

- (void)updateHostedWindowSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

  v12 = [(PGPictureInPictureViewController *)self delegate];
  [v12 pictureInPictureViewController:self updateHostedWindowSize:v9 animationType:width initialSpringVelocity:{height, v8}];
}

- (void)hostedWindowSizeChangeBegan
{
  v3 = [(PGPictureInPictureViewController *)self delegate];
  [v3 pictureInPictureViewControllerHostedWindowSizeChangeBegan:self];

  WeakRetained = objc_loadWeakRetained(&self->_pointerInteraction);
  [WeakRetained invalidate];
}

- (void)hostedWindowSizeChangeEnded
{
  v3 = [(PGPictureInPictureViewController *)self delegate];
  [v3 pictureInPictureViewControllerHostedWindowSizeChangeEnded:self];

  WeakRetained = objc_loadWeakRetained(&self->_pointerInteraction);
  [WeakRetained invalidate];
}

- (void)setStashProgress:(double)a3
{
  v26 = *MEMORY[0x1E69E9840];
  [(PGStashView *)self->_stashView blurProgress];
  v7 = v6 != 0.0 || a3 >= 0.2;
  v8 = v6 == a3 || !v7;
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
    *&v18[5] = a3;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __53__PGPictureInPictureViewController_setStashProgress___block_invoke_2;
    v16[3] = &unk_1E7F33118;
    v17 = IsZero;
    v16[4] = self;
    v16[5] = v12;
    v16[6] = a2;
    [MEMORY[0x1E69DD250] PG_animateUsingDefaultTimingWithOptions:4 animations:v18 completion:v16];
    v13 = 1.0 - a3;
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

- (void)setPrefersStashTabSuppressed:(BOOL)a3
{
  if (self->_prefersStashTabSuppressed != a3)
  {
    self->_prefersStashTabSuppressed = a3;
    [(PGPictureInPictureViewController *)self _updateStashTabStateWithBehavior:self->_stashTabSpringBehavior];
  }
}

- (BOOL)wantsStashTabSuppression
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v2) = [WeakRetained pictureInPictureViewControllerWantsStashTabSuppression:v2];

  return v2;
}

- (void)setStashTabHidden:(BOOL)a3 left:(BOOL)a4 withSpringBehavior:(id)a5
{
  v6 = a4;
  v7 = a3;
  v9 = a5;
  objc_storeStrong(&self->_stashTabSpringBehavior, a5);
  if (__PAIR64__(self->_stashTabShownLeft, self->_stashTabHidden) != __PAIR64__(v6, v7))
  {
    self->_stashTabHidden = v7;
    self->_stashTabShownLeft = v6 & ~v7;
    [(PGPictureInPictureViewController *)self _updateStashTabStateWithBehavior:v9];
  }
}

- (void)_updateStashTabStateWithBehavior:(id)a3
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
  [MEMORY[0x1E69DD250] _animateUsingSpringBehavior:a3 tracking:0 animations:v8 completion:v7];
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

  v11 = [(PGPictureInPictureViewController *)self view];
  [v11 addSubview:self->_containerView];

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
    v28 = [(PGPictureInPictureViewController *)self delegate];
    LODWORD(v34.a) = 136315650;
    *(&v34.a + 4) = "[PGPictureInPictureViewController viewDidLoad]";
    WORD2(v34.b) = 2048;
    *(&v34.b + 6) = self;
    HIWORD(v34.c) = 2114;
    *&v34.d = v28;
    _os_log_impl(&dword_1BB282000, v27, OS_LOG_TYPE_DEFAULT, "%s %p %{public}@", &v34, 0x20u);
  }
}

- (void)viewWillLayoutSubviews
{
  v38.receiver = self;
  v38.super_class = PGPictureInPictureViewController;
  [(PGPictureInPictureViewController *)&v38 viewWillLayoutSubviews];
  v3 = [(PGPictureInPictureViewController *)self view];
  [v3 bounds];
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

- (void)_setStashedTabHidden:(BOOL)a3 left:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!a3)
  {
    [(UIView *)self->_tabShadowView setAlpha:0.0];
    [(UIView *)self->_tabShadowView setHidden:0];
    [(PGPictureInPictureViewController *)self _setPortalActive:1 left:v4];
    [(PGPictureInPictureViewController *)self _setStashMaskActive:1];
  }

  [(PGControlsContainerView *)self->_controlsContainerView setControlsContainerHidden:!self->_isShowingChrome animated:1];
  WeakRetained = objc_loadWeakRetained(&self->_stashMaskView);
  [WeakRetained setTabHidden:v5 left:v4];

  stashView = self->_stashView;

  [(PGStashView *)stashView setChevronHidden:v5 left:v4];
}

- (void)_setPortalActive:(BOOL)a3 left:(BOOL)a4
{
  v4 = a4;
  if (self->_portalsWereActive != a3 || self->_portalsWereActiveLeft != a4)
  {
    self->_portalsWereActive = a3;
    self->_portalsWereActiveLeft = a4;
    leftSideContentPortalView = self->_leftSideContentPortalView;
    v7 = !a3;
    v8 = a3 && a4;
    if (a3 && a4)
    {
      contentView = self->_contentView;
    }

    else
    {
      contentView = 0;
    }

    [(PGPortalView *)leftSideContentPortalView setSourceView:contentView];
    v10 = v7 | v4;
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

- (void)_setStashMaskActive:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = [(UIView *)self->_containerView maskView];

    if (v5)
    {
      goto LABEL_6;
    }

    WeakRetained = objc_loadWeakRetained(&self->_stashMaskView);
    [WeakRetained setHidden:0];

    containerView = self->_containerView;
    v8 = objc_loadWeakRetained(&self->_stashMaskView);
    [(UIView *)containerView setMaskView:v8];

    v9 = [(PGPictureInPictureViewController *)self view];
    v10 = objc_loadWeakRetained(&self->_stashMaskView);
    [v9 setHitTestExtenderView:v10];
  }

  else
  {
    objc_storeWeak(&self->_stashMaskView, 0);
    [(UIView *)self->_containerView setMaskView:0];
    [(PGPictureInPictureViewController *)self _addMaskViewSubviewIfNeeded];
    v9 = [(PGPictureInPictureViewController *)self view];
    [v9 setHitTestExtenderView:0];
  }

LABEL_6:

  [(PGPictureInPictureViewController *)self _updateContentCornerRadiusForMaskActive:v3];
}

- (void)_updateContentCornerRadiusForMaskActive:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76__PGPictureInPictureViewController__updateContentCornerRadiusForMaskActive___block_invoke;
  v3[3] = &unk_1E7F328F0;
  v4 = a3;
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
    v3 = [(UIView *)self->_containerView maskView];

    if (v3)
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

- (void)setPreferredContentSize:(CGSize)a3
{
  if (self->_preferredContentSize.width != a3.width || self->_preferredContentSize.height != a3.height)
  {
    self->_preferredContentSize = a3;
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

- (void)prepareStartAnimationWithInitialInterfaceOrientation:(int64_t)a3 initialLayerFrame:(CGRect)a4 completionHandler:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v23 = *MEMORY[0x1E69E9840];
  v11 = a5;
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
      v20 = [(PGPictureInPictureViewController *)self view];
      [v20 setAlpha:0.0];

      v21 = [(PGPictureInPictureViewController *)self view];
      CGAffineTransformMakeScale(&v22, 0.100000001, 0.100000001);
      [v21 setTransform:&v22];
    }

    v11[2](v11);
  }

  else
  {
    [WeakRetained prepareStartAnimationWithInitialInterfaceOrientation:a3 initialLayerFrame:v11 completionHandler:{x, y, width, height}];
  }
}

- (void)performStartAnimated:(BOOL)a3 withCompletionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
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
  v8 = v6;
  v29 = v8;
  v9 = MEMORY[0x1BFB0C680](v28);
  [(PGPictureInPictureViewController *)self acquireInterfaceOrientationLock];
  [(PGPictureInPictureViewController *)self showChrome:0 animated:0];
  if (v4)
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

  v14 = [(PGPictureInPictureViewController *)self contentType];
  v15 = [MEMORY[0x1E696AFB0] UUID];
  analyticsSessionUUID = self->_analyticsSessionUUID;
  self->_analyticsSessionUUID = v15;

  v17 = objc_loadWeakRetained(&self->_application);
  v18 = [v17 bundleIdentifier];
  v19 = v18;
  v20 = @"com.apple.MissingBundleIdentifier";
  if (v18)
  {
    v20 = v18;
  }

  v21 = v20;

  v22 = objc_loadWeakRetained(&self->_analyticsDelegate);
  [v22 pictureInPictureDidCreateAnalyticsSessionWithUUID:self->_analyticsSessionUUID bundleIdentifier:v21 contentType:v14];

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

- (void)_performStartAnimationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__PGPictureInPictureViewController__performStartAnimationWithCompletionHandler___block_invoke;
  v17[3] = &unk_1E7F32D98;
  v17[4] = self;
  v5 = v4;
  v18 = v5;
  v6 = MEMORY[0x1BFB0C680](v17);
  v7 = [MEMORY[0x1E69DC668] sharedApplication];
  [v7 beginIgnoringInteractionEvents];

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

- (void)performStopAnimated:(BOOL)a3 withFinalInterfaceOrientation:(int64_t)a4 finalLayerFrame:(CGRect)a5 completionHandler:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v13 = a6;
  if (([(PGPictureInPictureViewController *)self isViewLoaded]& 1) == 0)
  {
    v14 = PGLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureViewController showChrome:animated:];
    }
  }

  if (v11)
  {
    [(PGPictureInPictureViewController *)self _performStopAnimationWithFinalInterfaceOrientation:a4 finalLayerFrame:v13 completionHandler:x, y, width, height];
  }

  else
  {
    [(PGControlsContainerView *)self->_controlsContainerView setControlsContainerHidden:1 animated:0];
    v13[2](v13);
  }
}

- (void)_performStopAnimationWithFinalInterfaceOrientation:(int64_t)a3 finalLayerFrame:(CGRect)a4 completionHandler:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a5;
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
  v13 = v11;
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
    [v17 performStopAnimationWithFinalInterfaceOrientation:a3 finalLayerFrame:v14 completionHandler:{x, y, width, height}];
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

- (void)performSuspendAnimationWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (([(PGPictureInPictureViewController *)self isViewLoaded]& 1) == 0)
  {
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureViewController showChrome:animated:];
    }
  }

  self->_isSuspended = 1;
  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  [v6 beginIgnoringInteractionEvents];

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
  v10 = v4;
  v8 = v4;
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

- (void)performResumeAnimationWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (([(PGPictureInPictureViewController *)self isViewLoaded]& 1) == 0)
  {
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureViewController showChrome:animated:];
    }
  }

  self->_isSuspended = 0;
  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  [v6 beginIgnoringInteractionEvents];

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
  v10 = v4;
  v8 = v4;
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

- (void)performRotateAnimationWithRotation:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (([(PGPictureInPictureViewController *)self isViewLoaded]& 1) == 0)
  {
    v7 = PGLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureViewController showChrome:animated:];
    }
  }

  v8 = [MEMORY[0x1E69DC668] sharedApplication];
  [v8 beginIgnoringInteractionEvents];

  [(PGControlsContainerView *)self->_controlsContainerView setControlsContainerHidden:1 animated:0];
  if ((*&self->_contentContainerRespondsTo & 0x20) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_contentContainer);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __89__PGPictureInPictureViewController_performRotateAnimationWithRotation_completionHandler___block_invoke;
    v10[3] = &unk_1E7F32D98;
    v10[4] = self;
    v11 = v6;
    [WeakRetained performRotateAnimationWithRotation:a3 completionHandler:v10];
  }

  else
  {
    v6[2](v6);
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

- (void)prepareStopAnimationWithCompletionHandler:(id)a3
{
  v4 = a3;
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
    [WeakRetained prepareStopAnimationWithCompletionHandler:v4];
  }

  else
  {
    v4[2](v4);
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

- (void)setInterrupted:(BOOL)a3
{
  v3 = a3;
  v5 = [(PGPictureInPictureViewController *)self isInterrupted];
  [(PGControlsViewModel *)self->_viewModel setInterrupted:v3];
  [(PGPictureInPictureViewController *)self _updatePrefersIdleTimerDisabled];
  if (v5 != v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_tetheringViewController);
    [WeakRetained flashControls];

    if (!v3)
    {
      if ([(PGPictureInPictureViewController *)self isViewLoaded])
      {
        v7 = [(PGPictureInPictureViewController *)self view];
        [v7 alpha];
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

- (void)setContentViewHidden:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  if ([(PGLayerHostView *)self->_contentView isHidden]!= a3)
  {
    v5 = PGLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = _PGLogMethodProem(self, 1);
      v7 = 138412546;
      v8 = v6;
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%@ %{BOOL}u", &v7, 0x12u);
    }

    [(PGLayerHostView *)self->_contentView setHidden:v3];
  }
}

- (void)setMenuItems:(id)a3
{
  v4 = a3;
  menuItems = self->_menuItems;
  v12 = v4;
  if (menuItems != v4 || (v6 = [(NSArray *)menuItems isEqualToArray:v4], v4 = v12, (v6 & 1) == 0))
  {
    v7 = [(NSArray *)v4 copy];
    v8 = self->_menuItems;
    self->_menuItems = v7;

    WeakRetained = objc_loadWeakRetained(&self->_contentContainer);
    v10 = objc_opt_respondsToSelector();

    v4 = v12;
    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_contentContainer);
      [v11 updateMenuItems];

      v4 = v12;
    }
  }

  MEMORY[0x1EEE66BB8](v6, v4);
}

- (void)_handleTapWhileStashedGestureRecognizer:(id)a3
{
  if ((*&self->_contentContainerRespondsTo & 8) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_contentContainer);
    [WeakRetained handleTapWhileStashedGesture];
  }
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  if (self->_shouldDisablePointerInteraction)
  {
    return 0;
  }

  else
  {
    return a5;
  }
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [(PGPictureInPictureViewController *)self view:a3];
  v6 = [v5 _isInAWindow];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E69DD070]);
    v8 = [(PGPictureInPictureViewController *)self view];
    v9 = [v7 initWithView:v8];

    v10 = [(PGPictureInPictureViewController *)self tetheringViewController];

    if (v10)
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

- (void)handleCommand:(id)a3
{
  v9 = a3;
  v5 = [v9 systemAction];
  if (v5 <= 2)
  {
    if (v5 >= 3)
    {
      goto LABEL_12;
    }

    WeakRetained = [(PGPictureInPictureViewController *)self delegate];
    [WeakRetained pictureInPictureViewController:self didReceiveCommand:v9];
    goto LABEL_4;
  }

  switch(v5)
  {
    case 3:
      v8 = [(PGPictureInPictureViewController *)self delegate];
      [v8 pictureInPictureViewController:self didReceiveCommand:v9];

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
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"PGPictureInPictureViewController.m" lineNumber:1256 description:@"Toggle visibility action should not be sent to PictureInPictureViewController."];

      break;
  }

LABEL_12:
  [(PGPictureInPictureViewController *)self _updatePrefersIdleTimerDisabled];
}

- (void)updatePlaybackStateWithDiff:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PGLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PGControlsViewModel *)self->_viewModel playbackState];
    v21 = 136315650;
    v22 = "[PGPictureInPictureViewController updatePlaybackStateWithDiff:]";
    v23 = 2048;
    v24 = self;
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %p REMOTE: %{public}@", &v21, 0x20u);
  }

  v7 = [(PGControlsViewModel *)self->_viewModel playbackState];
  v8 = [v7 isRoutingVideoToHostedWindow];

  [(PGControlsViewModel *)self->_viewModel updatePlaybackStateWithDiff:v4];
  [(PGPictureInPictureViewController *)self _updatePrefersIdleTimerDisabled];
  v9 = [(PGControlsViewModel *)self->_viewModel playbackState];
  v10 = [v9 isRoutingVideoToHostedWindow];

  if (v8 != v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_contentContainer);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_contentContainer);
      [v13 playbackSourceDidUpdateIsRoutingVideoToHostedWindow:v10];
    }
  }

  [(PGPictureInPictureViewController *)self _updatePointerEffect];
  prefersHiddenFromClonedDisplay = self->_prefersHiddenFromClonedDisplay;
  v15 = [(PGControlsViewModel *)self->_viewModel playbackState];
  v16 = [v15 disablesLayerCloning];

  if (prefersHiddenFromClonedDisplay != v16)
  {
    v17 = [(PGControlsViewModel *)self->_viewModel playbackState];
    self->_prefersHiddenFromClonedDisplay = [v17 disablesLayerCloning];

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
    v6 = [(PGPictureInPictureViewController *)self view];
    v3 = [(PGPictureInPictureViewController *)self _newShadowView];
    shadowView = self->_shadowView;
    self->_shadowView = v3;

    v5 = self->_shadowView;
    [v6 bounds];
    [(UIView *)v5 setFrame:?];
    [v6 insertSubview:self->_shadowView atIndex:0];
  }
}

- (id)_newShadowView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v4 setUserInteractionEnabled:0];
  v5 = [v4 layer];
  [v5 setAllowsEdgeAntialiasing:1];

  v6 = [v4 layer];
  [v6 setShadowPathIsBounds:1];

  [(PGPictureInPictureViewController *)self _applyShadowSettingsToView:v4];
  return v4;
}

- (void)_applyShadowSettingsToView:(id)a3
{
  v11 = a3;
  v4 = [v11 layer];
  [(PGMobilePIPSettings *)self->_settings shadowOffsetX];
  v6 = v5;
  [(PGMobilePIPSettings *)self->_settings shadowOffsetY];
  [v4 setShadowOffset:{v6, v7}];

  v8 = [v11 layer];
  [(PGMobilePIPSettings *)self->_settings shadowOpacity];
  *&v9 = v9;
  [v8 setShadowOpacity:v9];

  v10 = [v11 layer];
  [(PGMobilePIPSettings *)self->_settings shadowRadius];
  [v10 setShadowRadius:?];

  [(PGMobilePIPSettings *)self->_settings shadowContinuousCornerRadius];
  [v11 _setContinuousCornerRadius:?];
}

- (void)_updatePointerEffect
{
  v3 = [(PGControlsViewModel *)self->_viewModel values];
  v4 = [v3 includesRestoreButton];

  WeakRetained = objc_loadWeakRetained(&self->_pointerInteraction);
  if (v4)
  {
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v6 = [(PGPictureInPictureViewController *)self view];
      [v6 removeInteraction:v8];

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
    v7 = [(PGPictureInPictureViewController *)self view];
    [v7 addInteraction:v8];

    goto LABEL_7;
  }
}

- (void)settings:(id)a3 changedValueForKeyPath:(id)a4
{
  [(PGPictureInPictureViewController *)self _applyShadowSettingsToView:self->_shadowView, a4];
  tabShadowView = self->_tabShadowView;

  [(PGPictureInPictureViewController *)self _applyShadowSettingsToView:tabShadowView];
}

- (void)_loadTabShadowViewIfNeeded
{
  if ([(PGPictureInPictureViewController *)self isViewLoaded]&& !self->_tabShadowView)
  {
    v3 = [(PGPictureInPictureViewController *)self _newShadowView];
    tabShadowView = self->_tabShadowView;
    self->_tabShadowView = v3;

    [(UIView *)self->_tabShadowView setHidden:1];
    v5 = [(PGPictureInPictureViewController *)self view];
    [v5 insertSubview:self->_tabShadowView atIndex:0];
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
    v5 = [(PGControlsViewModel *)self->_viewModel playbackState];
    v6 = [v5 contentType];
    if (v6 > 5)
    {
      v4 = 0;
    }

    else if (((1 << v6) & 0x31) != 0 || ((1 << v6) & 6) == 0)
    {
      v4 = 1;
    }

    else
    {
      [v5 playbackRate];
      v4 = v7 != 0.0;
    }
  }

  if (prefersIdleTimerDisabled != v4)
  {
    self->_prefersIdleTimerDisabled = v4;
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"PGPictureInPictureViewControllerPrefersIdleTimerDisabledDidChangeNotification" object:self];
  }
}

- (void)_insertContentContainerViewIfNeeded
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(PGPictureInPictureViewController *)self canStartShowingChrome])
  {
    if ([(PGPictureInPictureViewController *)self isViewLoaded])
    {
      v3 = [(UIView *)self->_containerView superview];
      v4 = [(PGPictureInPictureViewController *)self view];

      if (v3 != v4)
      {
        v5 = PGLogCommon();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315394;
          v13 = "[PGPictureInPictureViewController _insertContentContainerViewIfNeeded]";
          v14 = 2048;
          v15 = self;
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

        v11 = [(PGPictureInPictureViewController *)self view];
        [v11 insertSubview:self->_containerView atIndex:v10];
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