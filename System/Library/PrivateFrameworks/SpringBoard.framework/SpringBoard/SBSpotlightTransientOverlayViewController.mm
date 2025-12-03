@interface SBSpotlightTransientOverlayViewController
- (BOOL)_isReduceMotionOrTransparency;
- (BOOL)_isSpotlightVisible;
- (BOOL)handleHomeButtonPress;
- (BOOL)isPresentedFromSceneWithIdentityTokenString:(id)string;
- (FBSDisplayConfiguration)targetDisplayConfiguration;
- (SBSpotlightTransientOverlayViewController)init;
- (SBSpotlightTransientOverlayViewControllerDelegate)delegate;
- (id)hostedSceneIdentityTokens;
- (id)newTransientOverlayDismissalTransitionCoordinator;
- (id)newTransientOverlayPresentationTransitionCoordinator;
- (id)sceneDeactivationPredicate;
- (int)_preferredStatusBarVisibility;
- (void)_configureBlurFilterOnView:(id)view;
- (void)_handlePanGestureRecognizer:(id)recognizer;
- (void)_handleTapToDismissGestureRecognizer:(id)recognizer;
- (void)_setSpotlightAlpha:(double)alpha scale:(double)scale blurProgress:(double)progress translation:(CGPoint)translation withAnimationMode:(int64_t)mode alongsideAnimationBlock:(id)block completion:(id)completion;
- (void)_setSpotlightPresented:(BOOL)presented withAnimationMode:(int64_t)mode alongsideAnimationBlock:(id)block completion:(id)completion;
- (void)beginInteractivePresentation;
- (void)dealloc;
- (void)dismissSearchView;
- (void)endInteractivePresentation:(BOOL)presentation;
- (void)handleGestureDismissal;
- (void)setPresentationSource:(unint64_t)source;
- (void)setTargetDisplayConfiguration:(id)configuration;
- (void)updateInteractivePresentationWithProgress:(double)progress translation:(double)translation;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SBSpotlightTransientOverlayViewController

- (SBSpotlightTransientOverlayViewController)init
{
  v6.receiver = self;
  v6.super_class = SBSpotlightTransientOverlayViewController;
  v2 = [(SBSpotlightTransientOverlayViewController *)&v6 init];
  if (v2)
  {
    v3 = +[SBSpotlightDomain rootSettings];
    settings = v2->_settings;
    v2->_settings = v3;

    v2->_presentationSource = 6;
  }

  return v2;
}

- (void)dealloc
{
  [(SBSpotlightTransientOverlaySpotlightViewController *)self->_spotlightViewController willMoveToParentViewController:0];
  [(SBSpotlightTransientOverlaySpotlightViewController *)self->_spotlightViewController removeFromParentViewController];
  v3.receiver = self;
  v3.super_class = SBSpotlightTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v3 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SBSpotlightTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v5 viewDidAppear:appear];
  delegate = [(SBSpotlightTransientOverlayViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate spotlightTransientOverlayViewControllerDidPresent:self];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SBSpotlightTransientOverlayViewController;
  [(SBSpotlightTransientOverlayViewController *)&v5 viewWillDisappear:disappear];
  delegate = [(SBSpotlightTransientOverlayViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate spotlightTransientOverlayViewControllerWillDismiss:self];
  }
}

- (void)viewDidLayoutSubviews
{
  v25.receiver = self;
  v25.super_class = SBSpotlightTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v25 viewDidLayoutSubviews];
  contentView = [(SBTransientOverlayViewController *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_scalingView setBounds:v5, v7, v9, v11];
  [(SBSpotlightSettings *)self->_settings anchorPointY];
  v13 = v12;
  [(UIView *)self->_scalingView setCenter:v5 + v9 * 0.5, v7 + v11 * v12];
  layer = [(UIView *)self->_scalingView layer];
  [layer setAnchorPoint:{0.5, v13}];

  backgroundView = [(SBTransientOverlayViewController *)self backgroundView];
  [backgroundView bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [(UIVisualEffectView *)self->_blurEffectView setFrame:v17, v19, v21, v23];
  view = [(SBSpotlightTransientOverlaySpotlightViewController *)self->_spotlightViewController view];
  [view setFrame:{v5, v7, v9, v11}];
}

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = SBSpotlightTransientOverlayViewController;
  [(SBTransientOverlayViewController *)&v26 viewDidLoad];
  backgroundView = [(SBTransientOverlayViewController *)self backgroundView];
  if (([MEMORY[0x277D65D28] enableFloatingWindow] & 1) == 0)
  {
    v4 = [MEMORY[0x277D75210] effectWithStyle:2];
    v5 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v4];
    blurEffectView = self->_blurEffectView;
    self->_blurEffectView = v5;

    [backgroundView addSubview:self->_blurEffectView];
  }

  v7 = objc_alloc(MEMORY[0x277D75D18]);
  contentView = [(SBTransientOverlayViewController *)self contentView];
  [contentView bounds];
  v9 = [v7 initWithFrame:?];
  scalingView = self->_scalingView;
  self->_scalingView = v9;

  contentView2 = [(SBTransientOverlayViewController *)self contentView];
  [contentView2 addSubview:self->_scalingView];

  v12 = objc_alloc_init(SBSpotlightTransientOverlaySpotlightViewController);
  spotlightViewController = self->_spotlightViewController;
  self->_spotlightViewController = v12;

  v14 = self->_spotlightViewController;
  WeakRetained = objc_loadWeakRetained(&self->_targetDisplayConfiguration);
  [(SBSpotlightMultiplexingViewController *)v14 setTargetDisplayConfiguration:WeakRetained];

  [(SBSpotlightTransientOverlaySpotlightViewController *)self->_spotlightViewController setPresentationSource:self->_presentationSource];
  [(SBSpotlightMultiplexingViewController *)self->_spotlightViewController setSpotlightDelegate:self];
  [(SBSpotlightTransientOverlayViewController *)self addChildViewController:self->_spotlightViewController];
  v16 = self->_scalingView;
  view = [(SBSpotlightTransientOverlaySpotlightViewController *)self->_spotlightViewController view];
  [(UIView *)v16 addSubview:view];

  [(SBSpotlightTransientOverlaySpotlightViewController *)self->_spotlightViewController didMoveToParentViewController:self];
  v18 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__handlePanGestureRecognizer_];
  panGestureRecognizer = self->_panGestureRecognizer;
  self->_panGestureRecognizer = v18;

  [(UIPanGestureRecognizer *)self->_panGestureRecognizer setAllowedScrollTypesMask:3];
  view2 = [(SBSpotlightTransientOverlayViewController *)self view];
  [view2 addGestureRecognizer:self->_panGestureRecognizer];

  v21 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTapToDismissGestureRecognizer_];
  tapToDismissGestureRecognizer = self->_tapToDismissGestureRecognizer;
  self->_tapToDismissGestureRecognizer = v21;

  view3 = [(SBSpotlightTransientOverlayViewController *)self view];
  [view3 addGestureRecognizer:self->_tapToDismissGestureRecognizer];

  view4 = [(SBSpotlightTransientOverlayViewController *)self view];
  layer = [view4 layer];
  [layer setHitTestsAsOpaque:1];

  [(SBSpotlightTransientOverlayViewController *)self _setSpotlightPresented:0 withAnimationMode:2 alongsideAnimationBlock:0 completion:0];
}

- (void)_handlePanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  _sbWindowScene = [(SBTransientOverlayViewController *)self _sbWindowScene];
  modalUIFluidDismissGestureManager = [_sbWindowScene modalUIFluidDismissGestureManager];

  state = [recognizerCopy state];
  if ((state - 3) >= 3)
  {
    if (state == 2)
    {
      [modalUIFluidDismissGestureManager handleGestureChanged:recognizerCopy];
    }

    else if (state == 1)
    {
      [modalUIFluidDismissGestureManager handleGestureBegan:recognizerCopy initiatedFromBottomEdge:0];
    }
  }

  else
  {
    [modalUIFluidDismissGestureManager handleGestureEnded:recognizerCopy];
  }
}

- (void)_handleTapToDismissGestureRecognizer:(id)recognizer
{
  if ([recognizer state] == 3)
  {

    [(SBSpotlightTransientOverlayViewController *)self dismissSearchView];
  }
}

- (int)_preferredStatusBarVisibility
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return 2 * ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1);
}

- (BOOL)handleHomeButtonPress
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained spotlightTransientOverlayViewControllerRequestsDismissal:self];
    handleHomeButtonPress = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBSpotlightTransientOverlayViewController;
    handleHomeButtonPress = [(SBTransientOverlayViewController *)&v6 handleHomeButtonPress];
  }

  return handleHomeButtonPress;
}

- (void)handleGestureDismissal
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained spotlightTransientOverlayViewControllerRequestsDismissal:self];
  }
}

- (id)sceneDeactivationPredicate
{
  sharedRemoteSearchViewController = [objc_opt_class() sharedRemoteSearchViewController];
  sceneIdentifier = [sharedRemoteSearchViewController sceneIdentifier];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SBSpotlightTransientOverlayViewController_sceneDeactivationPredicate__block_invoke;
  v7[3] = &unk_2783ADD00;
  v8 = sceneIdentifier;
  v4 = sceneIdentifier;
  v5 = MEMORY[0x223D6F7F0](v7);

  return v5;
}

uint64_t __71__SBSpotlightTransientOverlayViewController_sceneDeactivationPredicate__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  LODWORD(a1) = [v3 isEqualToString:*(a1 + 32)];

  return a1 ^ 1;
}

- (id)hostedSceneIdentityTokens
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = +[SBSpotlightMultiplexingViewController spotlightSceneIdentityTokenIfActiveForeground];
  v3 = v2;
  if (v2)
  {
    v6[0] = v2;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)newTransientOverlayDismissalTransitionCoordinator
{
  v3 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __94__SBSpotlightTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke;
  v5[3] = &unk_2783A93C0;
  v5[4] = self;
  [(SBTransientOverlayBlockTransitionCoordinator *)v3 setStartTransitionHandler:v5];
  return v3;
}

void __94__SBSpotlightTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAnimated])
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v5 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__SBSpotlightTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_2;
  v11[3] = &unk_2783A92D8;
  v6 = v3;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __94__SBSpotlightTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_3;
  v9[3] = &unk_2783AE4B8;
  v10 = v6;
  v8 = v6;
  [v5 _setSpotlightPresented:0 withAnimationMode:v4 alongsideAnimationBlock:v11 completion:v9];
}

uint64_t __94__SBSpotlightTransientOverlayViewController_newTransientOverlayDismissalTransitionCoordinator__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) performAlongsideTransitions];
  v2 = *(a1 + 40);

  return [v2 setPresentationDimmingAlpha:0.0];
}

- (id)newTransientOverlayPresentationTransitionCoordinator
{
  v3 = objc_alloc_init(SBTransientOverlayBlockTransitionCoordinator);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __97__SBSpotlightTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke;
  v5[3] = &unk_2783A93C0;
  v5[4] = self;
  [(SBTransientOverlayBlockTransitionCoordinator *)v3 setStartTransitionHandler:v5];
  return v3;
}

void __97__SBSpotlightTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  v6 = *(a1 + 32);
  if (*(v6 + 1432) == 1)
  {
    objc_storeStrong((v6 + 1440), a2);
  }

  else
  {
    if ([v4 isAnimated])
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v8 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __97__SBSpotlightTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_2;
    v11[3] = &unk_2783A8C18;
    v12 = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __97__SBSpotlightTransientOverlayViewController_newTransientOverlayPresentationTransitionCoordinator__block_invoke_3;
    v9[3] = &unk_2783AE4B8;
    v10 = v12;
    [v8 _setSpotlightPresented:1 withAnimationMode:v7 alongsideAnimationBlock:v11 completion:v9];
  }
}

- (BOOL)isPresentedFromSceneWithIdentityTokenString:(id)string
{
  stringCopy = string;
  v4 = +[SBSpotlightMultiplexingViewController spotlightSceneIdentityTokenIfActiveForeground];
  stringRepresentation = [v4 stringRepresentation];
  v6 = [stringRepresentation isEqualToString:stringCopy];

  return v6;
}

- (void)setPresentationSource:(unint64_t)source
{
  if (self->_presentationSource != source)
  {
    self->_presentationSource = source;
    [(SBSpotlightTransientOverlaySpotlightViewController *)self->_spotlightViewController setPresentationSource:?];
  }
}

- (void)setTargetDisplayConfiguration:(id)configuration
{
  obj = configuration;
  WeakRetained = objc_loadWeakRetained(&self->_targetDisplayConfiguration);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_targetDisplayConfiguration, obj);
    [(SBSpotlightMultiplexingViewController *)self->_spotlightViewController setTargetDisplayConfiguration:obj];
  }
}

- (void)beginInteractivePresentation
{
  [(SBSpotlightTransientOverlayViewController *)self loadViewIfNeeded];
  self->_presentingInteractively = 1;
  self->_performedAlongsideAnimations = 0;
  sharedRemoteSearchViewController = [objc_opt_class() sharedRemoteSearchViewController];
  [sharedRemoteSearchViewController setRevealProgress:0.0];

  [(SBSpotlightTransientOverlayViewController *)self _setSpotlightPresented:0 withAnimationMode:2 alongsideAnimationBlock:0 completion:0];
}

- (void)updateInteractivePresentationWithProgress:(double)progress translation:(double)translation
{
  v7 = self->_settings;
  [(SBSpotlightSettings *)self->_settings hiddenScale];
  v9 = v8;
  _isSpotlightVisible = [(SBSpotlightTransientOverlayViewController *)self _isSpotlightVisible];
  if ([(SBSpotlightTransientOverlayViewController *)self _isReduceMotionOrTransparency])
  {
    [(SBSpotlightSettings *)v7 minTranslationToShowSpotlight];
    v12 = translation / v11;
    v13 = 0.0;
    if (v12 <= 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v12 + 0.0;
    }

    v9 = 1.0;
    v15 = fmin(v14, 1.0);
    [(SBSpotlightSettings *)v7 minTranslationToShowSpotlight];
    v31 = 0u;
    v32 = v16;
    BYTE8(v31) = 1;
    v33 = 1;
    [(SBSpotlightSettings *)v7 spotlightTranslationRubberbandingRange];
    BSUIConstrainValueToIntervalWithRubberBand();
    v18 = v17;
    [(SBSpotlightSettings *)v7 minTranslationToShowSpotlight];
    v20 = -(v19 - v18);
    v21 = 5;
    v22 = 0.0;
  }

  else
  {
    v13 = *MEMORY[0x277CBF348];
    v20 = *(MEMORY[0x277CBF348] + 8);
    if (_isSpotlightVisible)
    {
      if (translation <= 0.0)
      {
        [(SBSpotlightSettings *)self->_settings hiddenScale];
        v9 = v28;
        v15 = 0.0;
        v22 = 1.0;
      }

      else
      {
        [(SBSpotlightSettings *)v7 minTranslationToShowSpotlight];
        [(SBSpotlightSettings *)v7 maxTranslationForSpotlightScale];
        v15 = 1.0;
        [(SBSpotlightSettings *)self->_settings spotlightScaleRubberbandingMin];
        v24 = v23;
        [(SBSpotlightSettings *)self->_settings spotlightScaleRubberbandingMax];
        *&v31 = v24;
        v32 = v25;
        *(&v31 + 1) = 1;
        v33 = 1;
        [(SBSpotlightSettings *)self->_settings spotlightScaleRubberbandingRange];
        BSUIConstrainValueToIntervalWithRubberBand();
        v9 = v26;
        v22 = 0.0;
      }

      v21 = 3;
    }

    else
    {
      [(SBSpotlightSettings *)v7 minTranslationToShowSpotlight];
      v21 = 3;
      if (v27 >= translation)
      {
        v22 = 1.0;
      }

      else
      {
        v22 = 0.0;
      }

      if (v27 >= translation)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }

      if (v27 < translation)
      {
        v9 = 1.0;
      }
    }
  }

  [(SBTransientOverlayViewController *)self setPresentationDimmingViewHidden:0];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __99__SBSpotlightTransientOverlayViewController_updateInteractivePresentationWithProgress_translation___block_invoke;
  v30[3] = &unk_2783A8BC8;
  *&v30[5] = translation;
  v30[4] = self;
  [(SBSpotlightTransientOverlayViewController *)self _setSpotlightAlpha:v21 scale:v30 blurProgress:0 translation:v15 withAnimationMode:v9 alongsideAnimationBlock:v22 completion:v13, v20];
  sharedRemoteSearchViewController = [objc_opt_class() sharedRemoteSearchViewController];
  [sharedRemoteSearchViewController setRevealProgress:progress];

  if (BSFloatIsOne() && !self->_performedAlongsideAnimations)
  {
    self->_performedAlongsideAnimations = 1;
    [(SBTransientOverlayTransitionContextProviding *)self->_interactivePresentationContextProvider performAlongsideTransitions];
  }
}

uint64_t __99__SBSpotlightTransientOverlayViewController_updateInteractivePresentationWithProgress_translation___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1480) maxTranslationForDimmingView];
  [*(*(a1 + 32) + 1480) dimmingViewRubberbandingMin];
  v3 = v2;
  [*(*(a1 + 32) + 1480) dimmingViewRubberbandingMax];
  [*(*(a1 + 32) + 1480) dimmingViewRubberbandingRange];
  BSUIConstrainValueToIntervalWithRubberBand();
  return [*(a1 + 32) setPresentationDimmingAlpha:?];
}

- (void)endInteractivePresentation:(BOOL)presentation
{
  if (presentation)
  {
    [(SBSpotlightTransientOverlayViewController *)self _setSpotlightPresented:1 withAnimationMode:3 alongsideAnimationBlock:0 completion:0];
  }

  v5 = +[SBLockScreenManager sharedInstance];
  v6 = [v5 isUILocked] & presentation;

  v7 = MEMORY[0x277D75D18];
  opacityAnimationSettings = [(SBSpotlightSettings *)self->_settings opacityAnimationSettings];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__SBSpotlightTransientOverlayViewController_endInteractivePresentation___block_invoke;
  v13[3] = &unk_2783A9F58;
  v13[4] = self;
  v14 = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__SBSpotlightTransientOverlayViewController_endInteractivePresentation___block_invoke_2;
  v11[3] = &unk_2783AD430;
  v12 = v6;
  v11[4] = self;
  [v7 sb_animateWithSettings:opacityAnimationSettings mode:3 animations:v13 completion:v11];

  interactivePresentationContextProvider = self->_interactivePresentationContextProvider;
  if (interactivePresentationContextProvider)
  {
    [(SBTransientOverlayTransitionContextProviding *)interactivePresentationContextProvider completeTransition:1];
    v10 = self->_interactivePresentationContextProvider;
  }

  else
  {
    v10 = 0;
  }

  self->_interactivePresentationContextProvider = 0;

  self->_presentingInteractively = 0;
  self->_performedAlongsideAnimations = 0;
}

uint64_t __72__SBSpotlightTransientOverlayViewController_endInteractivePresentation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0.0;
  if (*(a1 + 40) == 1)
  {
    [v2[185] dimmingViewRubberbandingMax];
  }

  result = [v2 setPresentationDimmingAlpha:v3];
  v5 = *(a1 + 32);
  if ((*(v5 + 1433) & 1) == 0)
  {
    v6 = *(v5 + 1440);

    return [v6 performAlongsideTransitions];
  }

  return result;
}

uint64_t __72__SBSpotlightTransientOverlayViewController_endInteractivePresentation___block_invoke_2(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0 && (*(result + 40) & 1) == 0)
  {
    return [*(result + 32) setPresentationDimmingViewHidden:1];
  }

  return result;
}

- (BOOL)_isSpotlightVisible
{
  scalingView = [(SBSpotlightTransientOverlayViewController *)self scalingView];
  [scalingView alpha];
  IsOne = BSFloatIsOne();

  return IsOne;
}

- (BOOL)_isReduceMotionOrTransparency
{
  if (SBReduceMotion())
  {
    return 1;
  }

  return SBReduceTransparency();
}

- (void)_configureBlurFilterOnView:(id)view
{
  v11[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v5 = 0.0;
  if (![(SBSpotlightTransientOverlayViewController *)self _isSpotlightVisible])
  {
    [(SBSpotlightSettings *)self->_settings hiddenBlurRadius];
    v5 = v6;
  }

  v7 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
  [v7 setName:@"gaussianBlur"];
  [v7 setValue:@"low" forKey:@"inputIntermediateBitDepth"];
  [v7 setValue:@"low" forKey:@"inputQuality"];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  [v7 setValue:v8 forKey:@"inputRadius"];

  layer = [viewCopy layer];

  v11[0] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [layer setFilters:v10];
}

- (void)_setSpotlightPresented:(BOOL)presented withAnimationMode:(int64_t)mode alongsideAnimationBlock:(id)block completion:(id)completion
{
  presentedCopy = presented;
  blockCopy = block;
  completionCopy = completion;
  if (presentedCopy)
  {
    v11 = 1.0;
    v12 = 0.0;
  }

  else
  {
    [(SBSpotlightSettings *)self->_settings hiddenScale];
    v11 = v13;
    v12 = 1.0;
  }

  v15 = *MEMORY[0x277CBF348];
  v14 = *(MEMORY[0x277CBF348] + 8);
  if (![(SBSpotlightTransientOverlayViewController *)self _isReduceMotionOrTransparency])
  {
    goto LABEL_13;
  }

  if (mode == 3)
  {
    v16 = 1472;
LABEL_9:
    if (*(&self->super.super.super.super.isa + v16) == 6)
    {
      v11 = 1.0;
      v12 = 0.0;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (mode == 2)
  {
    v16 = 1464;
    goto LABEL_9;
  }

LABEL_11:
  v11 = 1.0;
  v12 = 0.0;
  if (!presentedCopy)
  {
    [(SBSpotlightSettings *)self->_settings minTranslationToShowSpotlight];
    v14 = -v17;
    v15 = 0.0;
  }

LABEL_13:
  if (!self->_presentingInteractively)
  {
    v18 = +[SBLockScreenManager sharedInstance];
    isUILocked = [v18 isUILocked];

    if (isUILocked)
    {
      [(SBTransientOverlayViewController *)self setPresentationDimmingViewHidden:0];
    }
  }

  v20 = 0.0;
  if (presentedCopy)
  {
    v20 = 1.0;
  }

  [(SBSpotlightTransientOverlayViewController *)self _setSpotlightAlpha:mode scale:blockCopy blurProgress:completionCopy translation:v20 withAnimationMode:v11 alongsideAnimationBlock:v12 completion:v15, v14];
}

- (void)_setSpotlightAlpha:(double)alpha scale:(double)scale blurProgress:(double)progress translation:(CGPoint)translation withAnimationMode:(int64_t)mode alongsideAnimationBlock:(id)block completion:(id)completion
{
  y = translation.y;
  x = translation.x;
  blockCopy = block;
  completionCopy = completion;
  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    v19 = self->_settings;
    prefersWindowHitTestingDisabled = [(SBSpotlightTransientOverlayViewController *)self prefersWindowHitTestingDisabled];
    scalingView = [(SBSpotlightTransientOverlayViewController *)self scalingView];
    if ((mode - 3) <= 0xFFFFFFFFFFFFFFFDLL && !self->_animationCount && ![(SBSpotlightTransientOverlayViewController *)self _isReduceMotionOrTransparency])
    {
      [(SBSpotlightTransientOverlayViewController *)self _configureBlurFilterOnView:scalingView];
    }

    ++self->_animationCount;
    v22 = MEMORY[0x277D65DA0];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __148__SBSpotlightTransientOverlayViewController__setSpotlightAlpha_scale_blurProgress_translation_withAnimationMode_alongsideAnimationBlock_completion___block_invoke_3;
    v33[3] = &unk_2783B9160;
    v33[4] = self;
    alphaCopy = alpha;
    v23 = v19;
    modeCopy = mode;
    v34 = v23;
    v36 = blockCopy;
    v35 = scalingView;
    progressCopy = progress;
    scaleCopy = scale;
    v41 = x;
    v42 = y;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __148__SBSpotlightTransientOverlayViewController__setSpotlightAlpha_scale_blurProgress_translation_withAnimationMode_alongsideAnimationBlock_completion___block_invoke_6;
    v30[3] = &unk_2783B9188;
    v30[4] = self;
    v31 = v35;
    v32 = completionCopy;
    v24 = completionCopy;
    v25 = blockCopy;
    v26 = v35;
    [v22 perform:v33 finalCompletion:v30];
    if (prefersWindowHitTestingDisabled != [(SBSpotlightTransientOverlayViewController *)self prefersWindowHitTestingDisabled])
    {
      [(SBTransientOverlayViewController *)self setNeedsWindowHitTestingUpdate];
    }
  }

  else
  {
    v27 = MEMORY[0x277D75D18];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __148__SBSpotlightTransientOverlayViewController__setSpotlightAlpha_scale_blurProgress_translation_withAnimationMode_alongsideAnimationBlock_completion___block_invoke;
    v45[3] = &unk_2783AB990;
    alphaCopy2 = alpha;
    v45[4] = self;
    v46 = blockCopy;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __148__SBSpotlightTransientOverlayViewController__setSpotlightAlpha_scale_blurProgress_translation_withAnimationMode_alongsideAnimationBlock_completion___block_invoke_2;
    v43[3] = &unk_2783A9C70;
    v44 = completionCopy;
    v28 = completionCopy;
    v29 = blockCopy;
    [v27 animateWithDuration:v45 animations:v43 completion:0.2];
  }
}

uint64_t __148__SBSpotlightTransientOverlayViewController__setSpotlightAlpha_scale_blurProgress_translation_withAnimationMode_alongsideAnimationBlock_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:*(a1 + 48)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __148__SBSpotlightTransientOverlayViewController__setSpotlightAlpha_scale_blurProgress_translation_withAnimationMode_alongsideAnimationBlock_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

void __148__SBSpotlightTransientOverlayViewController__setSpotlightAlpha_scale_blurProgress_translation_withAnimationMode_alongsideAnimationBlock_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 1464) == 6 && (BSFloatIsOne() & 1) != 0)
  {
    v4 = [*(a1 + 40) snappyOpacityAnimationSettings];
    v5 = [*(a1 + 40) snappyScaleAnimationSettings];
  }

  else
  {
    v4 = [*(a1 + 40) opacityAnimationSettings];
    v5 = [*(a1 + 40) scaleAnimationSettings];
  }

  v6 = v5;
  v7 = MEMORY[0x277D75D18];
  v8 = *(a1 + 72);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __148__SBSpotlightTransientOverlayViewController__setSpotlightAlpha_scale_blurProgress_translation_withAnimationMode_alongsideAnimationBlock_completion___block_invoke_4;
  v22[3] = &unk_2783B9138;
  v17 = *(a1 + 32);
  v9 = *(a1 + 56);
  v10 = *(a1 + 48);
  v25 = *(a1 + 64);
  *&v11 = *(a1 + 40);
  *(&v11 + 1) = v9;
  *&v12 = v17;
  *(&v12 + 1) = v10;
  v23 = v12;
  v24 = v11;
  v26 = *(a1 + 80);
  v13 = v3[2](v3, @"opacity");
  [v7 sb_animateWithSettings:v4 mode:v8 animations:v22 completion:v13];

  v14 = MEMORY[0x277D75D18];
  v15 = *(a1 + 72);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __148__SBSpotlightTransientOverlayViewController__setSpotlightAlpha_scale_blurProgress_translation_withAnimationMode_alongsideAnimationBlock_completion___block_invoke_5;
  v18[3] = &unk_2783AECC8;
  v20 = *(a1 + 88);
  v21 = *(a1 + 96);
  v19 = *(a1 + 48);
  v16 = v3[2](v3, @"scale");
  [v14 sb_animateWithSettings:v6 mode:v15 animations:v18 completion:v16];
}

void __148__SBSpotlightTransientOverlayViewController__setSpotlightAlpha_scale_blurProgress_translation_withAnimationMode_alongsideAnimationBlock_completion___block_invoke_4(uint64_t a1)
{
  if ((*(*(a1 + 32) + 1432) & 1) == 0)
  {
    v2 = +[SBLockScreenManager sharedInstance];
    v3 = [v2 isUILocked];

    if (v3)
    {
      v4 = *(a1 + 32);
      [v4[185] dimmingViewRubberbandingMax];
      [v4 setPresentationDimmingAlpha:?];
    }
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))();
  }

  [*(a1 + 40) setAlpha:*(a1 + 64)];
  v9 = [*(a1 + 40) layer];
  v6 = MEMORY[0x277CCABB0];
  [*(a1 + 48) hiddenBlurRadius];
  v8 = [v6 numberWithDouble:v7 * *(a1 + 72)];
  [v9 setValue:v8 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

uint64_t __148__SBSpotlightTransientOverlayViewController__setSpotlightAlpha_scale_blurProgress_translation_withAnimationMode_alongsideAnimationBlock_completion___block_invoke_5(uint64_t a1)
{
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  *&v9.a = *MEMORY[0x277CBF2C0];
  *&v9.c = v2;
  *&v9.tx = *(MEMORY[0x277CBF2C0] + 32);
  v3 = *(a1 + 40);
  *&v8.a = *&v9.a;
  *&v8.c = v2;
  *&v8.tx = *&v9.tx;
  CGAffineTransformScale(&v9, &v8, v3, v3);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = v9;
  CGAffineTransformTranslate(&v8, &v7, v4, v5);
  v9 = v8;
  return [*(a1 + 32) setTransform:&v8];
}

uint64_t __148__SBSpotlightTransientOverlayViewController__setSpotlightAlpha_scale_blurProgress_translation_withAnimationMode_alongsideAnimationBlock_completion___block_invoke_6(uint64_t a1)
{
  if (!--*(*(a1 + 32) + 1496))
  {
    v2 = [*(a1 + 40) layer];
    [v2 setFilters:0];
  }

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)dismissSearchView
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained spotlightTransientOverlayViewControllerRequestsDismissal:self];
  }
}

- (SBSpotlightTransientOverlayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (FBSDisplayConfiguration)targetDisplayConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_targetDisplayConfiguration);

  return WeakRetained;
}

@end