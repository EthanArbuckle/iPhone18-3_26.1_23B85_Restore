@interface SBCoverSheetSlidingViewController
- (BOOL)_isAnyGestureActivelyRecognized:(BOOL)recognized;
- (BOOL)_isPresentingAnyInterstitialForGestureRecognizer:(id)recognizer;
- (BOOL)_isPresentingInterstitialForGestureRecognizer:(id)recognizer;
- (BOOL)_isPresentingInterstitialWhileOffScreen;
- (BOOL)_isTransitioning;
- (BOOL)_mathForGestureRecognizerPointsDown:(id)down position:(double *)position velocity:(double *)velocity instantVelocity:(double *)instantVelocity averageVelocity:(double *)averageVelocity;
- (BOOL)_shouldEndPresentedForEndingGestureRecognizer:(id)recognizer;
- (BOOL)_shouldRubberBandForGestureRecognizer:(id)recognizer;
- (BOOL)canTransitionToPresented:(BOOL)presented;
- (BOOL)isBottomMostSlider;
- (BOOL)isDismissGestureActive;
- (BOOL)isPresentGestureActive;
- (BOOL)isPresentingDismissableOffScreenInterstitial;
- (BOOL)shouldAutorotate;
- (CGPoint)_adjustedTouchLocationForCurrentDismissalMode:(CGPoint)mode;
- (CGPoint)_averageVelocityForGesture:(id)gesture;
- (CGPoint)_finalLocationForTransitionToPresented:(BOOL)presented;
- (CGPoint)_locationForGesture:(id)gesture;
- (CGPoint)_velocityForGesture:(id)gesture;
- (CGPoint)lastGestureVelocity;
- (CGPoint)lastTouchLocation;
- (CGRect)_contentViewFrame;
- (CGRect)_updatePositionViewForProgress:(double)progress velocity:(double)velocity forPresentationValue:(BOOL)value;
- (CSCoverSheetTransitionSettings)transitionSettings;
- (SBCoverSheetSlidingViewController)initWithContentViewController:(id)controller canBePulledDown:(BOOL)down canBePulledUp:(BOOL)up dismissalPreemptingGestureRecognizer:(id)recognizer;
- (SBCoverSheetSlidingViewControllerDelegate)delegate;
- (double)_viewVelocity;
- (id)_grabberRecognizer;
- (id)activeGestureRecognizer;
- (id)coverSheetIdentifier;
- (id)stringForPresentationState:(int64_t)state;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addSystemGestureRecognizerIfUntracked:(id)untracked withType:(unint64_t)type;
- (void)_addSystemGestureRecognizers;
- (void)_animationTickForPresentationValue:(BOOL)value;
- (void)_beginTransitionFromAppeared:(BOOL)appeared;
- (void)_cancelTransitionForGesture:(id)gesture;
- (void)_createProperties;
- (void)_dismissCoverSheetAnimated:(BOOL)animated forcingTransition:(BOOL)transition ignoringPreflightRequirements:(BOOL)requirements withCompletion:(id)completion;
- (void)_dismissGestureBeganWithGestureRecognizer:(id)recognizer;
- (void)_dismissGestureChangedWithGestureRecognizer:(id)recognizer;
- (void)_dismissInterstitialForTransitionIfNeeded;
- (void)_endTransitionToAppeared:(BOOL)appeared;
- (void)_finishTransitionToPresented:(BOOL)presented forcingTransition:(BOOL)transition ignoringPreflightRequirements:(BOOL)requirements animated:(BOOL)animated withCompletion:(id)completion;
- (void)_handleDismissGesture:(id)gesture;
- (void)_handleIndirectPresentGesture:(id)gesture;
- (void)_handlePresentGesture:(id)gesture;
- (void)_logDismissGestureState:(int64_t)state forAddendumGesture:(BOOL)gesture;
- (void)_logPresentGestureState:(int64_t)state;
- (void)_performAppFlyInToPresented:(BOOL)presented animated:(BOOL)animated velocity:(double)velocity;
- (void)_performTransitionToDismissed:(BOOL)dismissed velocity:(double)velocity;
- (void)_presentCoverSheetAnimated:(BOOL)animated forcingTransition:(BOOL)transition forUserGesture:(BOOL)gesture withCompletion:(id)completion;
- (void)_presentGestureBeganWithGestureRecognizer:(id)recognizer;
- (void)_presentOrDismissGestureChangedWithGestureRecognizer:(id)recognizer;
- (void)_presentOrDismissGestureEndedWithGestureRecognizer:(id)recognizer;
- (void)_removeSystemGestureRecognizers;
- (void)_resetScalingForTransitionIfNeeded;
- (void)_setCornerRounded:(BOOL)rounded;
- (void)_startCatchupAnimationWithDuration:(double)duration completion:(id)completion;
- (void)_studyLogForCompletionOfTransitionToPresented:(BOOL)presented;
- (void)_studyLogForGestureRecognizerState:(int64_t)state bounds:(CGRect)bounds position:(double)position velocity:(double)velocity;
- (void)_transitionTickForPresentationValue:(BOOL)value;
- (void)_transitionToPresentationState:(int64_t)state forUserGesture:(BOOL)gesture withVelocity:(double)velocity animated:(BOOL)animated;
- (void)_transitionToViewControllerAppearState:(int)state ifNeeded:(BOOL)needed forUserGesture:(BOOL)gesture;
- (void)_updateCoverSheetDismissSettings:(id)settings;
- (void)_updateForLocation:(CGPoint)location interactive:(BOOL)interactive;
- (void)_updateHomeGestureSettings:(id)settings;
- (void)_updateTransitionProgress:(double)progress velocity:(double)velocity forPresentationValue:(BOOL)value;
- (void)dealloc;
- (void)invalidate;
- (void)loadView;
- (void)setBackgroundView:(id)view;
- (void)setCompletionBlock:(id)block;
- (void)setCompletionGroup:(id)group;
- (void)setDismissGesturesEnabled:(BOOL)enabled;
- (void)setDismissalSlidingMode:(int64_t)mode;
- (void)setPresented:(BOOL)presented forcingTransition:(BOOL)transition ignoringPreflightRequirements:(BOOL)requirements forUserGesture:(BOOL)gesture animated:(BOOL)animated withCompletion:(id)completion;
- (void)settings:(id)settings changedValueForKey:(id)key;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SBCoverSheetSlidingViewController

- (SBCoverSheetSlidingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CSCoverSheetTransitionSettings)transitionSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionSettings);

  return WeakRetained;
}

- (void)viewDidLayoutSubviews
{
  if (CSFeatureEnabled())
  {
    [(SBCoverSheetSlidingViewController *)self _contentViewFrame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    view = [(SBCoverSheetSlidingViewControllerContentViewController *)self->_contentViewController view];
    [view setFrame:{v4, v6, v8, v10}];

    [(UIView *)self->_backgroundView setFrame:v4, v6, v8, v10];
  }

  positionView = [(SBCoverSheetSlidingViewController *)self positionView];
  view2 = [(SBCoverSheetSlidingViewController *)self view];
  [view2 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [positionView setFrame:{v14, v16, v18, v20}];
  coverSheetDismissGestureSettings = [(CSLockScreenSettings *)self->_lockScreenSettings coverSheetDismissGestureSettings];
  [(SBCoverSheetSlidingViewController *)self _updateCoverSheetDismissSettings:coverSheetDismissGestureSettings];
}

- (unint64_t)supportedInterfaceOrientations
{
  contentViewController = self->_contentViewController;
  if (contentViewController)
  {

    return [(SBCoverSheetSlidingViewControllerContentViewController *)contentViewController supportedInterfaceOrientations];
  }

  else
  {
    if (__sb__runningInSpringBoard())
    {
      v5 = SBFEffectiveDeviceClass() == 2;
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      v5 = [currentDevice userInterfaceIdiom] == 1;
    }

    if (v5)
    {
      return 30;
    }

    else
    {
      return 2;
    }
  }
}

- (BOOL)_isTransitioning
{
  systemGesturesDelegate = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  syntheticAppearState = [systemGesturesDelegate syntheticAppearState];

  return (syntheticAppearState & 0xFFFFFFFD) == 1;
}

- (double)_viewVelocity
{
  activeGestureRecognizer = [(SBCoverSheetSlidingViewController *)self activeGestureRecognizer];
  if (activeGestureRecognizer)
  {
    v4 = -self->_lastGestureVelocity.y;
  }

  else
  {
    v4 = 0.0;
  }

  positionView = [(SBCoverSheetSlidingViewController *)self positionView];
  [positionView frame];
  Height = CGRectGetHeight(v8);

  return fmin(fmax(v4 / Height, -10.0), 10.0);
}

- (id)activeGestureRecognizer
{
  dismissGestureRecognizer = [(SBCoverSheetSlidingViewController *)self dismissGestureRecognizer];
  dismissAddendumGestureRecognizer = [(SBCoverSheetSlidingViewController *)self dismissAddendumGestureRecognizer];
  _grabberRecognizer = [(SBCoverSheetSlidingViewController *)self _grabberRecognizer];
  indirectPresentGestureRecognizer = [(SBCoverSheetSlidingViewController *)self indirectPresentGestureRecognizer];
  indirectDismissGestureRecognizer = [(SBCoverSheetSlidingViewController *)self indirectDismissGestureRecognizer];
  scrunchDismissGestureRecognizer = [(SBCoverSheetSlidingViewController *)self scrunchDismissGestureRecognizer];
  if (([dismissAddendumGestureRecognizer state] - 1) > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = dismissAddendumGestureRecognizer;
  }

  if (([dismissGestureRecognizer state] - 1) <= 2)
  {
    v10 = dismissGestureRecognizer;

    v9 = v10;
  }

  if (([_grabberRecognizer state] - 1) <= 2)
  {
    v11 = _grabberRecognizer;

    v9 = v11;
  }

  if (([indirectPresentGestureRecognizer state] - 1) <= 2)
  {
    v12 = indirectPresentGestureRecognizer;

    v9 = v12;
  }

  if (([indirectDismissGestureRecognizer state] - 1) <= 2)
  {
    v13 = indirectDismissGestureRecognizer;

    v9 = v13;
  }

  if (([scrunchDismissGestureRecognizer state] - 1) <= 2)
  {
    v14 = scrunchDismissGestureRecognizer;

    v9 = v14;
  }

  return v9;
}

void __54__SBCoverSheetSlidingViewController__createProperties__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _animationTickForPresentationValue:1];
}

- (id)_grabberRecognizer
{
  systemGesturesDelegate = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  presentGestureRecognizer = [systemGesturesDelegate presentGestureRecognizer];

  return presentGestureRecognizer;
}

- (void)_resetScalingForTransitionIfNeeded
{
  if (self->_dismissalTransformMode == 2)
  {
    positionView = [(SBCoverSheetSlidingViewController *)self positionView];
    [positionView resetContentScalingAnimated:1];

    [(SBCoverSheetSlidingViewController *)self _viewVelocity];

    [(SBCoverSheetSlidingViewController *)self _transitionToPresentationState:1 forUserGesture:0 withVelocity:1 animated:?];
  }
}

void __54__SBCoverSheetSlidingViewController__createProperties__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _animationTickForPresentationValue:0];
}

- (void)_dismissInterstitialForTransitionIfNeeded
{
  delegate = [(SBCoverSheetSlidingViewController *)self delegate];
  if ([delegate coverSheetSlidingViewControllerIsDisplayingInterstitial:self] && self->_currentPresentationState != 1)
  {
    [delegate coverSheetSlidingViewControllerCleanupInterstitialTransition:self];
  }
}

void __54__SBCoverSheetSlidingViewController__createProperties__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _transitionTickForPresentationValue:1];
}

void __54__SBCoverSheetSlidingViewController__createProperties__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _transitionTickForPresentationValue:0];
}

- (SBCoverSheetSlidingViewController)initWithContentViewController:(id)controller canBePulledDown:(BOOL)down canBePulledUp:(BOOL)up dismissalPreemptingGestureRecognizer:(id)recognizer
{
  controllerCopy = controller;
  recognizerCopy = recognizer;
  v39.receiver = self;
  v39.super_class = SBCoverSheetSlidingViewController;
  v13 = [(SBCoverSheetSlidingViewController *)&v39 init];
  v14 = v13;
  if (v13)
  {
    [(SBCoverSheetSlidingViewController *)v13 _setIgnoreAppSupportedOrientations:1];
    v15 = +[SBHomeGestureDomain rootSettings];
    homeGestureSettings = v14->_homeGestureSettings;
    v14->_homeGestureSettings = v15;

    [(PTSettings *)v14->_homeGestureSettings addKeyObserver:v14];
    rootSettings = [MEMORY[0x277D02C20] rootSettings];
    lockScreenSettings = v14->_lockScreenSettings;
    v14->_lockScreenSettings = rootSettings;

    [(CSLockScreenSettings *)v14->_lockScreenSettings addKeyObserver:v14];
    coverSheetDismissGestureSettings = [(CSLockScreenSettings *)v14->_lockScreenSettings coverSheetDismissGestureSettings];
    [coverSheetDismissGestureSettings addKeyObserver:v14];

    v14->_dismissalSlidingMode = 1;
    v14->_dismissalTransformMode = 1;
    objc_storeStrong(&v14->_contentViewController, controller);
    mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
    homeButtonType = [mEMORY[0x277CF0CA8] homeButtonType];

    v22 = _os_feature_enabled_impl();
    coverSheetDismissGestureSettings2 = [(CSLockScreenSettings *)v14->_lockScreenSettings coverSheetDismissGestureSettings];
    v24 = v22 | ~[coverSheetDismissGestureSettings2 usesGrapeFlags];

    if (homeButtonType == 2)
    {
      v25 = 5;
    }

    else
    {
      v25 = 1;
    }

    v26 = [(SBHomeGesturePanGestureRecognizer *)[SBCoverSheetScreenEdgePanGestureRecognizer alloc] initWithTarget:v14 action:sel__handleDismissGesture_ type:v25 options:v24 & 1];
    dismissGestureRecognizer = v14->_dismissGestureRecognizer;
    v14->_dismissGestureRecognizer = &v26->super.super;

    [(UIScreenEdgePanGestureRecognizer *)v14->_dismissGestureRecognizer setEdges:4];
    [(SBScreenEdgePanGestureRecognizer *)v14->_dismissGestureRecognizer setAllowedTouchTypes:&unk_28336E100];
    [(SBScreenEdgePanGestureRecognizer *)v14->_dismissGestureRecognizer sbf_setPencilTouchesAllowed:v22];
    v28 = [(SBHomeGesturePanGestureRecognizer *)[SBCoverSheetScreenEdgePanGestureRecognizer alloc] initWithTarget:v14 action:sel__handleDismissGesture_ type:1 options:1];
    dismissAddendumGestureRecognizer = v14->_dismissAddendumGestureRecognizer;
    v14->_dismissAddendumGestureRecognizer = &v28->super.super;

    [(UIScreenEdgePanGestureRecognizer *)v14->_dismissAddendumGestureRecognizer setEdges:4];
    [(SBScreenEdgePanGestureRecognizer *)v14->_dismissAddendumGestureRecognizer setAllowedTouchTypes:&unk_28336E118];
    [(SBScreenEdgePanGestureRecognizer *)v14->_dismissAddendumGestureRecognizer sbf_setPencilTouchesAllowed:v22];
    [(SBCoverSheetSlidingViewController *)v14 _updateHomeGestureSettings:v14->_homeGestureSettings];
    coverSheetDismissGestureSettings3 = [(CSLockScreenSettings *)v14->_lockScreenSettings coverSheetDismissGestureSettings];
    [(SBCoverSheetSlidingViewController *)v14 _updateCoverSheetDismissSettings:coverSheetDismissGestureSettings3];

    v31 = [[SBCoverSheetSystemGesturesDelegate alloc] initWithViewController:v14 dismissGestureRecognizer:v14->_dismissGestureRecognizer dismissAddendumGestureRecognizer:v14->_dismissAddendumGestureRecognizer dismissalPreemptingGestureRecognizer:recognizerCopy];
    v32 = [[SBIndirectPanGestureRecognizer alloc] initWithTarget:v14 action:sel__handleDismissGesture_ edges:4];
    indirectDismissGestureRecognizer = v14->_indirectDismissGestureRecognizer;
    v14->_indirectDismissGestureRecognizer = v32;

    [(SBIndirectPanGestureRecognizer *)v14->_indirectDismissGestureRecognizer setName:@"indirectDismissCoverSheetGestureRecognizer"];
    [(SBIndirectPanGestureRecognizer *)v14->_indirectDismissGestureRecognizer setShouldInvertYAxis:1];
    [(SBCoverSheetSystemGesturesDelegate *)v31 setIndirectDismissGestureRecognizer:v14->_indirectDismissGestureRecognizer];
    [(SBIndirectPanGestureRecognizer *)v14->_indirectDismissGestureRecognizer setDelegate:v31];
    [(SBIndirectPanGestureRecognizer *)v14->_indirectDismissGestureRecognizer setActivationRecognitionDistance:80.0];
    [(SBIndirectPanGestureRecognizer *)v14->_indirectDismissGestureRecognizer setShouldRequireGestureToStartAtEdge:1];
    [(SBIndirectPanGestureRecognizer *)v14->_indirectDismissGestureRecognizer setHysteresis:0 forInputType:30.0];
    [(SBIndirectPanGestureRecognizer *)v14->_indirectDismissGestureRecognizer setHysteresis:1 forInputType:10.0];
    [(SBIndirectPanGestureRecognizer *)v14->_indirectDismissGestureRecognizer setTranslationAdjustmentBlock:&__block_literal_global_114];
    v34 = [[SBIndirectPanGestureRecognizer alloc] initWithTarget:v14 action:sel__handleIndirectPresentGesture_ edges:1];
    indirectPresentGestureRecognizer = v14->_indirectPresentGestureRecognizer;
    v14->_indirectPresentGestureRecognizer = v34;

    [(SBIndirectPanGestureRecognizer *)v14->_indirectPresentGestureRecognizer setName:@"indirectPresentCoverSheetGestureRecognizer"];
    [(SBIndirectPanGestureRecognizer *)v14->_indirectPresentGestureRecognizer setShouldInvertYAxis:1];
    [(SBCoverSheetSystemGesturesDelegate *)v31 setIndirectPresentGestureRecognizer:v14->_indirectPresentGestureRecognizer];
    [(SBIndirectPanGestureRecognizer *)v14->_indirectPresentGestureRecognizer setDelegate:v31];
    [(SBIndirectPanGestureRecognizer *)v14->_indirectPresentGestureRecognizer setOrientationProvider:v31];
    [(SBIndirectPanGestureRecognizer *)v14->_indirectPresentGestureRecognizer setActivationRecognitionDistance:80.0];
    [(SBIndirectPanGestureRecognizer *)v14->_indirectPresentGestureRecognizer setShouldRequireGestureToStartAtEdge:1];
    [(SBIndirectPanGestureRecognizer *)v14->_indirectPresentGestureRecognizer setHysteresis:0 forInputType:30.0];
    [(SBIndirectPanGestureRecognizer *)v14->_indirectPresentGestureRecognizer setHysteresis:1 forInputType:10.0];
    [(SBIndirectPanGestureRecognizer *)v14->_indirectPresentGestureRecognizer setTranslationAdjustmentBlock:&__block_literal_global_24];
    v36 = [[SBFluidScrunchGestureRecognizer alloc] initWithTarget:v14 action:sel__handleDismissGesture_];
    scrunchDismissGestureRecognizer = v14->_scrunchDismissGestureRecognizer;
    v14->_scrunchDismissGestureRecognizer = v36;

    [(SBFluidScrunchGestureRecognizer *)v14->_scrunchDismissGestureRecognizer setAllowedTouchTypes:&unk_28336E130];
    [(SBCoverSheetSystemGesturesDelegate *)v31 setScrunchDismissGestureRecognizer:v14->_scrunchDismissGestureRecognizer];
    [(SBFluidScrunchGestureRecognizer *)v14->_scrunchDismissGestureRecognizer setDelegate:v31];
    [(SBCoverSheetSystemGesturesDelegate *)v31 setContextProvider:v14];
    [(SBCoverSheetSlidingViewController *)v14 setSystemGesturesDelegate:v31];
    [(SBScreenEdgePanGestureRecognizer *)v14->_dismissGestureRecognizer setDelegate:v31];
    [(SBScreenEdgePanGestureRecognizer *)v14->_dismissAddendumGestureRecognizer setDelegate:v31];
    [(SBCoverSheetSlidingViewController *)v14 _createProperties];
    v14->_canBePulledDown = down;
    v14->_canBePulledUp = up;
    [(SBCoverSheetSlidingViewController *)v14 _addSystemGestureRecognizers];
    v14->_latestTransitionedPresentationState = 1;
    v14->_currentPresentationState = 1;
  }

  return v14;
}

double __134__SBCoverSheetSlidingViewController_initWithContentViewController_canBePulledDown_canBePulledUp_dismissalPreemptingGestureRecognizer___block_invoke_2(double a1)
{
  v2 = +[SBPlatformController sharedInstance];
  v3 = [v2 isRoundCornerPad];

  if (v3)
  {
    SBScreenDisplayCornerRadius();
  }

  return a1;
}

- (void)dealloc
{
  [(SBCoverSheetSlidingViewController *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBCoverSheetSlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v3 dealloc];
}

- (void)invalidate
{
  [(SBCoverSheetSlidingViewController *)self _removeSystemGestureRecognizers];
  suppressTouchCancellation = self->_suppressTouchCancellation;

  [(BSInvalidatable *)suppressTouchCancellation invalidate];
}

- (void)setPresented:(BOOL)presented forcingTransition:(BOOL)transition ignoringPreflightRequirements:(BOOL)requirements forUserGesture:(BOOL)gesture animated:(BOOL)animated withCompletion:(id)completion
{
  if (presented)
  {
    [(SBCoverSheetSlidingViewController *)self _presentCoverSheetAnimated:animated forcingTransition:transition forUserGesture:gesture withCompletion:completion];
  }

  else
  {
    [(SBCoverSheetSlidingViewController *)self _dismissCoverSheetAnimated:animated forcingTransition:transition ignoringPreflightRequirements:requirements withCompletion:completion];
  }
}

- (BOOL)canTransitionToPresented:(BOOL)presented
{
  presentedCopy = presented;
  systemGesturesDelegate = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  v5 = systemGesturesDelegate;
  if (presentedCopy)
  {
    isPresentGestureAllowedToBegin = [systemGesturesDelegate isPresentGestureAllowedToBegin];
  }

  else
  {
    isPresentGestureAllowedToBegin = [systemGesturesDelegate isDismissGestureAllowedToBegin];
  }

  v7 = isPresentGestureAllowedToBegin;

  return v7;
}

- (BOOL)isPresentGestureActive
{
  systemGesturesDelegate = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  isPresentGestureActive = [systemGesturesDelegate isPresentGestureActive];

  return isPresentGestureActive;
}

- (BOOL)isDismissGestureActive
{
  systemGesturesDelegate = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  isDismissGestureActive = [systemGesturesDelegate isDismissGestureActive];

  return isDismissGestureActive;
}

- (void)setDismissalSlidingMode:(int64_t)mode
{
  if (self->_dismissalSlidingMode != mode)
  {
    if (mode != 1 && (SBHomeGestureEnabled() & 1) == 0)
    {
      [SBCoverSheetSlidingViewController setDismissalSlidingMode:];
    }

    self->_dismissalSlidingMode = mode;
    if ([(SBCoverSheetSlidingViewController *)self isDismissGestureActive])
    {
      p_dismissAddendumGestureRecognizer = &self->_dismissAddendumGestureRecognizer;
      if (([(SBScreenEdgePanGestureRecognizer *)self->_dismissAddendumGestureRecognizer state]- 1) >= 2 && (p_dismissAddendumGestureRecognizer = &self->_dismissGestureRecognizer, ([(SBScreenEdgePanGestureRecognizer *)self->_dismissGestureRecognizer state]- 1) >= 2) && (p_dismissAddendumGestureRecognizer = &self->_indirectDismissGestureRecognizer, ([(SBIndirectPanGestureRecognizer *)self->_indirectDismissGestureRecognizer state]- 1) >= 2) && (p_dismissAddendumGestureRecognizer = &self->_scrunchDismissGestureRecognizer, ([(SBFluidScrunchGestureRecognizer *)self->_scrunchDismissGestureRecognizer state]- 1) > 1))
      {
        v6 = 0;
      }

      else
      {
        v6 = *p_dismissAddendumGestureRecognizer;
        if (v6)
        {
          if (CSFeatureEnabled())
          {
            [(SBCoverSheetSlidingViewController *)self _transitionToPresentationState:3 forUserGesture:1 withVelocity:1 animated:self->_lastGestureVelocity.y];
          }

          else
          {
            [(SBCoverSheetSlidingViewController *)self _transitionToViewControllerAppearState:3 ifNeeded:1 forUserGesture:1];
          }

          if (self->_dismissalSlidingMode == 1)
          {
            self->_performingCatchUpForPresentation = 0;
            v7[0] = MEMORY[0x277D85DD0];
            v7[1] = 3221225472;
            v7[2] = __61__SBCoverSheetSlidingViewController_setDismissalSlidingMode___block_invoke_2;
            v7[3] = &unk_2783A8C18;
            v7[4] = self;
            [(SBCoverSheetSlidingViewController *)self _startCatchupAnimationWithDuration:v7 completion:0.57];
          }
        }
      }
    }
  }
}

void __61__SBCoverSheetSlidingViewController_setDismissalSlidingMode___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1040));
  [WeakRetained coverSheetSlidingViewControllerCleanupInterstitialTransition:*(a1 + 32)];
}

- (BOOL)_isAnyGestureActivelyRecognized:(BOOL)recognized
{
  if (!recognized)
  {
    systemGesturesDelegate = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
    self->_anyGestureActivelyRecognizedCache = [systemGesturesDelegate isAnyGestureActivelyRecognized];
  }

  return self->_anyGestureActivelyRecognizedCache;
}

- (void)setDismissGesturesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  dismissGestureRecognizer = [(SBCoverSheetSlidingViewController *)self dismissGestureRecognizer];
  [dismissGestureRecognizer setEnabled:enabledCopy];

  dismissAddendumGestureRecognizer = [(SBCoverSheetSlidingViewController *)self dismissAddendumGestureRecognizer];
  [dismissAddendumGestureRecognizer setEnabled:enabledCopy];
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  if (CSFeatureEnabled())
  {
    backgroundView = self->_backgroundView;
    if (backgroundView != viewCopy)
    {
      [(UIView *)backgroundView removeFromSuperview];
      objc_storeStrong(&self->_backgroundView, view);
      viewIfLoaded = [(SBCoverSheetSlidingViewController *)self viewIfLoaded];
      [viewIfLoaded insertSubview:viewCopy atIndex:0];
    }
  }
}

- (CGRect)_contentViewFrame
{
  view = [(SBCoverSheetSlidingViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (objc_opt_respondsToSelector())
  {
    [(SBCoverSheetSlidingViewControllerContentViewController *)self->_contentViewController frameForContentViewForContainerBounds:v5, v7, v9, v11];
    v5 = v12;
    v7 = v13;
    v9 = v14;
    v11 = v15;
  }

  v16 = v5;
  v17 = v7;
  v18 = v9;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D65F80]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v15 = [v3 initWithFrame:?];

  [v15 setAutoresizingMask:18];
  [v15 setOpaque:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v15 setBackgroundColor:clearColor];

  v6 = [SBCoverSheetPositionView alloc];
  [v15 bounds];
  v7 = [(SBCoverSheetPositionView *)v6 initWithFrame:?];
  positionView = self->_positionView;
  self->_positionView = v7;

  [(SBCoverSheetPositionView *)self->_positionView setAutoresizingMask:18];
  [(SBCoverSheetPositionView *)self->_positionView setDelegate:self];
  [v15 addSubview:self->_positionView];
  v9 = self->_positionView;
  [v15 bounds];
  [(SBCoverSheetPositionView *)v9 setFrame:?];
  [(SBCoverSheetSlidingViewController *)self setView:v15];
  view = [(SBCoverSheetSlidingViewControllerContentViewController *)self->_contentViewController view];
  [(SBCoverSheetSlidingViewController *)self _contentViewFrame];
  [view setFrame:?];

  contentViewController = self->_contentViewController;
  contentView = [(SBCoverSheetPositionView *)self->_positionView contentView];
  [(SBCoverSheetSlidingViewController *)self bs_addChildViewController:contentViewController withSuperview:contentView];

  if (CSFeatureEnabled())
  {
    backgroundView = self->_backgroundView;
    if (backgroundView)
    {
      [v15 insertSubview:backgroundView atIndex:0];
    }
  }

  systemGesturesDelegate = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  [systemGesturesDelegate setSyntheticAppearState:0];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SBCoverSheetSlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v4 viewDidLoad];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SBCoverSheetSlidingViewController_viewDidLoad__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  if (viewDidLoad_onceToken != -1)
  {
    dispatch_once(&viewDidLoad_onceToken, block);
  }
}

uint64_t __48__SBCoverSheetSlidingViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __48__SBCoverSheetSlidingViewController_viewDidLoad__block_invoke_2;
  v2[3] = &unk_2783A8C18;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v2];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = SBCoverSheetSlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v7 viewWillAppear:appear];
  view = [(SBCoverSheetSlidingViewControllerContentViewController *)self->_contentViewController view];
  contentView = [(SBCoverSheetPositionView *)self->_positionView contentView];
  superview = [view superview];

  if (superview != contentView)
  {
    [contentView bounds];
    [view setFrame:?];
    [contentView addSubview:view];
  }

  [(SBCoverSheetSlidingViewController *)self _addSystemGestureRecognizers];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = SBCoverSheetSlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v6 viewDidAppear:appear];
  systemGesturesDelegate = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  syntheticAppearState = [systemGesturesDelegate syntheticAppearState];

  if (!syntheticAppearState)
  {
    if (CSFeatureEnabled())
    {
      [(SBCoverSheetSlidingViewController *)self _transitionToPresentationState:1 forUserGesture:0 withVelocity:0 animated:0.0];
    }

    else
    {
      [(SBCoverSheetSlidingViewController *)self _transitionToViewControllerAppearState:2];
    }
  }
}

- (BOOL)shouldAutorotate
{
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet"))
  {
    return 1;
  }

  contentViewController = self->_contentViewController;

  return [(SBCoverSheetSlidingViewControllerContentViewController *)contentViewController shouldAutorotate];
}

- (BOOL)isBottomMostSlider
{
  selfCopy = self;
  delegate = [(SBCoverSheetSlidingViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate hasContentUnderCoverSheetSlidingViewController:selfCopy];

  return selfCopy ^ 1;
}

- (BOOL)isPresentingDismissableOffScreenInterstitial
{
  _isPresentingInterstitialWhileOffScreen = [(SBCoverSheetSlidingViewController *)self _isPresentingInterstitialWhileOffScreen];
  if (_isPresentingInterstitialWhileOffScreen)
  {
    delegate = [(SBCoverSheetSlidingViewController *)self delegate];
    v5 = [delegate coverSheetSlidingViewControllerIsInterstitialDismissalAllowed:self];

    LOBYTE(_isPresentingInterstitialWhileOffScreen) = v5;
  }

  return _isPresentingInterstitialWhileOffScreen;
}

- (id)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_presentCoverSheetAnimated:(BOOL)animated forcingTransition:(BOOL)transition forUserGesture:(BOOL)gesture withCompletion:(id)completion
{
  gestureCopy = gesture;
  transitionCopy = transition;
  animatedCopy = animated;
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v11 = SBLogCoverSheet();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"not ";
    if (animatedCopy)
    {
      v13 = &stru_283094718;
    }

    else
    {
      v13 = @"not ";
    }

    if (gestureCopy)
    {
      v12 = &stru_283094718;
    }

    v14 = 138543618;
    v15 = v13;
    v16 = 2114;
    v17 = v12;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Starting %{public}@animated presentation %{public}@for user gesture", &v14, 0x16u);
  }

  if (CSFeatureEnabled())
  {
    [(SBCoverSheetSlidingViewController *)self _transitionToPresentationState:2 forUserGesture:0 withVelocity:animatedCopy animated:0.0];
  }

  else
  {
    [(SBCoverSheetSlidingViewController *)self _transitionToViewControllerAppearState:1 forUserGesture:gestureCopy];
  }

  [(SBCoverSheetSlidingViewController *)self _finishTransitionToPresented:1 forcingTransition:transitionCopy ignoringPreflightRequirements:0 animated:animatedCopy withCompletion:completionCopy];
}

- (void)_dismissCoverSheetAnimated:(BOOL)animated forcingTransition:(BOOL)transition ignoringPreflightRequirements:(BOOL)requirements withCompletion:(id)completion
{
  requirementsCopy = requirements;
  transitionCopy = transition;
  animatedCopy = animated;
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v11 = SBLogCoverSheet();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"not ";
    if (animatedCopy)
    {
      v12 = &stru_283094718;
    }

    v15 = 138543362;
    v16 = v12;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Starting %{public}@animated dismissal", &v15, 0xCu);
  }

  if (CSFeatureEnabled())
  {
    [(SBCoverSheetSlidingViewController *)self _transitionToPresentationState:3 forUserGesture:0 withVelocity:animatedCopy animated:0.0];
  }

  else
  {
    [(SBCoverSheetSlidingViewController *)self _transitionToViewControllerAppearState:3];
  }

  systemGesturesDelegate = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  syntheticAppearState = [systemGesturesDelegate syntheticAppearState];

  [(SBCoverSheetSlidingViewController *)self _finishTransitionToPresented:(syntheticAppearState - 1) < 2 forcingTransition:transitionCopy ignoringPreflightRequirements:requirementsCopy animated:animatedCopy withCompletion:completionCopy];
}

- (void)_handlePresentGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  state2 = [(SBScreenEdgePanGestureRecognizer *)self->_dismissGestureRecognizer state];
  state3 = [(SBScreenEdgePanGestureRecognizer *)self->_dismissAddendumGestureRecognizer state];
  if ((state2 - 1) <= 1)
  {
    [SBCoverSheetSlidingViewController _handlePresentGesture:];
  }

  if ((state3 - 1) <= 1)
  {
    [SBCoverSheetSlidingViewController _handlePresentGesture:];
  }

  [(SBCoverSheetSlidingViewController *)self _logPresentGestureState:state];
  if (state > 3)
  {
    if ((state - 4) < 2)
    {
      [(SBCoverSheetSlidingViewController *)self _cancelTransitionForGesture:gestureCopy];
    }

LABEL_12:
    [(BSInvalidatable *)self->_suppressTouchCancellation invalidate];
    goto LABEL_17;
  }

  if (state != 1)
  {
    if (state == 2)
    {
      [(SBCoverSheetSlidingViewController *)self _presentOrDismissGestureChangedWithGestureRecognizer:gestureCopy];
      goto LABEL_17;
    }

    if (state == 3)
    {
      [(SBCoverSheetSlidingViewController *)self _presentOrDismissGestureEndedWithGestureRecognizer:gestureCopy];
    }

    goto LABEL_12;
  }

  if (SBSIsSystemApertureAvailable())
  {
    v8 = [(SBProximitySensorManager *)self->_proximitySensorManager suppressBacklightChangesForReason:@"CSPresentation"];
    suppressTouchCancellation = self->_suppressTouchCancellation;
    self->_suppressTouchCancellation = v8;
  }

  [(SBCoverSheetSlidingViewController *)self _presentGestureBeganWithGestureRecognizer:gestureCopy];
  v10 = MEMORY[0x277D75D18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__SBCoverSheetSlidingViewController__handlePresentGesture___block_invoke;
  v11[3] = &unk_2783A92D8;
  v11[4] = self;
  v12 = gestureCopy;
  [v10 _performWithoutRetargetingAnimations:v11];

LABEL_17:
}

- (void)_handleIndirectPresentGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if ((state - 4) < 2)
  {
    self->_indirectPresentGestureCalledBegin = 0;
    [(SBCoverSheetSlidingViewController *)self _cancelTransitionForGesture:gestureCopy];
  }

  else if (state == 3)
  {
    self->_indirectPresentGestureCalledBegin = 0;
    [(SBCoverSheetSlidingViewController *)self _presentOrDismissGestureEndedWithGestureRecognizer:gestureCopy];
  }

  else if (state == 2)
  {
    if (self->_indirectPresentGestureCalledBegin)
    {
      [(SBCoverSheetSlidingViewController *)self _presentOrDismissGestureChangedWithGestureRecognizer:gestureCopy];
    }

    else
    {
      view = [(SBCoverSheetSlidingViewController *)self view];
      [gestureCopy translationInView:view];
      v8 = v7;

      if (v8 != 0.0)
      {
        self->_indirectPresentGestureCalledBegin = 1;
        [(SBCoverSheetSlidingViewController *)self _presentGestureBeganWithGestureRecognizer:gestureCopy];
        v9 = MEMORY[0x277D75D18];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __67__SBCoverSheetSlidingViewController__handleIndirectPresentGesture___block_invoke;
        v10[3] = &unk_2783A92D8;
        v10[4] = self;
        v11 = gestureCopy;
        [v9 _performWithoutRetargetingAnimations:v10];
      }
    }
  }
}

- (void)_handleDismissGesture:(id)gesture
{
  gestureCopy = gesture;
  _grabberRecognizer = [(SBCoverSheetSlidingViewController *)self _grabberRecognizer];
  state = [_grabberRecognizer state];

  state2 = [(SBScreenEdgePanGestureRecognizer *)gestureCopy state];
  if ((state - 1) <= 1)
  {
    [SBCoverSheetSlidingViewController _handleDismissGesture:];
  }

  [(SBCoverSheetSlidingViewController *)self _logDismissGestureState:state2 forAddendumGesture:self->_dismissAddendumGestureRecognizer == gestureCopy];
  if (state2 > 3)
  {
    v7 = gestureCopy;
    if ((state2 - 4) >= 2)
    {
      goto LABEL_13;
    }

    [(SBCoverSheetSlidingViewController *)self _cancelTransitionForGesture:gestureCopy];
  }

  else
  {
    if (state2 == 1)
    {
      [(SBCoverSheetSlidingViewController *)self _dismissGestureBeganWithGestureRecognizer:gestureCopy];
    }

    else
    {
      v7 = gestureCopy;
      if (state2 != 2)
      {
        if (state2 != 3)
        {
          goto LABEL_13;
        }

        [(SBCoverSheetSlidingViewController *)self _presentOrDismissGestureEndedWithGestureRecognizer:gestureCopy];
        goto LABEL_12;
      }
    }

    [(SBCoverSheetSlidingViewController *)self _dismissGestureChangedWithGestureRecognizer:gestureCopy];
  }

LABEL_12:
  v7 = gestureCopy;
LABEL_13:
}

- (void)_presentGestureBeganWithGestureRecognizer:(id)recognizer
{
  v21 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  currentPresentationState = [(SBCoverSheetSlidingViewController *)self currentPresentationState];
  if (currentPresentationState != 7)
  {
    v6 = currentPresentationState;
    v7 = SBLogDashBoard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(SBCoverSheetSlidingViewController *)self stringForPresentationState:v6];
      v19 = 138412290;
      v20 = v8;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "CoverSheet present gesture began while in presentation state: %@, forcing to dismissed", &v19, 0xCu);
    }

    [(SBCoverSheetSlidingViewController *)self _viewVelocity];
    [(SBCoverSheetSlidingViewController *)self _transitionToPresentationState:7 forUserGesture:0 withVelocity:0 animated:?];
  }

  delegate = [(SBCoverSheetSlidingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate coverSheetSlidingViewControllerUserPresentGestureBegan:self];
  }

  if (self->_indirectPresentGestureRecognizer == recognizerCopy)
  {
    [(SBCoverSheetSlidingViewController *)self _locationForGesture:recognizerCopy];
    self->_initialTouchOffsetFromScreenEdge = fmax(v10, 0.0);
  }

  v11 = +[SBReachabilityManager sharedInstance];
  reachabilityModeActive = [v11 reachabilityModeActive];

  if (reachabilityModeActive)
  {
    self->_performingCatchUpForPresentation = 1;
    [(SBCoverSheetSlidingViewController *)self _startCatchupAnimationWithDuration:0 completion:0.35];
  }

  if (!self->_frameRateAssertion)
  {
    v13 = objc_alloc(MEMORY[0x277D65E70]);
    v22 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    v14 = [v13 initWithFrameRateRange:1114125 highFrameRateReason:{*&v22.minimum, *&v22.maximum, *&v22.preferred}];
    frameRateAssertion = self->_frameRateAssertion;
    self->_frameRateAssertion = v14;
  }

  if (CSFeatureEnabled())
  {
    [(SBCoverSheetSlidingViewController *)self _transitionToPresentationState:2 forUserGesture:1 withVelocity:1 animated:self->_lastGestureVelocity.y];
  }

  else
  {
    [(SBCoverSheetSlidingViewController *)self _transitionToViewControllerAppearState:1 ifNeeded:0 forUserGesture:1];
  }

  v16 = +[SBReachabilityManager sharedInstance];
  reachabilityModeActive2 = [v16 reachabilityModeActive];

  if (reachabilityModeActive2)
  {
    v18 = +[SBReachabilityManager sharedInstance];
    [v18 deactivateReachability];
  }
}

- (void)_dismissGestureBeganWithGestureRecognizer:(id)recognizer
{
  v24 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  currentPresentationState = [(SBCoverSheetSlidingViewController *)self currentPresentationState];
  if (currentPresentationState != 1)
  {
    v6 = currentPresentationState;
    if (![(SBCoverSheetSlidingViewController *)self _isPresentingAnyInterstitialForGestureRecognizer:recognizerCopy])
    {
      v7 = SBLogDashBoard();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(SBCoverSheetSlidingViewController *)self stringForPresentationState:v6];
        v22 = 138412290;
        v23 = v8;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "CoverSheet dismiss gesture began while in presentation state: %@, forcing to fully presented", &v22, 0xCu);
      }

      [(SBCoverSheetSlidingViewController *)self _viewVelocity];
      [(SBCoverSheetSlidingViewController *)self _transitionToPresentationState:1 forUserGesture:0 withVelocity:0 animated:?];
    }
  }

  [(SBCoverSheetSlidingViewController *)self _handleDismissGestureBegan];
  delegate = [(SBCoverSheetSlidingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate coverSheetSlidingViewControllerUserDismissGestureBegan:self];
  }

  if (self->_indirectDismissGestureRecognizer == recognizerCopy)
  {
    view = [(SBCoverSheetSlidingViewController *)self view];
    [view bounds];
    Height = CGRectGetHeight(v26);
    [(SBCoverSheetSlidingViewController *)self _locationForGesture:recognizerCopy];
    v13 = Height - v12;

    self->_initialTouchOffsetFromScreenEdge = fmax(v13, 0.0);
  }

  if (!self->_frameRateAssertion)
  {
    v14 = objc_alloc(MEMORY[0x277D65E70]);
    v25 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    v15 = [v14 initWithFrameRateRange:1114125 highFrameRateReason:{*&v25.minimum, *&v25.maximum, *&v25.preferred}];
    frameRateAssertion = self->_frameRateAssertion;
    self->_frameRateAssertion = v15;
  }

  if (CSFeatureEnabled())
  {
    [(SBCoverSheetSlidingViewController *)self _viewVelocity];
    [(SBCoverSheetSlidingViewController *)self _transitionToPresentationState:3 forUserGesture:1 withVelocity:1 animated:?];
  }

  else
  {
    [(SBCoverSheetSlidingViewController *)self _transitionToViewControllerAppearState:3 ifNeeded:0 forUserGesture:1];
  }

  if (![(SBCoverSheetSlidingViewController *)self _isPresentingAnyInterstitialForGestureRecognizer:recognizerCopy])
  {
    [(SBCoverSheetSlidingViewController *)self _velocityForGesture:recognizerCopy];
    v18 = v17;
    v19 = SBLogCoverSheet();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [SBCoverSheetSlidingViewController _dismissGestureBeganWithGestureRecognizer:];
    }

    positionView = [(SBCoverSheetSlidingViewController *)self positionView];
    v21 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, v18}];
    [positionView _setVelocity:v21 forKey:@"position"];

    self->_performingCatchUpForPresentation = 0;
    [(SBCoverSheetSlidingViewController *)self _startCatchupAnimationWithDuration:0 completion:0.2];
  }
}

- (void)_presentOrDismissGestureChangedWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  [(SBCoverSheetSlidingViewController *)self _locationForGesture:recognizerCopy];
  v6 = v5;
  v8 = v7;
  [(SBCoverSheetSlidingViewController *)self setLastTouchLocation:?];
  if ([(SBCoverSheetSlidingViewController *)self _isPresentingAnyInterstitialForGestureRecognizer:recognizerCopy])
  {
    view = SBLogCoverSheet();
    if (os_log_type_enabled(view, OS_LOG_TYPE_DEBUG))
    {
      [SBCoverSheetSlidingViewController _presentOrDismissGestureChangedWithGestureRecognizer:];
    }
  }

  else
  {
    view = [(SBCoverSheetSlidingViewController *)self view];
    [(SBIndirectPanGestureRecognizer *)recognizerCopy translationInView:view];
    v11 = v10;
    v13 = v12;
    [(SBIndirectPanGestureRecognizer *)recognizerCopy velocityInView:view];
    v15 = v14;
    v17 = v16;
    [(SBCoverSheetSlidingViewController *)self setLastGestureVelocity:?];
    v18 = +[SBAssistantController sharedInstance];
    [v18 dismissAssistantViewInEverySceneIfNecessaryForGestureTranslation:v11 velocity:{v13, v15, v17}];

    if ([(SBCoverSheetSlidingViewController *)self _shouldRubberBandForGestureRecognizer:recognizerCopy])
    {
      [(CSLockScreenSettings *)self->_lockScreenSettings unlockPasscodeThreshold];
      v20 = v19;
      indirectDismissGestureRecognizer = self->_indirectDismissGestureRecognizer;
      if (indirectDismissGestureRecognizer == recognizerCopy && [(SBIndirectPanGestureRecognizer *)indirectDismissGestureRecognizer currentInputType]== 1)
      {
        [(SBIndirectPanGestureRecognizer *)self->_indirectDismissGestureRecognizer activationRecognitionDistance];
        v23 = v22;
        [(SBIndirectPanGestureRecognizer *)self->_indirectDismissGestureRecognizer hysteresisForInputType:1];
        v20 = v23 - v24;
      }

      view2 = [(SBCoverSheetSlidingViewController *)self view];
      [view2 bounds];
      v27 = v26 - v8;

      v28 = v27 >= v20;
      if (v27 < v20)
      {
        [(SBCoverSheetSlidingViewController *)self _adjustedTouchLocationForCurrentDismissalMode:v6, v8];
      }

      else
      {
        delegate = [(SBCoverSheetSlidingViewController *)self delegate];
        [delegate coverSheetSlidingViewControllerDidPassRubberBandThreshold:self];

        [(SBCoverSheetSlidingViewController *)self _finalLocationForTransitionToPresented:1];
      }

      v6 = v30;
      v8 = v31;
    }

    else
    {
      v28 = 0;
    }

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __90__SBCoverSheetSlidingViewController__presentOrDismissGestureChangedWithGestureRecognizer___block_invoke;
    v35[3] = &unk_2783A8C40;
    v35[4] = self;
    *&v35[5] = v6;
    *&v35[6] = v8;
    [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v35];
    if (v28)
    {
      v32 = SBLogCoverSheet();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *v34 = 0;
        _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_INFO, "Cancelling dismiss gesture for rubber band threshold passed.", v34, 2u);
      }

      [(SBIndirectPanGestureRecognizer *)recognizerCopy setEnabled:0];
      [(SBIndirectPanGestureRecognizer *)recognizerCopy setEnabled:1];
      v33 = self->_indirectDismissGestureRecognizer;
      if (v33 == recognizerCopy)
      {
        [(SBIndirectPanGestureRecognizer *)v33 setPausedUntilTouchedUpOrMovedAwayFromEdge:1];
      }
    }
  }
}

- (void)_dismissGestureChangedWithGestureRecognizer:(id)recognizer
{
  v14 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  [(SBCoverSheetSlidingViewController *)self _locationForGesture:recognizerCopy];
  v6 = v5;
  view = [(SBCoverSheetSlidingViewController *)self view];
  [view bounds];
  Height = CGRectGetHeight(v15);

  v9 = (Height - v6) / Height;
  v10 = SBLogCoverSheet();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = v9;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "_dismissGestureChangedWithGestureRecognizer gestureProgress: %.2f", &v12, 0xCu);
  }

  if ([(SBCoverSheetSlidingViewController *)self _isPresentingAnyInterstitialForGestureRecognizer:recognizerCopy])
  {
    delegate = [(SBCoverSheetSlidingViewController *)self delegate];
    [delegate coverSheetSlidingViewController:self dismissGestureChangedWithProgress:v9];
  }

  [(SBCoverSheetSlidingViewController *)self _presentOrDismissGestureChangedWithGestureRecognizer:recognizerCopy];
}

- (void)_presentOrDismissGestureEndedWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (self->_indirectPresentGestureRecognizer == recognizerCopy || self->_indirectDismissGestureRecognizer == recognizerCopy)
  {
    self->_initialTouchOffsetFromScreenEdge = 0.0;
  }

  v17 = recognizerCopy;
  [(SBFFrameRateAssertion *)self->_frameRateAssertion invalidate];
  frameRateAssertion = self->_frameRateAssertion;
  self->_frameRateAssertion = 0;

  v6 = [(SBCoverSheetSlidingViewController *)self _shouldEndPresentedForEndingGestureRecognizer:v17];
  v7 = objc_opt_class();
  v8 = SBSafeCast(v7, v17);
  if (v8)
  {
    if ([(SBCoverSheetSlidingViewController *)self _shouldRubberBandForGestureRecognizer:v17])
    {
LABEL_6:
      v6 = 1;
      goto LABEL_7;
    }

    if ([(SBIndirectPanGestureRecognizer *)v8 endReason]== 4)
    {
      if (self->_indirectPresentGestureRecognizer == v17)
      {
        goto LABEL_6;
      }

      v6 = (self->_indirectDismissGestureRecognizer != v17) & v6;
    }

    else
    {
      [(SBCoverSheetSlidingViewController *)self _locationForGesture:v8];
      v12 = v11;
      [(SBCoverSheetSlidingViewController *)self _averageVelocityForGesture:v8];
      v14 = v12 + v13 * 0.06;
      if (v8 == self->_indirectPresentGestureRecognizer)
      {
        if (v14 > 80.0)
        {
          goto LABEL_6;
        }
      }

      else if (v8 == self->_indirectDismissGestureRecognizer)
      {
        view = [(SBCoverSheetSlidingViewController *)self view];
        [view bounds];
        v16 = CGRectGetHeight(v19) + -80.0;

        if (v14 <= v16)
        {
          v6 = 0;
        }
      }
    }
  }

LABEL_7:
  if ((CSFeatureEnabled() & 1) == 0)
  {
    if (v6)
    {
      v9 = 1;
    }

    else
    {
      v9 = 3;
    }

    [(SBCoverSheetSlidingViewController *)self _transitionToViewControllerAppearState:v9 ifNeeded:1 forUserGesture:1];
  }

  if ([(SBCoverSheetSlidingViewController *)self _isPresentingInterstitialForGestureRecognizer:v17])
  {
    [(SBCoverSheetSlidingViewController *)self _transitionToViewControllerAppearState:2 ifNeeded:0 forUserGesture:0];
  }

  else if ([(SBCoverSheetSlidingViewController *)self _isPresentingAnyInterstitialForGestureRecognizer:v17])
  {
    delegate = [(SBCoverSheetSlidingViewController *)self delegate];
    [delegate coverSheetSlidingViewControllerDidEndDismissGestureOverInterstitial:self];
  }

  else
  {
    [(SBCoverSheetSlidingViewController *)self _finishTransitionToPresented:v6 animated:1 withCompletion:0];
  }
}

- (void)_finishTransitionToPresented:(BOOL)presented forcingTransition:(BOOL)transition ignoringPreflightRequirements:(BOOL)requirements animated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  transitionCopy = transition;
  presentedCopy = presented;
  v60 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (self->_dismissalSlidingMode != 1 && !presentedCopy)
  {
    [SBCoverSheetSlidingViewController _finishTransitionToPresented:forcingTransition:ignoringPreflightRequirements:animated:withCompletion:];
  }

  delegate = [(SBCoverSheetSlidingViewController *)self delegate];
  if (!presentedCopy && (objc_opt_respondsToSelector() & 1) != 0 && ([delegate coverSheetSlidingViewControllerShouldAllowDismissal:self] & 1) == 0)
  {
    v19 = v37;
    [(SBCoverSheetSlidingViewController *)self _presentCoverSheetAnimated:1 forUserGesture:0 withCompletion:v37];
    goto LABEL_49;
  }

  v13 = arc4random_uniform(0x2710u);
  v14 = SBLogCoverSheet();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"Not ";
    if (animatedCopy)
    {
      v15 = &stru_283094718;
    }

    *buf = 138412802;
    *&buf[4] = v15;
    if (presentedCopy)
    {
      v16 = @"presented";
    }

    else
    {
      v16 = @"dismissed";
    }

    v58 = 1024;
    *v59 = v13;
    *&v59[4] = 2112;
    *&v59[6] = v16;
    _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Start %@Animation %d to %@", buf, 0x1Cu);
  }

  if (!CSFeatureEnabled())
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate coverSheetSlidingViewController:self committingToEndPresented:presentedCopy];
      [(SBCoverSheetSlidingViewController *)self _commitTransitionToAppeared:presentedCopy animated:animatedCopy];
    }

    goto LABEL_25;
  }

  if (!transitionCopy)
  {
    if (!requirements)
    {
      if (presentedCopy || ([delegate coverSheetSlidingViewControllerPerformExternalUnlockIfNeeded:self] & 1) == 0 && (objc_msgSend(delegate, "coverSheetSlidingViewControllerPerformInterstitialTransitionIfNeeded:", self) & 1) == 0)
      {
        goto LABEL_17;
      }

      [(SBCoverSheetSlidingViewController *)self _resetScalingForTransitionIfNeeded];
    }

    [(SBCoverSheetSlidingViewController *)self _viewVelocity];
    [(SBCoverSheetSlidingViewController *)self _transitionToPresentationState:4 forUserGesture:0 withVelocity:animatedCopy animated:?];
    v18 = 0;
    goto LABEL_26;
  }

  [(SBCoverSheetSlidingViewController *)self _dismissInterstitialForTransitionIfNeeded];
LABEL_17:
  if (objc_opt_respondsToSelector())
  {
    [delegate coverSheetSlidingViewController:self committingToEndPresented:presentedCopy];
    [(SBCoverSheetSlidingViewController *)self _commitTransitionToAppeared:presentedCopy animated:animatedCopy];
  }

  if (presentedCopy)
  {
    v17 = 6;
  }

  else
  {
    v17 = 5;
  }

  [(SBCoverSheetSlidingViewController *)self _viewVelocity];
  [(SBCoverSheetSlidingViewController *)self _transitionToPresentationState:v17 forUserGesture:0 withVelocity:animatedCopy animated:?];
  [(SBCoverSheetSlidingViewController *)self _dismissInterstitialForTransitionIfNeeded];
LABEL_25:
  v18 = 1;
LABEL_26:
  v19 = v37;
  latestTransitionedPresentationState = self->_latestTransitionedPresentationState;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __138__SBCoverSheetSlidingViewController__finishTransitionToPresented_forcingTransition_ignoringPreflightRequirements_animated_withCompletion___block_invoke;
  v50[3] = &unk_2783B3068;
  if (presentedCopy)
  {
    v21 = 1;
  }

  else
  {
    v21 = 7;
  }

  v54 = presentedCopy;
  v50[4] = self;
  v53 = v13;
  v55 = animatedCopy;
  v56 = v18;
  v51 = v37;
  v52 = v21;
  v22 = MEMORY[0x223D6F7F0](v50);
  [(SBCoverSheetSlidingViewController *)self _finalLocationForTransitionToPresented:presentedCopy];
  v24 = v23;
  v26 = v25;
  if (latestTransitionedPresentationState != v21)
  {
    [(SBCoverSheetSlidingViewController *)self _willTranslateToPresented:presentedCopy];
  }

  if (animatedCopy)
  {
    [(SBCoverSheetSlidingViewController *)self _viewVelocity];
    v28 = v27;
    v29 = SBLogCoverSheet();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      [(UIViewFloatAnimatableProperty *)self->_progressProperty velocity];
      *buf = 134218240;
      *&buf[4] = v28;
      v58 = 2048;
      *v59 = v30;
      _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "Assigning gesture velocity: %.2f to property with existing velocity: %.2f", buf, 0x16u);
    }

    [(UIViewFloatAnimatableProperty *)self->_progressProperty setVelocity:v28];
    v31 = CSFeatureEnabled();
    if (v18 && v31)
    {
      [delegate coverSheetSlidingViewController:self prepareToAnimateIconFlyInForPresenting:presentedCopy withVelocity:v28];
      [(SBCoverSheetSlidingViewController *)self _performAppFlyInToPresented:presentedCopy animated:1 velocity:v28];
    }

    coverSheetTransitionsSettings = [(CSLockScreenSettings *)self->_lockScreenSettings coverSheetTransitionsSettings];
    transitionSettings = [(SBCoverSheetSlidingViewController *)self transitionSettings];
    transitionStyle = [transitionSettings transitionStyle];

    if (transitionStyle == 1)
    {
      [coverSheetTransitionsSettings inPlaceDamping];
      [coverSheetTransitionsSettings inPlaceResponse];
    }

    else
    {
      [coverSheetTransitionsSettings damping];
      [coverSheetTransitionsSettings response];
    }

    v19 = v37;
    *buf = 0;
    v49 = 0;
    convertDampingRatioAndResponseToTensionAndFriction();
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __138__SBCoverSheetSlidingViewController__finishTransitionToPresented_forcingTransition_ignoringPreflightRequirements_animated_withCompletion___block_invoke_115;
    v46[3] = &unk_2783B3090;
    v46[4] = self;
    v46[5] = v24;
    v46[6] = v26;
    v47 = v18;
    v46[7] = latestTransitionedPresentationState;
    v46[8] = v21;
    v48 = presentedCopy;
    *&v46[9] = v28;
    [MEMORY[0x277D75D18] _animateUsingSpringWithTension:0 friction:v46 interactive:v22 animations:*buf completion:0.0];
  }

  else
  {
    [(SBCoverSheetSlidingViewController *)self _performAppFlyInToPresented:presentedCopy animated:0 velocity:-1.0];
    v35 = MEMORY[0x277D75D18];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __138__SBCoverSheetSlidingViewController__finishTransitionToPresented_forcingTransition_ignoringPreflightRequirements_animated_withCompletion___block_invoke_3;
    v38[3] = &unk_2783B30B8;
    v38[4] = self;
    v40 = v24;
    v41 = v26;
    v44 = v18;
    v42 = latestTransitionedPresentationState;
    v43 = v21;
    v45 = presentedCopy;
    v39 = v22;
    [v35 _performWithoutRetargetingAnimations:v38];
  }

LABEL_49:
}

void __138__SBCoverSheetSlidingViewController__finishTransitionToPresented_forcingTransition_ignoringPreflightRequirements_animated_withCompletion___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(a1 + 60))
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 32) activeGestureRecognizer];
  v7 = v6;
  if (v6 && ([v6 _hasUnmetFailureRequirements] & 1) == 0)
  {
    v22 = [v7 state];
    v8 = v22 != 3;
    if ((a3 & 1) == 0 && v22 != 3)
    {
      v23 = SBLogCoverSheet();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v34 = v7;
        *&v34[8] = 1024;
        *&v34[10] = [v7 _hasUnmetFailureRequirements];
        _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_DEFAULT, "transition was not retargeted but there is an active gesture:\n\t%@\n\t_hasUnmetFailureRequirements: %{BOOL}d", buf, 0x12u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  if ((a3 & 1) != 0 || v8)
  {
    v18 = SBLogCoverSheet();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"not ";
      v20 = *(a1 + 56);
      if (a3)
      {
        v19 = &stru_283094718;
      }

      *buf = 67109378;
      *v34 = v20;
      *&v34[4] = 2112;
      *&v34[6] = v19;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "Animation %d %@retargeted -> not doing anything", buf, 0x12u);
    }

    v21 = *(a1 + 40);
    if (v21)
    {
      (*(v21 + 16))();
    }
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __138__SBCoverSheetSlidingViewController__finishTransitionToPresented_forcingTransition_ignoringPreflightRequirements_animated_withCompletion___block_invoke_101;
    block[3] = &unk_2783B3040;
    objc_copyWeak(&v28, &location);
    v9 = *(a1 + 56);
    v31 = *(a1 + 60);
    v29 = v9;
    v30 = v5;
    v27 = *(a1 + 40);
    v10 = dispatch_block_create(0, block);
    v11 = SBLogCoverSheet();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 60))
      {
        v12 = @"presentation";
      }

      else
      {
        v12 = @"dismissal";
      }

      v13 = MEMORY[0x223D6F7F0](v10);
      *buf = 138412546;
      *v34 = v12;
      *&v34[8] = 2048;
      *&v34[10] = v13;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Created %@ completionBlock %p", buf, 0x16u);
    }

    v14 = [*(a1 + 32) completionGroup];
    v15 = *(a1 + 32);
    if (*(a1 + 61) == 1 && v14)
    {
      [v15 setCompletionBlock:v10];
      v16 = MEMORY[0x277D85CD0];
      v17 = [*(a1 + 32) completionBlock];
      dispatch_group_notify(v14, MEMORY[0x277D85CD0], v17);
    }

    else
    {
      [v15 setCompletionBlock:0];
      v10[2](v10);
    }

    if (CSFeatureEnabled() && *(a1 + 62) == 1)
    {
      v24 = *(a1 + 32);
      v25 = *(a1 + 48);
      [v24 _viewVelocity];
      [v24 _transitionToPresentationState:v25 forUserGesture:0 withVelocity:*(a1 + 61) animated:?];
    }

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }
}

void __138__SBCoverSheetSlidingViewController__finishTransitionToPresented_forcingTransition_ignoringPreflightRequirements_animated_withCompletion___block_invoke_101(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = SBLogCoverSheet();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __138__SBCoverSheetSlidingViewController__finishTransitionToPresented_forcingTransition_ignoringPreflightRequirements_animated_withCompletion___block_invoke_101_cold_1(WeakRetained, v3);
  }

  [WeakRetained setCompletionBlock:0];
  v4 = SBLogCoverSheet();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v6 = @"dismissing";
    if (*(a1 + 56))
    {
      v6 = @"presenting";
    }

    v8[0] = 67109378;
    v8[1] = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Ended Animation %d not retargeted -> putting us in a good state for %@", v8, 0x12u);
  }

  if ((CSFeatureEnabled() & 1) == 0)
  {
    [WeakRetained _transitionToViewControllerAppearState:*(a1 + 52) ifNeeded:0 forUserGesture:0];
  }

  [WeakRetained setCompletionGroup:0];
  [WeakRetained setLastTouchLocation:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))();
  }

  [WeakRetained _studyLogForCompletionOfTransitionToPresented:*(a1 + 56)];
}

uint64_t __138__SBCoverSheetSlidingViewController__finishTransitionToPresented_forcingTransition_ignoringPreflightRequirements_animated_withCompletion___block_invoke_115(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v11 = CAFrameRateRangeMake(30.0, 120.0, 120.0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __138__SBCoverSheetSlidingViewController__finishTransitionToPresented_forcingTransition_ignoringPreflightRequirements_animated_withCompletion___block_invoke_2;
  v6[3] = &unk_2783B3090;
  v6[4] = *(a1 + 32);
  v3 = *(a1 + 40);
  v10 = *(a1 + 80);
  v4 = *(a1 + 56);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 72);
  return [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114125 updateReason:v6 animations:{*&v11.minimum, *&v11.maximum, *&v11.preferred}];
}

uint64_t __138__SBCoverSheetSlidingViewController__finishTransitionToPresented_forcingTransition_ignoringPreflightRequirements_animated_withCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateForLocation:0 interactive:{*(a1 + 40), *(a1 + 48)}];
  result = CSFeatureEnabled();
  if (result && *(a1 + 80) == 1 && *(a1 + 56) != *(a1 + 64))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 72);
    v5 = (*(a1 + 81) & 1) == 0;

    return [v3 _performTransitionToDismissed:v5 velocity:v4];
  }

  return result;
}

uint64_t __138__SBCoverSheetSlidingViewController__finishTransitionToPresented_forcingTransition_ignoringPreflightRequirements_animated_withCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _updateForLocation:0 interactive:{*(a1 + 48), *(a1 + 56)}];
  if (CSFeatureEnabled() && *(a1 + 80) == 1 && *(a1 + 64) != *(a1 + 72))
  {
    [*(a1 + 32) _performTransitionToDismissed:(*(a1 + 81) & 1) == 0 velocity:-1.0];
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_performTransitionToDismissed:(BOOL)dismissed velocity:(double)velocity
{
  dismissedCopy = dismissed;
  if (CSFeatureEnabled())
  {
    if (dismissedCopy)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    [(UIViewFloatAnimatableProperty *)self->_transitionProperty setVelocity:velocity];
    transitionProperty = self->_transitionProperty;

    [(UIViewFloatAnimatableProperty *)transitionProperty setValue:v7];
  }
}

- (void)_performAppFlyInToPresented:(BOOL)presented animated:(BOOL)animated velocity:(double)velocity
{
  animatedCopy = animated;
  presentedCopy = presented;
  if (CSFeatureEnabled())
  {
    delegate = [(SBCoverSheetSlidingViewController *)self delegate];
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = __Block_byref_object_copy__38;
    v11[4] = __Block_byref_object_dispose__38;
    v12 = 0;
    v9[5] = v11;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __83__SBCoverSheetSlidingViewController__performAppFlyInToPresented_animated_velocity___block_invoke;
    v10[3] = &unk_2783A8CE0;
    v10[4] = self;
    v10[5] = v11;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __83__SBCoverSheetSlidingViewController__performAppFlyInToPresented_animated_velocity___block_invoke_116;
    v9[3] = &unk_2783A8CE0;
    v9[4] = self;
    [delegate coverSheetSlidingViewController:self performIconFlyInForPresenting:presentedCopy animated:animatedCopy beginBlock:v10 endBlock:v9];
    _Block_object_dispose(v11, 8);
  }
}

void __83__SBCoverSheetSlidingViewController__performAppFlyInToPresented_animated_velocity___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) completionGroup];
  v3 = *(v1[1] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(v1[1] + 8) + 40);
  if (v5)
  {
    dispatch_group_enter(v5);
    ++*(*v1 + 1200);
    v6 = SBLogCoverSheet();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __83__SBCoverSheetSlidingViewController__performAppFlyInToPresented_animated_velocity___block_invoke_cold_1();
    }
  }
}

void __83__SBCoverSheetSlidingViewController__performAppFlyInToPresented_animated_velocity___block_invoke_116(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    --*(*(a1 + 32) + 1200);
    v3 = SBLogCoverSheet();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __83__SBCoverSheetSlidingViewController__performAppFlyInToPresented_animated_velocity___block_invoke_116_cold_1();
    }
  }
}

- (CGPoint)_finalLocationForTransitionToPresented:(BOOL)presented
{
  presentedCopy = presented;
  view = [(SBCoverSheetSlidingViewController *)self view];
  v5 = view;
  if (presentedCopy)
  {
    [view bounds];
    Height = CGRectGetHeight(v10);
  }

  else
  {
    Height = 0.0;
  }

  v7 = 0.0;
  v8 = Height;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)_cancelTransitionForGesture:(id)gesture
{
  if (self->_indirectPresentGestureRecognizer == gesture || self->_indirectDismissGestureRecognizer == gesture)
  {
    self->_initialTouchOffsetFromScreenEdge = 0.0;
  }

  frameRateAssertion = self->_frameRateAssertion;
  gestureCopy = gesture;
  [(SBFFrameRateAssertion *)frameRateAssertion invalidate];
  v6 = self->_frameRateAssertion;
  self->_frameRateAssertion = 0;

  systemGesturesDelegate = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  if ([systemGesturesDelegate syntheticAppearState] == 3)
  {
    v8 = 1;
  }

  else
  {
    systemGesturesDelegate2 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
    v8 = [systemGesturesDelegate2 syntheticAppearState] == 2;
  }

  v10 = [(SBCoverSheetSlidingViewController *)self _shouldRubberBandForGestureRecognizer:gestureCopy];

  [(SBCoverSheetSlidingViewController *)self _finishTransitionToPresented:v10 || v8 animated:1 withCompletion:0];
}

- (CGPoint)_locationForGesture:(id)gesture
{
  gestureCopy = gesture;
  view = [(SBCoverSheetSlidingViewController *)self view];
  [(SBIndirectPanGestureRecognizer *)gestureCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  if (self->_indirectPresentGestureRecognizer == gestureCopy)
  {
    v9 = fmax(v9 - self->_initialTouchOffsetFromScreenEdge, 0.0);
  }

  else if (self->_indirectDismissGestureRecognizer == gestureCopy)
  {
    view2 = [(SBCoverSheetSlidingViewController *)self view];
    [view2 bounds];
    Height = CGRectGetHeight(v15);

    if (Height >= v9 + self->_initialTouchOffsetFromScreenEdge)
    {
      v9 = v9 + self->_initialTouchOffsetFromScreenEdge;
    }

    else
    {
      v9 = Height;
    }
  }

  v12 = v7;
  v13 = v9;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGPoint)_velocityForGesture:(id)gesture
{
  gestureCopy = gesture;
  view = [(SBCoverSheetSlidingViewController *)self view];
  [gestureCopy velocityInView:view];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)_averageVelocityForGesture:(id)gesture
{
  [gesture averageTouchVelocityOverTimeDuration:0.0416666667];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)_adjustedTouchLocationForCurrentDismissalMode:(CGPoint)mode
{
  y = mode.y;
  x = mode.x;
  if (self->_dismissalSlidingMode == 2)
  {
    [(CSLockScreenSettings *)self->_lockScreenSettings unlockRubberBandThreshold];
    v7 = v6;
    view = [(SBCoverSheetSlidingViewController *)self view];
    [view bounds];
    v10 = v9 - y;

    view2 = [(SBCoverSheetSlidingViewController *)self view];
    [view2 bounds];
    y = v12 - v7 * (1.0 - 1.0 / (v10 / v7 * 0.55 + 1.0));
  }

  v13 = x;
  v14 = y;
  result.y = v14;
  result.x = v13;
  return result;
}

- (BOOL)_shouldRubberBandForGestureRecognizer:(id)recognizer
{
  dismissalSlidingMode = self->_dismissalSlidingMode;
  recognizerCopy = recognizer;
  systemGesturesDelegate = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  dismissGestures = [systemGesturesDelegate dismissGestures];
  v8 = [dismissGestures containsObject:recognizerCopy];

  if (dismissalSlidingMode == 2)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_shouldEndPresentedForEndingGestureRecognizer:(id)recognizer
{
  v29 = *MEMORY[0x277D85DE8];
  recognizerCopy = recognizer;
  if ([(__CFString *)recognizerCopy state]!= 3)
  {
    [SBCoverSheetSlidingViewController _shouldEndPresentedForEndingGestureRecognizer:];
  }

  view = [(SBCoverSheetSlidingViewController *)self view];
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v6 = [(SBCoverSheetSlidingViewController *)self _mathForGestureRecognizerPointsDown:recognizerCopy position:&v18 velocity:&v17 instantVelocity:&v16 averageVelocity:&v15];
  if ([(SBCoverSheetSlidingViewController *)self _shouldRubberBandForGestureRecognizer:recognizerCopy])
  {
    v7 = SBLogCoverSheet();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = recognizerCopy;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Rubber banding to presented for gesture: %@", buf, 0xCu);
    }

    v6 = 1;
  }

  if ([(SBCoverSheetSlidingViewController *)self _isPresentingInterstitialForGestureRecognizer:recognizerCopy])
  {
    v8 = SBLogCoverSheet();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = recognizerCopy;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Finishing presented because presenting interstitial for gesture: %@", buf, 0xCu);
    }

    v6 = 1;
  }

  state = [(__CFString *)recognizerCopy state];
  [view bounds];
  [SBCoverSheetSlidingViewController _studyLogForGestureRecognizerState:"_studyLogForGestureRecognizerState:bounds:position:velocity:" bounds:state position:? velocity:?];
  v10 = SBLogCoverSheet();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    _grabberRecognizer = [(SBCoverSheetSlidingViewController *)self _grabberRecognizer];
    v12 = @"Dismiss";
    if (_grabberRecognizer == recognizerCopy)
    {
      v12 = @"Present";
    }

    *buf = 138413314;
    v20 = v12;
    v13 = @"presented";
    v21 = 2112;
    if (!v6)
    {
      v13 = @"dismissed";
    }

    v22 = v13;
    v23 = 2048;
    v24 = v18;
    v25 = 2048;
    v26 = v16;
    v27 = 2048;
    v28 = v15;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "%@ Gesture recognizer Should End %@ \t position: %f instantVelocity: %f averageVelocity: %f", buf, 0x34u);
  }

  return v6;
}

- (BOOL)_mathForGestureRecognizerPointsDown:(id)down position:(double *)position velocity:(double *)velocity instantVelocity:(double *)instantVelocity averageVelocity:(double *)averageVelocity
{
  downCopy = down;
  view = [(SBCoverSheetSlidingViewController *)self view];
  [(SBCoverSheetSlidingViewController *)self _locationForGesture:downCopy];
  v15 = v14;
  [(SBCoverSheetSlidingViewController *)self _velocityForGesture:downCopy];
  v17 = v16;
  v18 = 0.0;
  v19 = v16;
  if (objc_opt_respondsToSelector())
  {
    [(SBCoverSheetSlidingViewController *)self _averageVelocityForGesture:downCopy];
    v19 = v20;
    v18 = v20;
  }

  [view bounds];
  v21 = v15 + v19 * 0.15 > CGRectGetHeight(v23) * 0.6 && v19 >= *&SBCoverSheetMinimumYVelocityForDismissal;
  [view bounds];
  if (v15 > CGRectGetHeight(v24) - *&SBCoverSheetMinimumYDistanceForDismissal)
  {
    v21 = 1;
  }

  if (position)
  {
    *position = v15;
  }

  if (instantVelocity)
  {
    *instantVelocity = v17;
  }

  if (averageVelocity)
  {
    *averageVelocity = v18;
  }

  if (velocity)
  {
    *velocity = v19;
  }

  return v21;
}

- (BOOL)_isPresentingInterstitialForGestureRecognizer:(id)recognizer
{
  v4 = self->_dismissalSlidingMode == 3;
  recognizerCopy = recognizer;
  systemGesturesDelegate = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  dismissGestures = [systemGesturesDelegate dismissGestures];
  v8 = [dismissGestures containsObject:recognizerCopy];

  return v4 & v8;
}

- (BOOL)_isPresentingAnyInterstitialForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v5 = [(SBCoverSheetSlidingViewController *)self _isPresentingInterstitialWhileOffScreen]|| [(SBCoverSheetSlidingViewController *)self _isPresentingInterstitialForGestureRecognizer:recognizerCopy];

  return v5;
}

- (BOOL)_isPresentingInterstitialWhileOffScreen
{
  delegate = [(SBCoverSheetSlidingViewController *)self delegate];
  v4 = [delegate coverSheetSlidingViewControllerIsDisplayingInterstitial:self];

  if (!v4 || (self->_currentPresentationState - 3) > 1)
  {
    return 0;
  }

  return CSFeatureEnabled();
}

- (void)_logPresentGestureState:(int64_t)state
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_presentGestureState != state)
  {
    self->_presentGestureState = state;
    _grabberRecognizer = [(SBCoverSheetSlidingViewController *)self _grabberRecognizer];
    v4 = SBLogCoverSheet();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sb_stringForState = [_grabberRecognizer sb_stringForState];
      view = [_grabberRecognizer view];
      [_grabberRecognizer locationInView:view];
      v8 = v7;
      view2 = [_grabberRecognizer view];
      [_grabberRecognizer velocityInView:view2];
      v11 = 138543874;
      v12 = sb_stringForState;
      v13 = 2048;
      v14 = v8;
      v15 = 2048;
      v16 = v10;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Present gesture: %{public}@\tposition: %f velocity: %f", &v11, 0x20u);
    }
  }
}

- (void)_logDismissGestureState:(int64_t)state forAddendumGesture:(BOOL)gesture
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_dismissGestureState != state)
  {
    gestureCopy = gesture;
    self->_dismissGestureState = state;
    v6 = SBLogCoverSheet();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (gestureCopy)
    {
      if (v7)
      {
        sb_stringForState = [(UIGestureRecognizer *)self->_dismissAddendumGestureRecognizer sb_stringForState];
        dismissAddendumGestureRecognizer = self->_dismissAddendumGestureRecognizer;
        view = [(SBScreenEdgePanGestureRecognizer *)dismissAddendumGestureRecognizer view];
        [(SBScreenEdgePanGestureRecognizer *)dismissAddendumGestureRecognizer locationInView:view];
        v12 = v11;
        v13 = self->_dismissAddendumGestureRecognizer;
        view2 = [(SBScreenEdgePanGestureRecognizer *)v13 view];
        [(SBScreenEdgePanGestureRecognizer *)v13 velocityInView:view2];
        v22 = 138543874;
        v23 = sb_stringForState;
        v24 = 2048;
        v25 = v12;
        v26 = 2048;
        v27 = v15;
        v16 = "Dismiss Addendum gesture: %{public}@\tposition: %f velocity: %f";
LABEL_7:
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, v16, &v22, 0x20u);
      }
    }

    else if (v7)
    {
      sb_stringForState = [(UIGestureRecognizer *)self->_dismissGestureRecognizer sb_stringForState];
      dismissGestureRecognizer = self->_dismissGestureRecognizer;
      view = [(SBScreenEdgePanGestureRecognizer *)dismissGestureRecognizer view];
      [(SBScreenEdgePanGestureRecognizer *)dismissGestureRecognizer locationInView:view];
      v19 = v18;
      v20 = self->_dismissGestureRecognizer;
      view2 = [(SBScreenEdgePanGestureRecognizer *)v20 view];
      [(SBScreenEdgePanGestureRecognizer *)v20 velocityInView:view2];
      v22 = 138543874;
      v23 = sb_stringForState;
      v24 = 2048;
      v25 = v19;
      v26 = 2048;
      v27 = v21;
      v16 = "Dismiss gesture: %{public}@\tposition: %f velocity: %f";
      goto LABEL_7;
    }
  }
}

- (void)_beginTransitionFromAppeared:(BOOL)appeared
{
  appearedCopy = appeared;
  v9 = *MEMORY[0x277D85DE8];
  v5 = SBLogCoverSheet();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = appearedCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[SBCoverSheetSlidingViewController _beginTransitionFromAppeared:]", v8, 8u);
  }

  [(SBCoverSheetSlidingViewController *)self _setCornerRounded:self->_roundsCorners];
  view = [(SBCoverSheetSlidingViewController *)self view];
  [view setNeedsLayout];
  [view layoutIfNeeded];
  v7 = dispatch_group_create();
  [(SBCoverSheetSlidingViewController *)self setCompletionGroup:v7];
}

- (void)_updateForLocation:(CGPoint)location interactive:(BOOL)interactive
{
  interactiveCopy = interactive;
  y = location.y;
  x = location.x;
  v22 = *MEMORY[0x277D85DE8];
  v8 = SBLogCoverSheet();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    *&buf[4] = x;
    *&buf[12] = 2048;
    *&buf[14] = y;
    *&buf[22] = 1024;
    LODWORD(v19) = interactiveCopy;
    _os_log_debug_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEBUG, "updateForLocation: %.2f, %.2f, %{BOOL}d", buf, 0x1Cu);
  }

  view = [(SBCoverSheetSlidingViewController *)self view];
  [view bounds];
  v11 = v10;

  progressProperty = [(SBCoverSheetSlidingViewController *)self progressProperty];
  v13 = 1.0 - y / v11;
  [progressProperty setValue:v13];

  if ((CSFeatureEnabled() & 1) == 0)
  {
    v14 = [(SBCoverSheetSlidingViewController *)self _isAnyGestureActivelyRecognized:0];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__38;
    v20 = __Block_byref_object_dispose__38;
    v21 = 0;
    delegate = [(SBCoverSheetSlidingViewController *)self delegate];
    v16[5] = buf;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__SBCoverSheetSlidingViewController__updateForLocation_interactive___block_invoke;
    v17[3] = &unk_2783A8CE0;
    v17[4] = self;
    v17[5] = buf;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__SBCoverSheetSlidingViewController__updateForLocation_interactive___block_invoke_131;
    v16[3] = &unk_2783A8CE0;
    v16[4] = self;
    [delegate coverSheetSlidingViewController:self animateForGestureActive:v14 withProgress:v17 beginBlock:v16 endBlock:v13];

    _Block_object_dispose(buf, 8);
  }
}

void __68__SBCoverSheetSlidingViewController__updateForLocation_interactive___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) completionGroup];
  v3 = *(v1[1] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(v1[1] + 8) + 40);
  if (v5)
  {
    dispatch_group_enter(v5);
    ++*(*v1 + 1200);
    v6 = SBLogCoverSheet();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __83__SBCoverSheetSlidingViewController__performAppFlyInToPresented_animated_velocity___block_invoke_cold_1();
    }
  }
}

void __68__SBCoverSheetSlidingViewController__updateForLocation_interactive___block_invoke_131(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    --*(*(a1 + 32) + 1200);
    v3 = SBLogCoverSheet();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __83__SBCoverSheetSlidingViewController__performAppFlyInToPresented_animated_velocity___block_invoke_116_cold_1();
    }
  }
}

- (void)_endTransitionToAppeared:(BOOL)appeared
{
  appearedCopy = appeared;
  v6 = *MEMORY[0x277D85DE8];
  [(SBCoverSheetSlidingViewController *)self _setCornerRounded:0];
  v4 = SBLogCoverSheet();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = appearedCopy;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[SBCoverSheetSlidingViewController _endTransitionToAppeared:]", v5, 8u);
  }
}

- (CGRect)_updatePositionViewForProgress:(double)progress velocity:(double)velocity forPresentationValue:(BOOL)value
{
  valueCopy = value;
  view = [(SBCoverSheetSlidingViewController *)self view];
  [view bounds];
  v11 = v10;

  v12 = v11 - progress * v11;
  v13 = -(velocity * v11);
  transitionSettings = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  transitionStyle = [transitionSettings transitionStyle];

  if (transitionStyle == 1)
  {
    v16 = v11;
  }

  else
  {
    v16 = v12;
  }

  if (transitionStyle == 1)
  {
    v17 = *MEMORY[0x277CBF348];
  }

  else
  {
    v17 = 0.0;
  }

  if (transitionStyle == 1)
  {
    v18 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v18 = v13;
  }

  v19 = [(SBCoverSheetSlidingViewController *)self positionView:*MEMORY[0x277CBF348]];
  [v19 positionContentForTouchAtLocation:self->_dismissalTransformMode withVelocity:valueCopy transformMode:0.0 forPresentationValue:{v16, v17, v18}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(SBCoverSheetSlidingViewController *)self _positionSubviewsForContentFrame:valueCopy forPresentationValue:?];

  v28 = v21;
  v29 = v23;
  v30 = v25;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (void)_setCornerRounded:(BOOL)rounded
{
  roundedCopy = rounded;
  positionView = [(SBCoverSheetSlidingViewController *)self positionView];
  contentView = [positionView contentView];

  v5 = 0.0;
  if (roundedCopy)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    [traitCollection displayCornerRadius];
    v5 = v8;
  }

  [contentView _setContinuousCornerRadius:v5];
  [contentView setClipsToBounds:roundedCopy];
}

- (void)_animationTickForPresentationValue:(BOOL)value
{
  valueCopy = value;
  v43 = *MEMORY[0x277D85DE8];
  progressProperty = self->_progressProperty;
  if (value)
  {
    [(UIViewFloatAnimatableProperty *)progressProperty presentationValue];
    v7 = v6;
    [(UIViewFloatAnimatableProperty *)self->_catchupProperty presentationValue];
    v9 = v8;
    trailingIndicatorAnimationViewVelocityY = self->_trailingIndicatorAnimationViewVelocityY;
    objc_initWeak(location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__SBCoverSheetSlidingViewController__animationTickForPresentationValue___block_invoke;
    block[3] = &unk_2783A8C68;
    objc_copyWeak(&v33, location);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }

  else
  {
    [(UIViewFloatAnimatableProperty *)progressProperty value];
    v7 = v11;
    [(UIViewFloatAnimatableProperty *)self->_catchupProperty value];
    v9 = v12;
    [(SBCoverSheetSlidingViewController *)self _viewVelocity];
    trailingIndicatorAnimationViewVelocityY = v13;
    self->_trailingIndicatorAnimationViewVelocityY = v13;
  }

  if (self->_performingCatchUpForPresentation)
  {
    v14 = 1.0 - (1.0 - v7) * v9;
  }

  else
  {
    v14 = v9 * v7;
  }

  v15 = trailingIndicatorAnimationViewVelocityY;
  if (valueCopy)
  {
    [(UIViewFloatAnimatableProperty *)self->_progressProperty velocity];
    v17 = v16;
    [(UIViewFloatAnimatableProperty *)self->_catchupProperty velocity];
    v19 = v9 * v17 + v7 * v18;
    v20 = -((1.0 - v7) * v18 - v17 * v9);
    if (self->_performingCatchUpForPresentation)
    {
      v15 = v20;
    }

    else
    {
      v15 = v19;
    }
  }

  v21 = SBLogCoverSheet();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *location = 134219008;
    *&location[4] = v7;
    v35 = 2048;
    v36 = v9;
    v37 = 2048;
    v38 = v14;
    v39 = 2048;
    v40 = trailingIndicatorAnimationViewVelocityY;
    v41 = 1024;
    v42 = valueCopy;
    _os_log_debug_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEBUG, "animation ticked with progress: %.2f catchup: %.2f adjustedProgress: %.2f velocity: %.2f forPresentationValue: %{BOOL}d", location, 0x30u);
  }

  [(SBCoverSheetSlidingViewController *)self _animationTickedWithProgress:valueCopy velocity:v14 forPresentationValue:v15];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [(SBCoverSheetSlidingViewController *)self _isAnyGestureActivelyRecognized:valueCopy];
  delegate = [(SBCoverSheetSlidingViewController *)self delegate];
  [delegate coverSheetSlidingViewController:self animationTickedWithProgress:-[SBCoverSheetSlidingViewController _appearState](self velocity:"_appearState") == 1 isPresenting:v30 coverSheetFrame:valueCopy gestureActive:v14 forPresentationValue:{trailingIndicatorAnimationViewVelocityY, v23, v25, v27, v29}];
}

void __72__SBCoverSheetSlidingViewController__animationTickForPresentationValue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _viewVelocity];
    v2[154] = v3;
    v4 = SBLogCoverSheet();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __72__SBCoverSheetSlidingViewController__animationTickForPresentationValue___block_invoke_cold_1();
    }
  }
}

- (void)_transitionTickForPresentationValue:(BOOL)value
{
  valueCopy = value;
  v19 = *MEMORY[0x277D85DE8];
  transitionProperty = self->_transitionProperty;
  if (value)
  {
    [(UIViewFloatAnimatableProperty *)transitionProperty presentationValue];
    v7 = v6;
    trailingIndicatorTransitionViewVelocityY = self->_trailingIndicatorTransitionViewVelocityY;
    objc_initWeak(location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__SBCoverSheetSlidingViewController__transitionTickForPresentationValue___block_invoke;
    block[3] = &unk_2783A8C68;
    objc_copyWeak(&v13, location);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }

  else
  {
    [(UIViewFloatAnimatableProperty *)transitionProperty value];
    v7 = v9;
    [(SBCoverSheetSlidingViewController *)self _viewVelocity];
    trailingIndicatorTransitionViewVelocityY = v10;
    self->_trailingIndicatorTransitionViewVelocityY = v10;
  }

  v11 = SBLogCoverSheet();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *location = 134218496;
    *&location[4] = v7;
    v15 = 2048;
    v16 = trailingIndicatorTransitionViewVelocityY;
    v17 = 1024;
    v18 = valueCopy;
    _os_log_debug_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEBUG, "transition ticked with progress: %.2f velocity: %.2f forPresentationValue: %{BOOL}d", location, 0x1Cu);
  }

  [(SBCoverSheetSlidingViewController *)self _updateTransitionProgress:valueCopy velocity:v7 forPresentationValue:trailingIndicatorTransitionViewVelocityY];
}

void __73__SBCoverSheetSlidingViewController__transitionTickForPresentationValue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _viewVelocity];
    v2[155] = v3;
    v4 = SBLogCoverSheet();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __73__SBCoverSheetSlidingViewController__transitionTickForPresentationValue___block_invoke_cold_1();
    }
  }
}

- (void)_updateTransitionProgress:(double)progress velocity:(double)velocity forPresentationValue:(BOOL)value
{
  valueCopy = value;
  positionView = [(SBCoverSheetSlidingViewController *)self positionView];
  contentView = [positionView contentView];
  [contentView frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  delegate = [(SBCoverSheetSlidingViewController *)self delegate];
  [delegate coverSheetSlidingViewController:self transitionTickedWithProgress:-[SBCoverSheetSlidingViewController _appearState](self velocity:"_appearState") == 1 isPresenting:0 coverSheetFrame:valueCopy gestureActive:progress forPresentationValue:{velocity, v12, v14, v16, v18}];
}

- (void)_createProperties
{
  v26[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D75D38]);
  catchupProperty = self->_catchupProperty;
  self->_catchupProperty = v3;

  [(UIViewFloatAnimatableProperty *)self->_catchupProperty setVelocityUsableForVFD:1];
  [(UIViewFloatAnimatableProperty *)self->_catchupProperty setValue:1.0];
  v5 = objc_alloc_init(MEMORY[0x277D75D38]);
  progressProperty = self->_progressProperty;
  self->_progressProperty = v5;

  [(UIViewFloatAnimatableProperty *)self->_progressProperty setVelocityUsableForVFD:1];
  [(UIViewFloatAnimatableProperty *)self->_progressProperty setValue:0.0];
  [(SBCoverSheetSlidingViewController *)self _viewVelocity];
  v8 = v7;
  self->_trailingIndicatorAnimationViewVelocityY = v7;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D75D18];
  v10 = self->_catchupProperty;
  v26[0] = self->_progressProperty;
  v26[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __54__SBCoverSheetSlidingViewController__createProperties__block_invoke;
  v22[3] = &unk_2783A8C68;
  objc_copyWeak(&v23, &location);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__SBCoverSheetSlidingViewController__createProperties__block_invoke_2;
  v20[3] = &unk_2783A8C68;
  objc_copyWeak(&v21, &location);
  [v9 _createTransformerWithInputAnimatableProperties:v11 modelValueSetter:v22 presentationValueSetter:v20];

  if (CSFeatureEnabled())
  {
    v12 = objc_alloc_init(MEMORY[0x277D75D38]);
    transitionProperty = self->_transitionProperty;
    self->_transitionProperty = v12;

    [(UIViewFloatAnimatableProperty *)self->_transitionProperty setVelocityUsableForVFD:1];
    [(UIViewFloatAnimatableProperty *)self->_transitionProperty setValue:0.0];
    self->_trailingIndicatorTransitionViewVelocityY = v8;
    v14 = MEMORY[0x277D75D18];
    v25 = self->_transitionProperty;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__SBCoverSheetSlidingViewController__createProperties__block_invoke_3;
    v18[3] = &unk_2783A8C68;
    objc_copyWeak(&v19, &location);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__SBCoverSheetSlidingViewController__createProperties__block_invoke_4;
    v16[3] = &unk_2783A8C68;
    objc_copyWeak(&v17, &location);
    [v14 _createTransformerWithInputAnimatableProperties:v15 modelValueSetter:v18 presentationValueSetter:v16];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)_startCatchupAnimationWithDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  v7 = SBLogCoverSheet();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "_startCatchupAnimationWithDuration", buf, 2u);
  }

  if (self->_lastTouchLocation.x != *MEMORY[0x277CBF348] || self->_lastTouchLocation.y != *(MEMORY[0x277CBF348] + 8))
  {
    [(SBCoverSheetSlidingViewController *)self lastTouchLocation];
    [(SBCoverSheetSlidingViewController *)self _updateForLocation:1 interactive:?];
  }

  [(UIViewFloatAnimatableProperty *)self->_catchupProperty setValue:0.0];
  v9 = MEMORY[0x277D75D18];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__SBCoverSheetSlidingViewController__startCatchupAnimationWithDuration_completion___block_invoke;
  v13[3] = &unk_2783A8C18;
  v13[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__SBCoverSheetSlidingViewController__startCatchupAnimationWithDuration_completion___block_invoke_3;
  v11[3] = &unk_2783AE778;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 _animateUsingSpringWithDampingRatio:0 response:v13 tracking:v11 initialDampingRatio:1.0 initialResponse:duration dampingRatioSmoothing:0.0 responseSmoothing:0.0 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
}

uint64_t __83__SBCoverSheetSlidingViewController__startCatchupAnimationWithDuration_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5 = CAFrameRateRangeMake(30.0, 120.0, 120.0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__SBCoverSheetSlidingViewController__startCatchupAnimationWithDuration_completion___block_invoke_2;
  v4[3] = &unk_2783A8C18;
  v4[4] = *(a1 + 32);
  return [v2 sb_modifyAnimationsWithPreferredFrameRateRange:1114125 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

uint64_t __83__SBCoverSheetSlidingViewController__startCatchupAnimationWithDuration_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_transitionToViewControllerAppearState:(int)state ifNeeded:(BOOL)needed forUserGesture:(BOOL)gesture
{
  gestureCopy = gesture;
  neededCopy = needed;
  delegate = [(SBCoverSheetSlidingViewController *)self delegate];
  if (state <= 1)
  {
    if (state)
    {
      if (state == 1)
      {
        [(SBCoverSheetSlidingViewController *)self setCompletionBlock:0];
        dismissalSlidingMode = self->_dismissalSlidingMode;
        if (neededCopy)
        {
          systemGesturesDelegate = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
          v11 = [systemGesturesDelegate syntheticAppearState] == 3;
        }

        else
        {
          v11 = 1;
        }

        systemGesturesDelegate2 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
        syntheticAppearState = [systemGesturesDelegate2 syntheticAppearState];

        systemGesturesDelegate3 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
        syntheticAppearState2 = [systemGesturesDelegate3 syntheticAppearState];

        systemGesturesDelegate4 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
        [systemGesturesDelegate4 setSyntheticAppearState:1];

        if (v11)
        {
          if (dismissalSlidingMode == 2)
          {
            [delegate coverSheetSlidingViewControllerPrepareForRubberBandedPresentationTransition:self];
          }

          else
          {
            [delegate coverSheetSlidingViewController:self prepareForPresentationTransitionForUserGesture:gestureCopy];
            if (!syntheticAppearState || syntheticAppearState2 == 3)
            {
              [(SBCoverSheetSlidingViewController *)self _beginTransitionFromAppeared:0];
            }
          }
        }
      }

      goto LABEL_32;
    }

    if (self->_dismissalSlidingMode == 2)
    {
      [SBCoverSheetSlidingViewController _transitionToViewControllerAppearState:ifNeeded:forUserGesture:];
    }

    [(SBCoverSheetSlidingViewController *)self _transitionToViewControllerAppearState:3 ifNeeded:1 forUserGesture:gestureCopy];
    systemGesturesDelegate5 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
    [systemGesturesDelegate5 setSyntheticAppearState:0];

    [delegate coverSheetSlidingViewControllerCleanupDismissalTransition:self];
    selfCopy2 = self;
    v16 = 0;
LABEL_31:
    [(SBCoverSheetSlidingViewController *)selfCopy2 _endTransitionToAppeared:v16];
    goto LABEL_32;
  }

  if (state != 3)
  {
    if (state != 2)
    {
      goto LABEL_32;
    }

    [(SBCoverSheetSlidingViewController *)self _transitionToViewControllerAppearState:1 ifNeeded:1 forUserGesture:gestureCopy];
    systemGesturesDelegate6 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
    [systemGesturesDelegate6 setSyntheticAppearState:2];

    v13 = self->_dismissalSlidingMode;
    switch(v13)
    {
      case 3:
        [delegate coverSheetSlidingViewControllerCleanupInterstitialTransition:self];
        goto LABEL_32;
      case 2:
        [delegate coverSheetSlidingViewControllerCleanupRubberBandedPresentationTransition:self];
        break;
      case 1:
        [delegate coverSheetSlidingViewControllerCleanupPresentationTransition:self];
        break;
      default:
        goto LABEL_32;
    }

    selfCopy2 = self;
    v16 = 1;
    goto LABEL_31;
  }

  [(SBCoverSheetSlidingViewController *)self setCompletionBlock:0];
  systemGesturesDelegate7 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  syntheticAppearState3 = [systemGesturesDelegate7 syntheticAppearState];

  systemGesturesDelegate8 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  syntheticAppearState4 = [systemGesturesDelegate8 syntheticAppearState];

  if (neededCopy)
  {
    systemGesturesDelegate9 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
    [systemGesturesDelegate9 setSyntheticAppearState:3];

    if (syntheticAppearState3 != 1 && syntheticAppearState4 != 2)
    {
      goto LABEL_32;
    }
  }

  else
  {
    systemGesturesDelegate10 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
    [systemGesturesDelegate10 setSyntheticAppearState:3];
  }

  [delegate coverSheetSlidingViewController:self prepareForDismissalTransitionForReversingTransition:syntheticAppearState3 == 1 forUserGesture:gestureCopy];
  v28 = self->_dismissalSlidingMode;
  if (syntheticAppearState4 == 2 && v28 != 3)
  {
    [(SBCoverSheetSlidingViewController *)self _beginTransitionFromAppeared:1];
  }

  if ((v28 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    systemGesturesDelegate11 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
    [systemGesturesDelegate11 setSyntheticAppearState:2];
  }

LABEL_32:
}

- (id)stringForPresentationState:(int64_t)state
{
  if (state > 7)
  {
    return @"fully presented";
  }

  else
  {
    return off_2783B30F8[state];
  }
}

- (void)_transitionToPresentationState:(int64_t)state forUserGesture:(BOOL)gesture withVelocity:(double)velocity animated:(BOOL)animated
{
  animatedCopy = animated;
  gestureCopy = gesture;
  v37 = *MEMORY[0x277D85DE8];
  CSFeatureEnabled();
  v11 = SBLogCoverSheet();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(SBCoverSheetSlidingViewController *)self stringForPresentationState:state];
    v35 = 138412290;
    v36 = v12;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "SBCoverSheetSlidingViewController transitioning to presentation state %@", &v35, 0xCu);
  }

  delegate = [(SBCoverSheetSlidingViewController *)self delegate];
  currentPresentationState = self->_currentPresentationState;
  [delegate coverSheetSlidingViewController:self willChangePresentationState:state forUserGesture:gestureCopy withVelocity:animatedCopy animated:velocity];
  if (state <= 3)
  {
    if (state != 1)
    {
      if (state == 2)
      {
        systemGesturesDelegate = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
        syntheticAppearState = [systemGesturesDelegate syntheticAppearState];

        systemGesturesDelegate2 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
        syntheticAppearState2 = [systemGesturesDelegate2 syntheticAppearState];

        systemGesturesDelegate3 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
        [systemGesturesDelegate3 setSyntheticAppearState:1];

        if (syntheticAppearState2 != 3 && syntheticAppearState)
        {
          goto LABEL_26;
        }

        [delegate coverSheetSlidingViewController:self prepareForPresentationTransitionForUserGesture:gestureCopy];
        if (syntheticAppearState)
        {
          goto LABEL_26;
        }

        selfCopy2 = self;
        v24 = 0;
      }

      else
      {
        if (state != 3)
        {
          goto LABEL_26;
        }

        systemGesturesDelegate4 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
        syntheticAppearState3 = [systemGesturesDelegate4 syntheticAppearState];

        systemGesturesDelegate5 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
        syntheticAppearState4 = [systemGesturesDelegate5 syntheticAppearState];

        systemGesturesDelegate6 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
        [systemGesturesDelegate6 setSyntheticAppearState:3];

        if (syntheticAppearState3 != 1 && syntheticAppearState4 != 2)
        {
          goto LABEL_26;
        }

        [delegate coverSheetSlidingViewController:self prepareForDismissalTransitionForReversingTransition:syntheticAppearState3 == 1 forUserGesture:gestureCopy];
        if (syntheticAppearState4 != 2)
        {
          goto LABEL_26;
        }

        selfCopy2 = self;
        v24 = 1;
      }

      [(SBCoverSheetSlidingViewController *)selfCopy2 _beginTransitionFromAppeared:v24];
      goto LABEL_26;
    }

    self->_latestTransitionedPresentationState = 1;
    systemGesturesDelegate7 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
    [systemGesturesDelegate7 setSyntheticAppearState:2];

    dismissalSlidingMode = self->_dismissalSlidingMode;
    switch(dismissalSlidingMode)
    {
      case 3:
        v16 = SBLogCoverSheet();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [SBCoverSheetSlidingViewController _transitionToPresentationState:v16 forUserGesture:? withVelocity:? animated:?];
        }

        goto LABEL_25;
      case 2:
        v16 = SBLogCoverSheet();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [SBCoverSheetSlidingViewController _transitionToPresentationState:v16 forUserGesture:? withVelocity:? animated:?];
        }

        goto LABEL_25;
      case 1:
        [delegate coverSheetSlidingViewControllerCleanupPresentationTransition:self];
        selfCopy4 = self;
        v27 = 1;
        goto LABEL_17;
    }
  }

  else
  {
    if (state <= 5)
    {
      if (state != 4)
      {
        systemGesturesDelegate8 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
        v16 = systemGesturesDelegate8;
        v17 = 0;
LABEL_24:
        [systemGesturesDelegate8 setSyntheticAppearState:v17];
LABEL_25:

        goto LABEL_26;
      }

      [delegate coverSheetSlidingViewControllerCleanupDismissalTransition:self];
      goto LABEL_26;
    }

    if (state == 6)
    {
      systemGesturesDelegate8 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
      v16 = systemGesturesDelegate8;
      v17 = 2;
      goto LABEL_24;
    }

    if (state == 7)
    {
      self->_latestTransitionedPresentationState = 7;
      systemGesturesDelegate9 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
      [systemGesturesDelegate9 setSyntheticAppearState:0];

      [delegate coverSheetSlidingViewControllerCleanupDismissalTransition:self];
      selfCopy4 = self;
      v27 = 0;
LABEL_17:
      [(SBCoverSheetSlidingViewController *)selfCopy4 _endTransitionToAppeared:v27];
    }
  }

LABEL_26:
  self->_currentPresentationState = state;
  [delegate coverSheetSlidingViewController:self didChangePresentationStateWithPreviousState:currentPresentationState];
}

- (void)_addSystemGestureRecognizers
{
  if (self->_canBePulledDown)
  {
    [(SBCoverSheetSlidingViewController *)self _addSystemGestureRecognizerIfUntracked:self->_indirectPresentGestureRecognizer withType:6];
    [(SBCoverSheetSlidingViewController *)self _addSystemGestureRecognizerIfUntracked:self->_dismissAddendumGestureRecognizer withType:3];
    v3 = 8;
    v4 = 7;
    v5 = 2;
  }

  else
  {
    v3 = 10;
    v4 = 9;
    v5 = 4;
  }

  if (self->_canBePulledUp)
  {
    [(SBCoverSheetSlidingViewController *)self _addSystemGestureRecognizerIfUntracked:self->_dismissGestureRecognizer withType:v5];
    [(SBCoverSheetSlidingViewController *)self _addSystemGestureRecognizerIfUntracked:self->_indirectDismissGestureRecognizer withType:v4];
    scrunchDismissGestureRecognizer = self->_scrunchDismissGestureRecognizer;

    [(SBCoverSheetSlidingViewController *)self _addSystemGestureRecognizerIfUntracked:scrunchDismissGestureRecognizer withType:v3];
  }
}

- (void)_removeSystemGestureRecognizers
{
  v3 = +[SBSystemGestureManager mainDisplayManager];
  _grabberRecognizer = [(SBCoverSheetSlidingViewController *)self _grabberRecognizer];
  [v3 removeGestureRecognizer:_grabberRecognizer];

  v5 = +[SBSystemGestureManager mainDisplayManager];
  [v5 removeGestureRecognizer:self->_dismissGestureRecognizer];

  v6 = +[SBSystemGestureManager mainDisplayManager];
  [v6 removeGestureRecognizer:self->_dismissAddendumGestureRecognizer];

  v7 = +[SBSystemGestureManager mainDisplayManager];
  [v7 removeGestureRecognizer:self->_indirectDismissGestureRecognizer];

  v8 = +[SBSystemGestureManager mainDisplayManager];
  [v8 removeGestureRecognizer:self->_scrunchDismissGestureRecognizer];

  v9 = +[SBSystemGestureManager mainDisplayManager];
  [v9 removeGestureRecognizer:self->_indirectPresentGestureRecognizer];
}

- (void)_addSystemGestureRecognizerIfUntracked:(id)untracked withType:(unint64_t)type
{
  v10 = *MEMORY[0x277D85DE8];
  untrackedCopy = untracked;
  v6 = +[SBSystemGestureManager mainDisplayManager];
  if ([v6 isSystemGestureRecognizer:untrackedCopy])
  {
    v7 = SBLogCoverSheet();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = untrackedCopy;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Ignoring attempt to add CoverSheet system gesture: %@ because it is already tracked.", &v8, 0xCu);
    }
  }

  else
  {
    [v6 addGestureRecognizer:untrackedCopy withType:type];
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  settingsCopy = settings;
  coverSheetDismissGestureSettings = [(CSLockScreenSettings *)self->_lockScreenSettings coverSheetDismissGestureSettings];

  v6 = settingsCopy;
  if (coverSheetDismissGestureSettings == settingsCopy)
  {
    [(SBCoverSheetSlidingViewController *)self _updateCoverSheetDismissSettings:settingsCopy];
    v6 = settingsCopy;
  }
}

- (void)_updateHomeGestureSettings:(id)settings
{
  settingsCopy = settings;
  [settingsCopy minimumYDistanceForHomeOrAppSwitcher];
  *&SBCoverSheetMinimumYDistanceForDismissal = v4 * SBMainScreenPointsPerMillimeter();
  [settingsCopy minimumYVelocityForHome];
  v6 = v5;

  *&SBCoverSheetMinimumYVelocityForDismissal = v6 * SBMainScreenPointsPerMillimeter();
}

- (void)_updateCoverSheetDismissSettings:(id)settings
{
  dismissGestureRecognizer = self->_dismissGestureRecognizer;
  settingsCopy = settings;
  [settingsCopy edgeRegionSize];
  [(UIScreenEdgePanGestureRecognizer *)dismissGestureRecognizer _setEdgeRegionSize:?];
  v6 = self->_dismissGestureRecognizer;
  [settingsCopy edgeRegionSize];
  [(UIScreenEdgePanGestureRecognizer *)v6 _setBottomEdgeRegionSize:?];
  -[SBScreenEdgePanGestureRecognizer setEnabled:](self->_dismissAddendumGestureRecognizer, "setEnabled:", [settingsCopy extendSwipeUpRegion]);
  dismissAddendumGestureRecognizer = self->_dismissAddendumGestureRecognizer;
  [settingsCopy extendedEdgeRegionSize];
  [(UIScreenEdgePanGestureRecognizer *)dismissAddendumGestureRecognizer _setEdgeRegionSize:?];
  v8 = self->_dismissAddendumGestureRecognizer;
  [settingsCopy extendedEdgeRegionSize];
  v10 = v9;

  [(UIScreenEdgePanGestureRecognizer *)v8 _setBottomEdgeRegionSize:v10];
}

- (void)setCompletionGroup:(id)group
{
  groupCopy = group;
  if (self->_completionGroup != groupCopy)
  {
    v6 = groupCopy;
    [(SBCoverSheetSlidingViewController *)self setCompletionBlock:0];
    objc_storeStrong(&self->_completionGroup, group);
    groupCopy = v6;
  }
}

- (void)setCompletionBlock:(id)block
{
  v14 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  completionBlock = self->_completionBlock;
  if (completionBlock != blockCopy)
  {
    if (completionBlock)
    {
      v6 = SBLogCoverSheet();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = MEMORY[0x223D6F7F0](self->_completionBlock);
        v12 = 134217984;
        v13 = v7;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "SBCoverSheetSlidingViewController completionBlock %p cancelled", &v12, 0xCu);
      }

      dispatch_block_cancel(self->_completionBlock);
    }

    v8 = [blockCopy copy];
    v9 = self->_completionBlock;
    self->_completionBlock = v8;

    v10 = SBLogCoverSheet();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = MEMORY[0x223D6F7F0](self->_completionBlock);
      v12 = 134217984;
      v13 = v11;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "SBCoverSheetSlidingViewController completionBlock %p saved", &v12, 0xCu);
    }
  }
}

- (void)_studyLogForGestureRecognizerState:(int64_t)state bounds:(CGRect)bounds position:(double)position velocity:(double)velocity
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__SBCoverSheetSlidingViewController__studyLogForGestureRecognizerState_bounds_position_velocity___block_invoke;
  v14[3] = &__block_descriptor_88_e5__8__0l;
  v14[4] = state;
  *&v14[5] = position;
  *&v14[6] = velocity;
  *&v14[7] = x;
  *&v14[8] = y;
  *&v14[9] = width;
  *&v14[10] = height;
  [mEMORY[0x277D6A798] logBlock:v14];
}

id __97__SBCoverSheetSlidingViewController__studyLogForGestureRecognizerState_bounds_position_velocity___block_invoke(uint64_t a1)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v17[0] = @"state";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v18[0] = v2;
  v17[1] = @"position";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v18[1] = v3;
  v17[2] = @"velocity";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v18[2] = v4;
  v17[3] = @"viewBounds";
  v15[0] = @"x";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v16[0] = v5;
  v15[1] = @"y";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
  v16[1] = v6;
  v15[2] = @"width";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 72)];
  v16[2] = v7;
  v15[3] = @"height";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 80)];
  v16[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v18[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v13 = @"[SBCoverSheetSlidingViewController _shouldEndPresentedForEndingGestureRecognizer:]";
  v14 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  return v11;
}

- (void)_studyLogForCompletionOfTransitionToPresented:(BOOL)presented
{
  v46 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D6A798] = [MEMORY[0x277D6A798] sharedInstance];
  isEnabled = [mEMORY[0x277D6A798] isEnabled];

  if (isEnabled)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:@"SBCoverSheetSlidingViewController" forKeyedSubscript:@"LogSource"];
    v8 = @"VisibleUI";
  }

  else
  {
    v8 = 0;
    dictionary = 0;
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  activeInterfaceOrientation = [mEMORY[0x277D75128] activeInterfaceOrientation];

  _sbWindowScene = [(UIViewController *)self _sbWindowScene];
  switcherController = [_sbWindowScene switcherController];

  if (presented)
  {
    v13 = @"CoverSheet";
    goto LABEL_20;
  }

  IsActive = SBWorkspaceSpringBoardIsActive();
  unlockedEnvironmentMode = [switcherController unlockedEnvironmentMode];
  v16 = unlockedEnvironmentMode == 2;
  if (IsActive)
  {
    if (unlockedEnvironmentMode != 2)
    {
      v13 = @"HomeScreen";
      goto LABEL_20;
    }

    v17 = switcherController;
  }

  else
  {
    v17 = switcherController;
    if (!v16)
    {
      layoutStatePrimaryElement = [switcherController layoutStatePrimaryElement];
      workspaceEntity = [layoutStatePrimaryElement workspaceEntity];
      applicationSceneEntity = [workspaceEntity applicationSceneEntity];
      sceneHandle = [applicationSceneEntity sceneHandle];

      application = [sceneHandle application];
      bundleIdentifier = [application bundleIdentifier];
      v25 = bundleIdentifier;
      v26 = @"Unknown";
      if (bundleIdentifier)
      {
        v26 = bundleIdentifier;
      }

      v13 = v26;

      currentInterfaceOrientation = [sceneHandle currentInterfaceOrientation];
      if (isEnabled)
      {
        v28 = [MEMORY[0x277CCABB0] numberWithInteger:currentInterfaceOrientation];
        [dictionary setObject:v28 forKeyedSubscript:@"AppInterfaceOrientation"];
      }

      goto LABEL_18;
    }
  }

  interfaceOrientation = [v17 interfaceOrientation];
  if (isEnabled)
  {
    sceneHandle = [MEMORY[0x277CCABB0] numberWithInteger:interfaceOrientation];
    [dictionary setObject:sceneHandle forKeyedSubscript:@"SwitcherInterfaceOrientation"];
    v13 = @"AppSwitcher";
LABEL_18:

    goto LABEL_20;
  }

  v13 = @"AppSwitcher";
LABEL_20:
  v29 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = BSInterfaceOrientationDescription();
    v31 = BSInterfaceOrientationDescription();
    v32 = BSInterfaceOrientationDescription();
    *buf = 138413058;
    v39 = v13;
    v40 = 2112;
    v41 = v30;
    v42 = 2112;
    v43 = v31;
    v44 = 2112;
    v45 = v32;
    _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_INFO, "Visible UI change seen by Cover Sheet: transition to %@ (SB interface orientation: %@, switcher interface orientation: %@,  app interface orientation: %@)", buf, 0x2Au);
  }

  if (isEnabled)
  {
    v33 = [MEMORY[0x277CCABB0] numberWithInteger:activeInterfaceOrientation];
    [dictionary setObject:v33 forKeyedSubscript:@"SBInterfaceOrientation"];

    [dictionary setObject:v13 forKeyedSubscript:v8];
    mEMORY[0x277D6A798]2 = [MEMORY[0x277D6A798] sharedInstance];
    v36 = @"VisibleUIChanged";
    v37 = dictionary;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    [mEMORY[0x277D6A798]2 log:v35];
  }
}

- (CGPoint)lastTouchLocation
{
  x = self->_lastTouchLocation.x;
  y = self->_lastTouchLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastGestureVelocity
{
  x = self->_lastGestureVelocity.x;
  y = self->_lastGestureVelocity.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setDismissalSlidingMode:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_handlePresentGesture:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SBCoverSheetSlidingViewController.m" lineNumber:581 description:{@"Starting Present Gesture when dismiss gesture is %ldd", v0}];
}

- (void)_handlePresentGesture:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SBCoverSheetSlidingViewController.m" lineNumber:582 description:{@"Starting Present Gesture when dismiss addendum gesture is %ldd", v0}];
}

- (void)_handleDismissGesture:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SBCoverSheetSlidingViewController.m" lineNumber:661 description:{@"Starting Dismiss Gesture when present gesture is %ldd", v0}];
}

- (void)_finishTransitionToPresented:forcingTransition:ignoringPreflightRequirements:animated:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __138__SBCoverSheetSlidingViewController__finishTransitionToPresented_forcingTransition_ignoringPreflightRequirements_animated_withCompletion___block_invoke_101_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 completionBlock];
  v4 = MEMORY[0x223D6F7F0]();
  v5 = 134217984;
  v6 = v4;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "completionBlock %p Fired", &v5, 0xCu);
}

void __83__SBCoverSheetSlidingViewController__performAppFlyInToPresented_animated_velocity___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_11(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_21(&dword_21ED4E000, v0, v1, "completionBlock Group Enter %ld", v2);
}

void __83__SBCoverSheetSlidingViewController__performAppFlyInToPresented_animated_velocity___block_invoke_116_cold_1()
{
  OUTLINED_FUNCTION_1_11(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_0_21(&dword_21ED4E000, v0, v1, "completionBlock Group Leave %ld", v2);
}

- (void)_shouldEndPresentedForEndingGestureRecognizer:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __72__SBCoverSheetSlidingViewController__animationTickForPresentationValue___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __73__SBCoverSheetSlidingViewController__transitionTickForPresentationValue___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_transitionToViewControllerAppearState:ifNeeded:forUserGesture:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end