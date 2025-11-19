@interface SBCoverSheetSlidingViewController
- (BOOL)_isAnyGestureActivelyRecognized:(BOOL)a3;
- (BOOL)_isPresentingAnyInterstitialForGestureRecognizer:(id)a3;
- (BOOL)_isPresentingInterstitialForGestureRecognizer:(id)a3;
- (BOOL)_isPresentingInterstitialWhileOffScreen;
- (BOOL)_isTransitioning;
- (BOOL)_mathForGestureRecognizerPointsDown:(id)a3 position:(double *)a4 velocity:(double *)a5 instantVelocity:(double *)a6 averageVelocity:(double *)a7;
- (BOOL)_shouldEndPresentedForEndingGestureRecognizer:(id)a3;
- (BOOL)_shouldRubberBandForGestureRecognizer:(id)a3;
- (BOOL)canTransitionToPresented:(BOOL)a3;
- (BOOL)isBottomMostSlider;
- (BOOL)isDismissGestureActive;
- (BOOL)isPresentGestureActive;
- (BOOL)isPresentingDismissableOffScreenInterstitial;
- (BOOL)shouldAutorotate;
- (CGPoint)_adjustedTouchLocationForCurrentDismissalMode:(CGPoint)a3;
- (CGPoint)_averageVelocityForGesture:(id)a3;
- (CGPoint)_finalLocationForTransitionToPresented:(BOOL)a3;
- (CGPoint)_locationForGesture:(id)a3;
- (CGPoint)_velocityForGesture:(id)a3;
- (CGPoint)lastGestureVelocity;
- (CGPoint)lastTouchLocation;
- (CGRect)_contentViewFrame;
- (CGRect)_updatePositionViewForProgress:(double)a3 velocity:(double)a4 forPresentationValue:(BOOL)a5;
- (CSCoverSheetTransitionSettings)transitionSettings;
- (SBCoverSheetSlidingViewController)initWithContentViewController:(id)a3 canBePulledDown:(BOOL)a4 canBePulledUp:(BOOL)a5 dismissalPreemptingGestureRecognizer:(id)a6;
- (SBCoverSheetSlidingViewControllerDelegate)delegate;
- (double)_viewVelocity;
- (id)_grabberRecognizer;
- (id)activeGestureRecognizer;
- (id)coverSheetIdentifier;
- (id)stringForPresentationState:(int64_t)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addSystemGestureRecognizerIfUntracked:(id)a3 withType:(unint64_t)a4;
- (void)_addSystemGestureRecognizers;
- (void)_animationTickForPresentationValue:(BOOL)a3;
- (void)_beginTransitionFromAppeared:(BOOL)a3;
- (void)_cancelTransitionForGesture:(id)a3;
- (void)_createProperties;
- (void)_dismissCoverSheetAnimated:(BOOL)a3 forcingTransition:(BOOL)a4 ignoringPreflightRequirements:(BOOL)a5 withCompletion:(id)a6;
- (void)_dismissGestureBeganWithGestureRecognizer:(id)a3;
- (void)_dismissGestureChangedWithGestureRecognizer:(id)a3;
- (void)_dismissInterstitialForTransitionIfNeeded;
- (void)_endTransitionToAppeared:(BOOL)a3;
- (void)_finishTransitionToPresented:(BOOL)a3 forcingTransition:(BOOL)a4 ignoringPreflightRequirements:(BOOL)a5 animated:(BOOL)a6 withCompletion:(id)a7;
- (void)_handleDismissGesture:(id)a3;
- (void)_handleIndirectPresentGesture:(id)a3;
- (void)_handlePresentGesture:(id)a3;
- (void)_logDismissGestureState:(int64_t)a3 forAddendumGesture:(BOOL)a4;
- (void)_logPresentGestureState:(int64_t)a3;
- (void)_performAppFlyInToPresented:(BOOL)a3 animated:(BOOL)a4 velocity:(double)a5;
- (void)_performTransitionToDismissed:(BOOL)a3 velocity:(double)a4;
- (void)_presentCoverSheetAnimated:(BOOL)a3 forcingTransition:(BOOL)a4 forUserGesture:(BOOL)a5 withCompletion:(id)a6;
- (void)_presentGestureBeganWithGestureRecognizer:(id)a3;
- (void)_presentOrDismissGestureChangedWithGestureRecognizer:(id)a3;
- (void)_presentOrDismissGestureEndedWithGestureRecognizer:(id)a3;
- (void)_removeSystemGestureRecognizers;
- (void)_resetScalingForTransitionIfNeeded;
- (void)_setCornerRounded:(BOOL)a3;
- (void)_startCatchupAnimationWithDuration:(double)a3 completion:(id)a4;
- (void)_studyLogForCompletionOfTransitionToPresented:(BOOL)a3;
- (void)_studyLogForGestureRecognizerState:(int64_t)a3 bounds:(CGRect)a4 position:(double)a5 velocity:(double)a6;
- (void)_transitionTickForPresentationValue:(BOOL)a3;
- (void)_transitionToPresentationState:(int64_t)a3 forUserGesture:(BOOL)a4 withVelocity:(double)a5 animated:(BOOL)a6;
- (void)_transitionToViewControllerAppearState:(int)a3 ifNeeded:(BOOL)a4 forUserGesture:(BOOL)a5;
- (void)_updateCoverSheetDismissSettings:(id)a3;
- (void)_updateForLocation:(CGPoint)a3 interactive:(BOOL)a4;
- (void)_updateHomeGestureSettings:(id)a3;
- (void)_updateTransitionProgress:(double)a3 velocity:(double)a4 forPresentationValue:(BOOL)a5;
- (void)dealloc;
- (void)invalidate;
- (void)loadView;
- (void)setBackgroundView:(id)a3;
- (void)setCompletionBlock:(id)a3;
- (void)setCompletionGroup:(id)a3;
- (void)setDismissGesturesEnabled:(BOOL)a3;
- (void)setDismissalSlidingMode:(int64_t)a3;
- (void)setPresented:(BOOL)a3 forcingTransition:(BOOL)a4 ignoringPreflightRequirements:(BOOL)a5 forUserGesture:(BOOL)a6 animated:(BOOL)a7 withCompletion:(id)a8;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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
    v11 = [(SBCoverSheetSlidingViewControllerContentViewController *)self->_contentViewController view];
    [v11 setFrame:{v4, v6, v8, v10}];

    [(UIView *)self->_backgroundView setFrame:v4, v6, v8, v10];
  }

  v22 = [(SBCoverSheetSlidingViewController *)self positionView];
  v12 = [(SBCoverSheetSlidingViewController *)self view];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v22 setFrame:{v14, v16, v18, v20}];
  v21 = [(CSLockScreenSettings *)self->_lockScreenSettings coverSheetDismissGestureSettings];
  [(SBCoverSheetSlidingViewController *)self _updateCoverSheetDismissSettings:v21];
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
      v6 = [MEMORY[0x277D75418] currentDevice];
      v5 = [v6 userInterfaceIdiom] == 1;
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
  v2 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  v3 = [v2 syntheticAppearState];

  return (v3 & 0xFFFFFFFD) == 1;
}

- (double)_viewVelocity
{
  v3 = [(SBCoverSheetSlidingViewController *)self activeGestureRecognizer];
  if (v3)
  {
    v4 = -self->_lastGestureVelocity.y;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [(SBCoverSheetSlidingViewController *)self positionView];
  [v5 frame];
  Height = CGRectGetHeight(v8);

  return fmin(fmax(v4 / Height, -10.0), 10.0);
}

- (id)activeGestureRecognizer
{
  v3 = [(SBCoverSheetSlidingViewController *)self dismissGestureRecognizer];
  v4 = [(SBCoverSheetSlidingViewController *)self dismissAddendumGestureRecognizer];
  v5 = [(SBCoverSheetSlidingViewController *)self _grabberRecognizer];
  v6 = [(SBCoverSheetSlidingViewController *)self indirectPresentGestureRecognizer];
  v7 = [(SBCoverSheetSlidingViewController *)self indirectDismissGestureRecognizer];
  v8 = [(SBCoverSheetSlidingViewController *)self scrunchDismissGestureRecognizer];
  if (([v4 state] - 1) > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4;
  }

  if (([v3 state] - 1) <= 2)
  {
    v10 = v3;

    v9 = v10;
  }

  if (([v5 state] - 1) <= 2)
  {
    v11 = v5;

    v9 = v11;
  }

  if (([v6 state] - 1) <= 2)
  {
    v12 = v6;

    v9 = v12;
  }

  if (([v7 state] - 1) <= 2)
  {
    v13 = v7;

    v9 = v13;
  }

  if (([v8 state] - 1) <= 2)
  {
    v14 = v8;

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
  v2 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  v3 = [v2 presentGestureRecognizer];

  return v3;
}

- (void)_resetScalingForTransitionIfNeeded
{
  if (self->_dismissalTransformMode == 2)
  {
    v4 = [(SBCoverSheetSlidingViewController *)self positionView];
    [v4 resetContentScalingAnimated:1];

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
  v3 = [(SBCoverSheetSlidingViewController *)self delegate];
  if ([v3 coverSheetSlidingViewControllerIsDisplayingInterstitial:self] && self->_currentPresentationState != 1)
  {
    [v3 coverSheetSlidingViewControllerCleanupInterstitialTransition:self];
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

- (SBCoverSheetSlidingViewController)initWithContentViewController:(id)a3 canBePulledDown:(BOOL)a4 canBePulledUp:(BOOL)a5 dismissalPreemptingGestureRecognizer:(id)a6
{
  v11 = a3;
  v12 = a6;
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
    v17 = [MEMORY[0x277D02C20] rootSettings];
    lockScreenSettings = v14->_lockScreenSettings;
    v14->_lockScreenSettings = v17;

    [(CSLockScreenSettings *)v14->_lockScreenSettings addKeyObserver:v14];
    v19 = [(CSLockScreenSettings *)v14->_lockScreenSettings coverSheetDismissGestureSettings];
    [v19 addKeyObserver:v14];

    v14->_dismissalSlidingMode = 1;
    v14->_dismissalTransformMode = 1;
    objc_storeStrong(&v14->_contentViewController, a3);
    v20 = [MEMORY[0x277CF0CA8] sharedInstance];
    v21 = [v20 homeButtonType];

    v22 = _os_feature_enabled_impl();
    v23 = [(CSLockScreenSettings *)v14->_lockScreenSettings coverSheetDismissGestureSettings];
    v24 = v22 | ~[v23 usesGrapeFlags];

    if (v21 == 2)
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
    v30 = [(CSLockScreenSettings *)v14->_lockScreenSettings coverSheetDismissGestureSettings];
    [(SBCoverSheetSlidingViewController *)v14 _updateCoverSheetDismissSettings:v30];

    v31 = [[SBCoverSheetSystemGesturesDelegate alloc] initWithViewController:v14 dismissGestureRecognizer:v14->_dismissGestureRecognizer dismissAddendumGestureRecognizer:v14->_dismissAddendumGestureRecognizer dismissalPreemptingGestureRecognizer:v12];
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
    v14->_canBePulledDown = a4;
    v14->_canBePulledUp = a5;
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

- (void)setPresented:(BOOL)a3 forcingTransition:(BOOL)a4 ignoringPreflightRequirements:(BOOL)a5 forUserGesture:(BOOL)a6 animated:(BOOL)a7 withCompletion:(id)a8
{
  if (a3)
  {
    [(SBCoverSheetSlidingViewController *)self _presentCoverSheetAnimated:a7 forcingTransition:a4 forUserGesture:a6 withCompletion:a8];
  }

  else
  {
    [(SBCoverSheetSlidingViewController *)self _dismissCoverSheetAnimated:a7 forcingTransition:a4 ignoringPreflightRequirements:a5 withCompletion:a8];
  }
}

- (BOOL)canTransitionToPresented:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 isPresentGestureAllowedToBegin];
  }

  else
  {
    v6 = [v4 isDismissGestureAllowedToBegin];
  }

  v7 = v6;

  return v7;
}

- (BOOL)isPresentGestureActive
{
  v2 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  v3 = [v2 isPresentGestureActive];

  return v3;
}

- (BOOL)isDismissGestureActive
{
  v2 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  v3 = [v2 isDismissGestureActive];

  return v3;
}

- (void)setDismissalSlidingMode:(int64_t)a3
{
  if (self->_dismissalSlidingMode != a3)
  {
    if (a3 != 1 && (SBHomeGestureEnabled() & 1) == 0)
    {
      [SBCoverSheetSlidingViewController setDismissalSlidingMode:];
    }

    self->_dismissalSlidingMode = a3;
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

- (BOOL)_isAnyGestureActivelyRecognized:(BOOL)a3
{
  if (!a3)
  {
    v4 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
    self->_anyGestureActivelyRecognizedCache = [v4 isAnyGestureActivelyRecognized];
  }

  return self->_anyGestureActivelyRecognizedCache;
}

- (void)setDismissGesturesEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBCoverSheetSlidingViewController *)self dismissGestureRecognizer];
  [v5 setEnabled:v3];

  v6 = [(SBCoverSheetSlidingViewController *)self dismissAddendumGestureRecognizer];
  [v6 setEnabled:v3];
}

- (void)setBackgroundView:(id)a3
{
  v7 = a3;
  if (CSFeatureEnabled())
  {
    backgroundView = self->_backgroundView;
    if (backgroundView != v7)
    {
      [(UIView *)backgroundView removeFromSuperview];
      objc_storeStrong(&self->_backgroundView, a3);
      v6 = [(SBCoverSheetSlidingViewController *)self viewIfLoaded];
      [v6 insertSubview:v7 atIndex:0];
    }
  }
}

- (CGRect)_contentViewFrame
{
  v3 = [(SBCoverSheetSlidingViewController *)self view];
  [v3 bounds];
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
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 bounds];
  v15 = [v3 initWithFrame:?];

  [v15 setAutoresizingMask:18];
  [v15 setOpaque:0];
  v5 = [MEMORY[0x277D75348] clearColor];
  [v15 setBackgroundColor:v5];

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
  v10 = [(SBCoverSheetSlidingViewControllerContentViewController *)self->_contentViewController view];
  [(SBCoverSheetSlidingViewController *)self _contentViewFrame];
  [v10 setFrame:?];

  contentViewController = self->_contentViewController;
  v12 = [(SBCoverSheetPositionView *)self->_positionView contentView];
  [(SBCoverSheetSlidingViewController *)self bs_addChildViewController:contentViewController withSuperview:v12];

  if (CSFeatureEnabled())
  {
    backgroundView = self->_backgroundView;
    if (backgroundView)
    {
      [v15 insertSubview:backgroundView atIndex:0];
    }
  }

  v14 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  [v14 setSyntheticAppearState:0];
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

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SBCoverSheetSlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v7 viewWillAppear:a3];
  v4 = [(SBCoverSheetSlidingViewControllerContentViewController *)self->_contentViewController view];
  v5 = [(SBCoverSheetPositionView *)self->_positionView contentView];
  v6 = [v4 superview];

  if (v6 != v5)
  {
    [v5 bounds];
    [v4 setFrame:?];
    [v5 addSubview:v4];
  }

  [(SBCoverSheetSlidingViewController *)self _addSystemGestureRecognizers];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SBCoverSheetSlidingViewController;
  [(SBCoverSheetSlidingViewController *)&v6 viewDidAppear:a3];
  v4 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  v5 = [v4 syntheticAppearState];

  if (!v5)
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
  v2 = self;
  v3 = [(SBCoverSheetSlidingViewController *)self delegate];
  LOBYTE(v2) = [v3 hasContentUnderCoverSheetSlidingViewController:v2];

  return v2 ^ 1;
}

- (BOOL)isPresentingDismissableOffScreenInterstitial
{
  v3 = [(SBCoverSheetSlidingViewController *)self _isPresentingInterstitialWhileOffScreen];
  if (v3)
  {
    v4 = [(SBCoverSheetSlidingViewController *)self delegate];
    v5 = [v4 coverSheetSlidingViewControllerIsInterstitialDismissalAllowed:self];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (id)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_presentCoverSheetAnimated:(BOOL)a3 forcingTransition:(BOOL)a4 forUserGesture:(BOOL)a5 withCompletion:(id)a6
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = SBLogCoverSheet();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"not ";
    if (v8)
    {
      v13 = &stru_283094718;
    }

    else
    {
      v13 = @"not ";
    }

    if (v6)
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
    [(SBCoverSheetSlidingViewController *)self _transitionToPresentationState:2 forUserGesture:0 withVelocity:v8 animated:0.0];
  }

  else
  {
    [(SBCoverSheetSlidingViewController *)self _transitionToViewControllerAppearState:1 forUserGesture:v6];
  }

  [(SBCoverSheetSlidingViewController *)self _finishTransitionToPresented:1 forcingTransition:v7 ignoringPreflightRequirements:0 animated:v8 withCompletion:v10];
}

- (void)_dismissCoverSheetAnimated:(BOOL)a3 forcingTransition:(BOOL)a4 ignoringPreflightRequirements:(BOOL)a5 withCompletion:(id)a6
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = SBLogCoverSheet();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"not ";
    if (v8)
    {
      v12 = &stru_283094718;
    }

    v15 = 138543362;
    v16 = v12;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Starting %{public}@animated dismissal", &v15, 0xCu);
  }

  if (CSFeatureEnabled())
  {
    [(SBCoverSheetSlidingViewController *)self _transitionToPresentationState:3 forUserGesture:0 withVelocity:v8 animated:0.0];
  }

  else
  {
    [(SBCoverSheetSlidingViewController *)self _transitionToViewControllerAppearState:3];
  }

  v13 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  v14 = [v13 syntheticAppearState];

  [(SBCoverSheetSlidingViewController *)self _finishTransitionToPresented:(v14 - 1) < 2 forcingTransition:v7 ignoringPreflightRequirements:v6 animated:v8 withCompletion:v10];
}

- (void)_handlePresentGesture:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  v6 = [(SBScreenEdgePanGestureRecognizer *)self->_dismissGestureRecognizer state];
  v7 = [(SBScreenEdgePanGestureRecognizer *)self->_dismissAddendumGestureRecognizer state];
  if ((v6 - 1) <= 1)
  {
    [SBCoverSheetSlidingViewController _handlePresentGesture:];
  }

  if ((v7 - 1) <= 1)
  {
    [SBCoverSheetSlidingViewController _handlePresentGesture:];
  }

  [(SBCoverSheetSlidingViewController *)self _logPresentGestureState:v5];
  if (v5 > 3)
  {
    if ((v5 - 4) < 2)
    {
      [(SBCoverSheetSlidingViewController *)self _cancelTransitionForGesture:v4];
    }

LABEL_12:
    [(BSInvalidatable *)self->_suppressTouchCancellation invalidate];
    goto LABEL_17;
  }

  if (v5 != 1)
  {
    if (v5 == 2)
    {
      [(SBCoverSheetSlidingViewController *)self _presentOrDismissGestureChangedWithGestureRecognizer:v4];
      goto LABEL_17;
    }

    if (v5 == 3)
    {
      [(SBCoverSheetSlidingViewController *)self _presentOrDismissGestureEndedWithGestureRecognizer:v4];
    }

    goto LABEL_12;
  }

  if (SBSIsSystemApertureAvailable())
  {
    v8 = [(SBProximitySensorManager *)self->_proximitySensorManager suppressBacklightChangesForReason:@"CSPresentation"];
    suppressTouchCancellation = self->_suppressTouchCancellation;
    self->_suppressTouchCancellation = v8;
  }

  [(SBCoverSheetSlidingViewController *)self _presentGestureBeganWithGestureRecognizer:v4];
  v10 = MEMORY[0x277D75D18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__SBCoverSheetSlidingViewController__handlePresentGesture___block_invoke;
  v11[3] = &unk_2783A92D8;
  v11[4] = self;
  v12 = v4;
  [v10 _performWithoutRetargetingAnimations:v11];

LABEL_17:
}

- (void)_handleIndirectPresentGesture:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  if ((v5 - 4) < 2)
  {
    self->_indirectPresentGestureCalledBegin = 0;
    [(SBCoverSheetSlidingViewController *)self _cancelTransitionForGesture:v4];
  }

  else if (v5 == 3)
  {
    self->_indirectPresentGestureCalledBegin = 0;
    [(SBCoverSheetSlidingViewController *)self _presentOrDismissGestureEndedWithGestureRecognizer:v4];
  }

  else if (v5 == 2)
  {
    if (self->_indirectPresentGestureCalledBegin)
    {
      [(SBCoverSheetSlidingViewController *)self _presentOrDismissGestureChangedWithGestureRecognizer:v4];
    }

    else
    {
      v6 = [(SBCoverSheetSlidingViewController *)self view];
      [v4 translationInView:v6];
      v8 = v7;

      if (v8 != 0.0)
      {
        self->_indirectPresentGestureCalledBegin = 1;
        [(SBCoverSheetSlidingViewController *)self _presentGestureBeganWithGestureRecognizer:v4];
        v9 = MEMORY[0x277D75D18];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __67__SBCoverSheetSlidingViewController__handleIndirectPresentGesture___block_invoke;
        v10[3] = &unk_2783A92D8;
        v10[4] = self;
        v11 = v4;
        [v9 _performWithoutRetargetingAnimations:v10];
      }
    }
  }
}

- (void)_handleDismissGesture:(id)a3
{
  v8 = a3;
  v4 = [(SBCoverSheetSlidingViewController *)self _grabberRecognizer];
  v5 = [v4 state];

  v6 = [(SBScreenEdgePanGestureRecognizer *)v8 state];
  if ((v5 - 1) <= 1)
  {
    [SBCoverSheetSlidingViewController _handleDismissGesture:];
  }

  [(SBCoverSheetSlidingViewController *)self _logDismissGestureState:v6 forAddendumGesture:self->_dismissAddendumGestureRecognizer == v8];
  if (v6 > 3)
  {
    v7 = v8;
    if ((v6 - 4) >= 2)
    {
      goto LABEL_13;
    }

    [(SBCoverSheetSlidingViewController *)self _cancelTransitionForGesture:v8];
  }

  else
  {
    if (v6 == 1)
    {
      [(SBCoverSheetSlidingViewController *)self _dismissGestureBeganWithGestureRecognizer:v8];
    }

    else
    {
      v7 = v8;
      if (v6 != 2)
      {
        if (v6 != 3)
        {
          goto LABEL_13;
        }

        [(SBCoverSheetSlidingViewController *)self _presentOrDismissGestureEndedWithGestureRecognizer:v8];
        goto LABEL_12;
      }
    }

    [(SBCoverSheetSlidingViewController *)self _dismissGestureChangedWithGestureRecognizer:v8];
  }

LABEL_12:
  v7 = v8;
LABEL_13:
}

- (void)_presentGestureBeganWithGestureRecognizer:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBCoverSheetSlidingViewController *)self currentPresentationState];
  if (v5 != 7)
  {
    v6 = v5;
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

  v9 = [(SBCoverSheetSlidingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 coverSheetSlidingViewControllerUserPresentGestureBegan:self];
  }

  if (self->_indirectPresentGestureRecognizer == v4)
  {
    [(SBCoverSheetSlidingViewController *)self _locationForGesture:v4];
    self->_initialTouchOffsetFromScreenEdge = fmax(v10, 0.0);
  }

  v11 = +[SBReachabilityManager sharedInstance];
  v12 = [v11 reachabilityModeActive];

  if (v12)
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
  v17 = [v16 reachabilityModeActive];

  if (v17)
  {
    v18 = +[SBReachabilityManager sharedInstance];
    [v18 deactivateReachability];
  }
}

- (void)_dismissGestureBeganWithGestureRecognizer:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBCoverSheetSlidingViewController *)self currentPresentationState];
  if (v5 != 1)
  {
    v6 = v5;
    if (![(SBCoverSheetSlidingViewController *)self _isPresentingAnyInterstitialForGestureRecognizer:v4])
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
  v9 = [(SBCoverSheetSlidingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 coverSheetSlidingViewControllerUserDismissGestureBegan:self];
  }

  if (self->_indirectDismissGestureRecognizer == v4)
  {
    v10 = [(SBCoverSheetSlidingViewController *)self view];
    [v10 bounds];
    Height = CGRectGetHeight(v26);
    [(SBCoverSheetSlidingViewController *)self _locationForGesture:v4];
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

  if (![(SBCoverSheetSlidingViewController *)self _isPresentingAnyInterstitialForGestureRecognizer:v4])
  {
    [(SBCoverSheetSlidingViewController *)self _velocityForGesture:v4];
    v18 = v17;
    v19 = SBLogCoverSheet();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [SBCoverSheetSlidingViewController _dismissGestureBeganWithGestureRecognizer:];
    }

    v20 = [(SBCoverSheetSlidingViewController *)self positionView];
    v21 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, v18}];
    [v20 _setVelocity:v21 forKey:@"position"];

    self->_performingCatchUpForPresentation = 0;
    [(SBCoverSheetSlidingViewController *)self _startCatchupAnimationWithDuration:0 completion:0.2];
  }
}

- (void)_presentOrDismissGestureChangedWithGestureRecognizer:(id)a3
{
  v4 = a3;
  [(SBCoverSheetSlidingViewController *)self _locationForGesture:v4];
  v6 = v5;
  v8 = v7;
  [(SBCoverSheetSlidingViewController *)self setLastTouchLocation:?];
  if ([(SBCoverSheetSlidingViewController *)self _isPresentingAnyInterstitialForGestureRecognizer:v4])
  {
    v9 = SBLogCoverSheet();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [SBCoverSheetSlidingViewController _presentOrDismissGestureChangedWithGestureRecognizer:];
    }
  }

  else
  {
    v9 = [(SBCoverSheetSlidingViewController *)self view];
    [(SBIndirectPanGestureRecognizer *)v4 translationInView:v9];
    v11 = v10;
    v13 = v12;
    [(SBIndirectPanGestureRecognizer *)v4 velocityInView:v9];
    v15 = v14;
    v17 = v16;
    [(SBCoverSheetSlidingViewController *)self setLastGestureVelocity:?];
    v18 = +[SBAssistantController sharedInstance];
    [v18 dismissAssistantViewInEverySceneIfNecessaryForGestureTranslation:v11 velocity:{v13, v15, v17}];

    if ([(SBCoverSheetSlidingViewController *)self _shouldRubberBandForGestureRecognizer:v4])
    {
      [(CSLockScreenSettings *)self->_lockScreenSettings unlockPasscodeThreshold];
      v20 = v19;
      indirectDismissGestureRecognizer = self->_indirectDismissGestureRecognizer;
      if (indirectDismissGestureRecognizer == v4 && [(SBIndirectPanGestureRecognizer *)indirectDismissGestureRecognizer currentInputType]== 1)
      {
        [(SBIndirectPanGestureRecognizer *)self->_indirectDismissGestureRecognizer activationRecognitionDistance];
        v23 = v22;
        [(SBIndirectPanGestureRecognizer *)self->_indirectDismissGestureRecognizer hysteresisForInputType:1];
        v20 = v23 - v24;
      }

      v25 = [(SBCoverSheetSlidingViewController *)self view];
      [v25 bounds];
      v27 = v26 - v8;

      v28 = v27 >= v20;
      if (v27 < v20)
      {
        [(SBCoverSheetSlidingViewController *)self _adjustedTouchLocationForCurrentDismissalMode:v6, v8];
      }

      else
      {
        v29 = [(SBCoverSheetSlidingViewController *)self delegate];
        [v29 coverSheetSlidingViewControllerDidPassRubberBandThreshold:self];

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

      [(SBIndirectPanGestureRecognizer *)v4 setEnabled:0];
      [(SBIndirectPanGestureRecognizer *)v4 setEnabled:1];
      v33 = self->_indirectDismissGestureRecognizer;
      if (v33 == v4)
      {
        [(SBIndirectPanGestureRecognizer *)v33 setPausedUntilTouchedUpOrMovedAwayFromEdge:1];
      }
    }
  }
}

- (void)_dismissGestureChangedWithGestureRecognizer:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SBCoverSheetSlidingViewController *)self _locationForGesture:v4];
  v6 = v5;
  v7 = [(SBCoverSheetSlidingViewController *)self view];
  [v7 bounds];
  Height = CGRectGetHeight(v15);

  v9 = (Height - v6) / Height;
  v10 = SBLogCoverSheet();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = v9;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "_dismissGestureChangedWithGestureRecognizer gestureProgress: %.2f", &v12, 0xCu);
  }

  if ([(SBCoverSheetSlidingViewController *)self _isPresentingAnyInterstitialForGestureRecognizer:v4])
  {
    v11 = [(SBCoverSheetSlidingViewController *)self delegate];
    [v11 coverSheetSlidingViewController:self dismissGestureChangedWithProgress:v9];
  }

  [(SBCoverSheetSlidingViewController *)self _presentOrDismissGestureChangedWithGestureRecognizer:v4];
}

- (void)_presentOrDismissGestureEndedWithGestureRecognizer:(id)a3
{
  v4 = a3;
  if (self->_indirectPresentGestureRecognizer == v4 || self->_indirectDismissGestureRecognizer == v4)
  {
    self->_initialTouchOffsetFromScreenEdge = 0.0;
  }

  v17 = v4;
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
        v15 = [(SBCoverSheetSlidingViewController *)self view];
        [v15 bounds];
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
    v10 = [(SBCoverSheetSlidingViewController *)self delegate];
    [v10 coverSheetSlidingViewControllerDidEndDismissGestureOverInterstitial:self];
  }

  else
  {
    [(SBCoverSheetSlidingViewController *)self _finishTransitionToPresented:v6 animated:1 withCompletion:0];
  }
}

- (void)_finishTransitionToPresented:(BOOL)a3 forcingTransition:(BOOL)a4 ignoringPreflightRequirements:(BOOL)a5 animated:(BOOL)a6 withCompletion:(id)a7
{
  v7 = a6;
  v9 = a4;
  v10 = a3;
  v60 = *MEMORY[0x277D85DE8];
  v36 = a7;
  if (self->_dismissalSlidingMode != 1 && !v10)
  {
    [SBCoverSheetSlidingViewController _finishTransitionToPresented:forcingTransition:ignoringPreflightRequirements:animated:withCompletion:];
  }

  v12 = [(SBCoverSheetSlidingViewController *)self delegate];
  if (!v10 && (objc_opt_respondsToSelector() & 1) != 0 && ([v12 coverSheetSlidingViewControllerShouldAllowDismissal:self] & 1) == 0)
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
    if (v7)
    {
      v15 = &stru_283094718;
    }

    *buf = 138412802;
    *&buf[4] = v15;
    if (v10)
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
      [v12 coverSheetSlidingViewController:self committingToEndPresented:v10];
      [(SBCoverSheetSlidingViewController *)self _commitTransitionToAppeared:v10 animated:v7];
    }

    goto LABEL_25;
  }

  if (!v9)
  {
    if (!a5)
    {
      if (v10 || ([v12 coverSheetSlidingViewControllerPerformExternalUnlockIfNeeded:self] & 1) == 0 && (objc_msgSend(v12, "coverSheetSlidingViewControllerPerformInterstitialTransitionIfNeeded:", self) & 1) == 0)
      {
        goto LABEL_17;
      }

      [(SBCoverSheetSlidingViewController *)self _resetScalingForTransitionIfNeeded];
    }

    [(SBCoverSheetSlidingViewController *)self _viewVelocity];
    [(SBCoverSheetSlidingViewController *)self _transitionToPresentationState:4 forUserGesture:0 withVelocity:v7 animated:?];
    v18 = 0;
    goto LABEL_26;
  }

  [(SBCoverSheetSlidingViewController *)self _dismissInterstitialForTransitionIfNeeded];
LABEL_17:
  if (objc_opt_respondsToSelector())
  {
    [v12 coverSheetSlidingViewController:self committingToEndPresented:v10];
    [(SBCoverSheetSlidingViewController *)self _commitTransitionToAppeared:v10 animated:v7];
  }

  if (v10)
  {
    v17 = 6;
  }

  else
  {
    v17 = 5;
  }

  [(SBCoverSheetSlidingViewController *)self _viewVelocity];
  [(SBCoverSheetSlidingViewController *)self _transitionToPresentationState:v17 forUserGesture:0 withVelocity:v7 animated:?];
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
  if (v10)
  {
    v21 = 1;
  }

  else
  {
    v21 = 7;
  }

  v54 = v10;
  v50[4] = self;
  v53 = v13;
  v55 = v7;
  v56 = v18;
  v51 = v37;
  v52 = v21;
  v22 = MEMORY[0x223D6F7F0](v50);
  [(SBCoverSheetSlidingViewController *)self _finalLocationForTransitionToPresented:v10];
  v24 = v23;
  v26 = v25;
  if (latestTransitionedPresentationState != v21)
  {
    [(SBCoverSheetSlidingViewController *)self _willTranslateToPresented:v10];
  }

  if (v7)
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
      [v12 coverSheetSlidingViewController:self prepareToAnimateIconFlyInForPresenting:v10 withVelocity:v28];
      [(SBCoverSheetSlidingViewController *)self _performAppFlyInToPresented:v10 animated:1 velocity:v28];
    }

    v32 = [(CSLockScreenSettings *)self->_lockScreenSettings coverSheetTransitionsSettings];
    v33 = [(SBCoverSheetSlidingViewController *)self transitionSettings];
    v34 = [v33 transitionStyle];

    if (v34 == 1)
    {
      [v32 inPlaceDamping];
      [v32 inPlaceResponse];
    }

    else
    {
      [v32 damping];
      [v32 response];
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
    v48 = v10;
    *&v46[9] = v28;
    [MEMORY[0x277D75D18] _animateUsingSpringWithTension:0 friction:v46 interactive:v22 animations:*buf completion:0.0];
  }

  else
  {
    [(SBCoverSheetSlidingViewController *)self _performAppFlyInToPresented:v10 animated:0 velocity:-1.0];
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
    v45 = v10;
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

- (void)_performTransitionToDismissed:(BOOL)a3 velocity:(double)a4
{
  v5 = a3;
  if (CSFeatureEnabled())
  {
    if (v5)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    [(UIViewFloatAnimatableProperty *)self->_transitionProperty setVelocity:a4];
    transitionProperty = self->_transitionProperty;

    [(UIViewFloatAnimatableProperty *)transitionProperty setValue:v7];
  }
}

- (void)_performAppFlyInToPresented:(BOOL)a3 animated:(BOOL)a4 velocity:(double)a5
{
  v5 = a4;
  v6 = a3;
  if (CSFeatureEnabled())
  {
    v8 = [(SBCoverSheetSlidingViewController *)self delegate];
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
    [v8 coverSheetSlidingViewController:self performIconFlyInForPresenting:v6 animated:v5 beginBlock:v10 endBlock:v9];
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

- (CGPoint)_finalLocationForTransitionToPresented:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBCoverSheetSlidingViewController *)self view];
  v5 = v4;
  if (v3)
  {
    [v4 bounds];
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

- (void)_cancelTransitionForGesture:(id)a3
{
  if (self->_indirectPresentGestureRecognizer == a3 || self->_indirectDismissGestureRecognizer == a3)
  {
    self->_initialTouchOffsetFromScreenEdge = 0.0;
  }

  frameRateAssertion = self->_frameRateAssertion;
  v5 = a3;
  [(SBFFrameRateAssertion *)frameRateAssertion invalidate];
  v6 = self->_frameRateAssertion;
  self->_frameRateAssertion = 0;

  v7 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  if ([v7 syntheticAppearState] == 3)
  {
    v8 = 1;
  }

  else
  {
    v9 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
    v8 = [v9 syntheticAppearState] == 2;
  }

  v10 = [(SBCoverSheetSlidingViewController *)self _shouldRubberBandForGestureRecognizer:v5];

  [(SBCoverSheetSlidingViewController *)self _finishTransitionToPresented:v10 || v8 animated:1 withCompletion:0];
}

- (CGPoint)_locationForGesture:(id)a3
{
  v4 = a3;
  v5 = [(SBCoverSheetSlidingViewController *)self view];
  [(SBIndirectPanGestureRecognizer *)v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  if (self->_indirectPresentGestureRecognizer == v4)
  {
    v9 = fmax(v9 - self->_initialTouchOffsetFromScreenEdge, 0.0);
  }

  else if (self->_indirectDismissGestureRecognizer == v4)
  {
    v10 = [(SBCoverSheetSlidingViewController *)self view];
    [v10 bounds];
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

- (CGPoint)_velocityForGesture:(id)a3
{
  v4 = a3;
  v5 = [(SBCoverSheetSlidingViewController *)self view];
  [v4 velocityInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)_averageVelocityForGesture:(id)a3
{
  [a3 averageTouchVelocityOverTimeDuration:0.0416666667];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)_adjustedTouchLocationForCurrentDismissalMode:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (self->_dismissalSlidingMode == 2)
  {
    [(CSLockScreenSettings *)self->_lockScreenSettings unlockRubberBandThreshold];
    v7 = v6;
    v8 = [(SBCoverSheetSlidingViewController *)self view];
    [v8 bounds];
    v10 = v9 - y;

    v11 = [(SBCoverSheetSlidingViewController *)self view];
    [v11 bounds];
    y = v12 - v7 * (1.0 - 1.0 / (v10 / v7 * 0.55 + 1.0));
  }

  v13 = x;
  v14 = y;
  result.y = v14;
  result.x = v13;
  return result;
}

- (BOOL)_shouldRubberBandForGestureRecognizer:(id)a3
{
  dismissalSlidingMode = self->_dismissalSlidingMode;
  v5 = a3;
  v6 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  v7 = [v6 dismissGestures];
  v8 = [v7 containsObject:v5];

  if (dismissalSlidingMode == 2)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_shouldEndPresentedForEndingGestureRecognizer:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(__CFString *)v4 state]!= 3)
  {
    [SBCoverSheetSlidingViewController _shouldEndPresentedForEndingGestureRecognizer:];
  }

  v5 = [(SBCoverSheetSlidingViewController *)self view];
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v6 = [(SBCoverSheetSlidingViewController *)self _mathForGestureRecognizerPointsDown:v4 position:&v18 velocity:&v17 instantVelocity:&v16 averageVelocity:&v15];
  if ([(SBCoverSheetSlidingViewController *)self _shouldRubberBandForGestureRecognizer:v4])
  {
    v7 = SBLogCoverSheet();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v4;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Rubber banding to presented for gesture: %@", buf, 0xCu);
    }

    v6 = 1;
  }

  if ([(SBCoverSheetSlidingViewController *)self _isPresentingInterstitialForGestureRecognizer:v4])
  {
    v8 = SBLogCoverSheet();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v4;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Finishing presented because presenting interstitial for gesture: %@", buf, 0xCu);
    }

    v6 = 1;
  }

  v9 = [(__CFString *)v4 state];
  [v5 bounds];
  [SBCoverSheetSlidingViewController _studyLogForGestureRecognizerState:"_studyLogForGestureRecognizerState:bounds:position:velocity:" bounds:v9 position:? velocity:?];
  v10 = SBLogCoverSheet();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(SBCoverSheetSlidingViewController *)self _grabberRecognizer];
    v12 = @"Dismiss";
    if (v11 == v4)
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

- (BOOL)_mathForGestureRecognizerPointsDown:(id)a3 position:(double *)a4 velocity:(double *)a5 instantVelocity:(double *)a6 averageVelocity:(double *)a7
{
  v12 = a3;
  v13 = [(SBCoverSheetSlidingViewController *)self view];
  [(SBCoverSheetSlidingViewController *)self _locationForGesture:v12];
  v15 = v14;
  [(SBCoverSheetSlidingViewController *)self _velocityForGesture:v12];
  v17 = v16;
  v18 = 0.0;
  v19 = v16;
  if (objc_opt_respondsToSelector())
  {
    [(SBCoverSheetSlidingViewController *)self _averageVelocityForGesture:v12];
    v19 = v20;
    v18 = v20;
  }

  [v13 bounds];
  v21 = v15 + v19 * 0.15 > CGRectGetHeight(v23) * 0.6 && v19 >= *&SBCoverSheetMinimumYVelocityForDismissal;
  [v13 bounds];
  if (v15 > CGRectGetHeight(v24) - *&SBCoverSheetMinimumYDistanceForDismissal)
  {
    v21 = 1;
  }

  if (a4)
  {
    *a4 = v15;
  }

  if (a6)
  {
    *a6 = v17;
  }

  if (a7)
  {
    *a7 = v18;
  }

  if (a5)
  {
    *a5 = v19;
  }

  return v21;
}

- (BOOL)_isPresentingInterstitialForGestureRecognizer:(id)a3
{
  v4 = self->_dismissalSlidingMode == 3;
  v5 = a3;
  v6 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  v7 = [v6 dismissGestures];
  v8 = [v7 containsObject:v5];

  return v4 & v8;
}

- (BOOL)_isPresentingAnyInterstitialForGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(SBCoverSheetSlidingViewController *)self _isPresentingInterstitialWhileOffScreen]|| [(SBCoverSheetSlidingViewController *)self _isPresentingInterstitialForGestureRecognizer:v4];

  return v5;
}

- (BOOL)_isPresentingInterstitialWhileOffScreen
{
  v3 = [(SBCoverSheetSlidingViewController *)self delegate];
  v4 = [v3 coverSheetSlidingViewControllerIsDisplayingInterstitial:self];

  if (!v4 || (self->_currentPresentationState - 3) > 1)
  {
    return 0;
  }

  return CSFeatureEnabled();
}

- (void)_logPresentGestureState:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_presentGestureState != a3)
  {
    self->_presentGestureState = a3;
    v3 = [(SBCoverSheetSlidingViewController *)self _grabberRecognizer];
    v4 = SBLogCoverSheet();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 sb_stringForState];
      v6 = [v3 view];
      [v3 locationInView:v6];
      v8 = v7;
      v9 = [v3 view];
      [v3 velocityInView:v9];
      v11 = 138543874;
      v12 = v5;
      v13 = 2048;
      v14 = v8;
      v15 = 2048;
      v16 = v10;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Present gesture: %{public}@\tposition: %f velocity: %f", &v11, 0x20u);
    }
  }
}

- (void)_logDismissGestureState:(int64_t)a3 forAddendumGesture:(BOOL)a4
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_dismissGestureState != a3)
  {
    v4 = a4;
    self->_dismissGestureState = a3;
    v6 = SBLogCoverSheet();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v7)
      {
        v8 = [(UIGestureRecognizer *)self->_dismissAddendumGestureRecognizer sb_stringForState];
        dismissAddendumGestureRecognizer = self->_dismissAddendumGestureRecognizer;
        v10 = [(SBScreenEdgePanGestureRecognizer *)dismissAddendumGestureRecognizer view];
        [(SBScreenEdgePanGestureRecognizer *)dismissAddendumGestureRecognizer locationInView:v10];
        v12 = v11;
        v13 = self->_dismissAddendumGestureRecognizer;
        v14 = [(SBScreenEdgePanGestureRecognizer *)v13 view];
        [(SBScreenEdgePanGestureRecognizer *)v13 velocityInView:v14];
        v22 = 138543874;
        v23 = v8;
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
      v8 = [(UIGestureRecognizer *)self->_dismissGestureRecognizer sb_stringForState];
      dismissGestureRecognizer = self->_dismissGestureRecognizer;
      v10 = [(SBScreenEdgePanGestureRecognizer *)dismissGestureRecognizer view];
      [(SBScreenEdgePanGestureRecognizer *)dismissGestureRecognizer locationInView:v10];
      v19 = v18;
      v20 = self->_dismissGestureRecognizer;
      v14 = [(SBScreenEdgePanGestureRecognizer *)v20 view];
      [(SBScreenEdgePanGestureRecognizer *)v20 velocityInView:v14];
      v22 = 138543874;
      v23 = v8;
      v24 = 2048;
      v25 = v19;
      v26 = 2048;
      v27 = v21;
      v16 = "Dismiss gesture: %{public}@\tposition: %f velocity: %f";
      goto LABEL_7;
    }
  }
}

- (void)_beginTransitionFromAppeared:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x277D85DE8];
  v5 = SBLogCoverSheet();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[SBCoverSheetSlidingViewController _beginTransitionFromAppeared:]", v8, 8u);
  }

  [(SBCoverSheetSlidingViewController *)self _setCornerRounded:self->_roundsCorners];
  v6 = [(SBCoverSheetSlidingViewController *)self view];
  [v6 setNeedsLayout];
  [v6 layoutIfNeeded];
  v7 = dispatch_group_create();
  [(SBCoverSheetSlidingViewController *)self setCompletionGroup:v7];
}

- (void)_updateForLocation:(CGPoint)a3 interactive:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v22 = *MEMORY[0x277D85DE8];
  v8 = SBLogCoverSheet();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    *&buf[4] = x;
    *&buf[12] = 2048;
    *&buf[14] = y;
    *&buf[22] = 1024;
    LODWORD(v19) = v4;
    _os_log_debug_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEBUG, "updateForLocation: %.2f, %.2f, %{BOOL}d", buf, 0x1Cu);
  }

  v9 = [(SBCoverSheetSlidingViewController *)self view];
  [v9 bounds];
  v11 = v10;

  v12 = [(SBCoverSheetSlidingViewController *)self progressProperty];
  v13 = 1.0 - y / v11;
  [v12 setValue:v13];

  if ((CSFeatureEnabled() & 1) == 0)
  {
    v14 = [(SBCoverSheetSlidingViewController *)self _isAnyGestureActivelyRecognized:0];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__38;
    v20 = __Block_byref_object_dispose__38;
    v21 = 0;
    v15 = [(SBCoverSheetSlidingViewController *)self delegate];
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
    [v15 coverSheetSlidingViewController:self animateForGestureActive:v14 withProgress:v17 beginBlock:v16 endBlock:v13];

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

- (void)_endTransitionToAppeared:(BOOL)a3
{
  v3 = a3;
  v6 = *MEMORY[0x277D85DE8];
  [(SBCoverSheetSlidingViewController *)self _setCornerRounded:0];
  v4 = SBLogCoverSheet();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "[SBCoverSheetSlidingViewController _endTransitionToAppeared:]", v5, 8u);
  }
}

- (CGRect)_updatePositionViewForProgress:(double)a3 velocity:(double)a4 forPresentationValue:(BOOL)a5
{
  v5 = a5;
  v9 = [(SBCoverSheetSlidingViewController *)self view];
  [v9 bounds];
  v11 = v10;

  v12 = v11 - a3 * v11;
  v13 = -(a4 * v11);
  v14 = [(SBCoverSheetSlidingViewController *)self transitionSettings];
  v15 = [v14 transitionStyle];

  if (v15 == 1)
  {
    v16 = v11;
  }

  else
  {
    v16 = v12;
  }

  if (v15 == 1)
  {
    v17 = *MEMORY[0x277CBF348];
  }

  else
  {
    v17 = 0.0;
  }

  if (v15 == 1)
  {
    v18 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v18 = v13;
  }

  v19 = [(SBCoverSheetSlidingViewController *)self positionView:*MEMORY[0x277CBF348]];
  [v19 positionContentForTouchAtLocation:self->_dismissalTransformMode withVelocity:v5 transformMode:0.0 forPresentationValue:{v16, v17, v18}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(SBCoverSheetSlidingViewController *)self _positionSubviewsForContentFrame:v5 forPresentationValue:?];

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

- (void)_setCornerRounded:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBCoverSheetSlidingViewController *)self positionView];
  v9 = [v4 contentView];

  v5 = 0.0;
  if (v3)
  {
    v6 = [MEMORY[0x277D759A0] mainScreen];
    v7 = [v6 traitCollection];
    [v7 displayCornerRadius];
    v5 = v8;
  }

  [v9 _setContinuousCornerRadius:v5];
  [v9 setClipsToBounds:v3];
}

- (void)_animationTickForPresentationValue:(BOOL)a3
{
  v3 = a3;
  v43 = *MEMORY[0x277D85DE8];
  progressProperty = self->_progressProperty;
  if (a3)
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
  if (v3)
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
    v42 = v3;
    _os_log_debug_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEBUG, "animation ticked with progress: %.2f catchup: %.2f adjustedProgress: %.2f velocity: %.2f forPresentationValue: %{BOOL}d", location, 0x30u);
  }

  [(SBCoverSheetSlidingViewController *)self _animationTickedWithProgress:v3 velocity:v14 forPresentationValue:v15];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [(SBCoverSheetSlidingViewController *)self _isAnyGestureActivelyRecognized:v3];
  v31 = [(SBCoverSheetSlidingViewController *)self delegate];
  [v31 coverSheetSlidingViewController:self animationTickedWithProgress:-[SBCoverSheetSlidingViewController _appearState](self velocity:"_appearState") == 1 isPresenting:v30 coverSheetFrame:v3 gestureActive:v14 forPresentationValue:{trailingIndicatorAnimationViewVelocityY, v23, v25, v27, v29}];
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

- (void)_transitionTickForPresentationValue:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  transitionProperty = self->_transitionProperty;
  if (a3)
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
    v18 = v3;
    _os_log_debug_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEBUG, "transition ticked with progress: %.2f velocity: %.2f forPresentationValue: %{BOOL}d", location, 0x1Cu);
  }

  [(SBCoverSheetSlidingViewController *)self _updateTransitionProgress:v3 velocity:v7 forPresentationValue:trailingIndicatorTransitionViewVelocityY];
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

- (void)_updateTransitionProgress:(double)a3 velocity:(double)a4 forPresentationValue:(BOOL)a5
{
  v5 = a5;
  v9 = [(SBCoverSheetSlidingViewController *)self positionView];
  v10 = [v9 contentView];
  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [(SBCoverSheetSlidingViewController *)self delegate];
  [v19 coverSheetSlidingViewController:self transitionTickedWithProgress:-[SBCoverSheetSlidingViewController _appearState](self velocity:"_appearState") == 1 isPresenting:0 coverSheetFrame:v5 gestureActive:a3 forPresentationValue:{a4, v12, v14, v16, v18}];
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

- (void)_startCatchupAnimationWithDuration:(double)a3 completion:(id)a4
{
  v6 = a4;
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
  v12 = v6;
  v10 = v6;
  [v9 _animateUsingSpringWithDampingRatio:0 response:v13 tracking:v11 initialDampingRatio:1.0 initialResponse:a3 dampingRatioSmoothing:0.0 responseSmoothing:0.0 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
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

- (void)_transitionToViewControllerAppearState:(int)a3 ifNeeded:(BOOL)a4 forUserGesture:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v30 = [(SBCoverSheetSlidingViewController *)self delegate];
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        [(SBCoverSheetSlidingViewController *)self setCompletionBlock:0];
        dismissalSlidingMode = self->_dismissalSlidingMode;
        if (v6)
        {
          v10 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
          v11 = [v10 syntheticAppearState] == 3;
        }

        else
        {
          v11 = 1;
        }

        v22 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
        v23 = [v22 syntheticAppearState];

        v24 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
        v25 = [v24 syntheticAppearState];

        v26 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
        [v26 setSyntheticAppearState:1];

        if (v11)
        {
          if (dismissalSlidingMode == 2)
          {
            [v30 coverSheetSlidingViewControllerPrepareForRubberBandedPresentationTransition:self];
          }

          else
          {
            [v30 coverSheetSlidingViewController:self prepareForPresentationTransitionForUserGesture:v5];
            if (!v23 || v25 == 3)
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

    [(SBCoverSheetSlidingViewController *)self _transitionToViewControllerAppearState:3 ifNeeded:1 forUserGesture:v5];
    v14 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
    [v14 setSyntheticAppearState:0];

    [v30 coverSheetSlidingViewControllerCleanupDismissalTransition:self];
    v15 = self;
    v16 = 0;
LABEL_31:
    [(SBCoverSheetSlidingViewController *)v15 _endTransitionToAppeared:v16];
    goto LABEL_32;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
      goto LABEL_32;
    }

    [(SBCoverSheetSlidingViewController *)self _transitionToViewControllerAppearState:1 ifNeeded:1 forUserGesture:v5];
    v12 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
    [v12 setSyntheticAppearState:2];

    v13 = self->_dismissalSlidingMode;
    switch(v13)
    {
      case 3:
        [v30 coverSheetSlidingViewControllerCleanupInterstitialTransition:self];
        goto LABEL_32;
      case 2:
        [v30 coverSheetSlidingViewControllerCleanupRubberBandedPresentationTransition:self];
        break;
      case 1:
        [v30 coverSheetSlidingViewControllerCleanupPresentationTransition:self];
        break;
      default:
        goto LABEL_32;
    }

    v15 = self;
    v16 = 1;
    goto LABEL_31;
  }

  [(SBCoverSheetSlidingViewController *)self setCompletionBlock:0];
  v17 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  v18 = [v17 syntheticAppearState];

  v19 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
  v20 = [v19 syntheticAppearState];

  if (v6)
  {
    v21 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
    [v21 setSyntheticAppearState:3];

    if (v18 != 1 && v20 != 2)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v27 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
    [v27 setSyntheticAppearState:3];
  }

  [v30 coverSheetSlidingViewController:self prepareForDismissalTransitionForReversingTransition:v18 == 1 forUserGesture:v5];
  v28 = self->_dismissalSlidingMode;
  if (v20 == 2 && v28 != 3)
  {
    [(SBCoverSheetSlidingViewController *)self _beginTransitionFromAppeared:1];
  }

  if ((v28 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v29 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
    [v29 setSyntheticAppearState:2];
  }

LABEL_32:
}

- (id)stringForPresentationState:(int64_t)a3
{
  if (a3 > 7)
  {
    return @"fully presented";
  }

  else
  {
    return off_2783B30F8[a3];
  }
}

- (void)_transitionToPresentationState:(int64_t)a3 forUserGesture:(BOOL)a4 withVelocity:(double)a5 animated:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v37 = *MEMORY[0x277D85DE8];
  CSFeatureEnabled();
  v11 = SBLogCoverSheet();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(SBCoverSheetSlidingViewController *)self stringForPresentationState:a3];
    v35 = 138412290;
    v36 = v12;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "SBCoverSheetSlidingViewController transitioning to presentation state %@", &v35, 0xCu);
  }

  v13 = [(SBCoverSheetSlidingViewController *)self delegate];
  currentPresentationState = self->_currentPresentationState;
  [v13 coverSheetSlidingViewController:self willChangePresentationState:a3 forUserGesture:v8 withVelocity:v6 animated:a5];
  if (a3 <= 3)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v30 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
        v31 = [v30 syntheticAppearState];

        v32 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
        v33 = [v32 syntheticAppearState];

        v34 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
        [v34 setSyntheticAppearState:1];

        if (v33 != 3 && v31)
        {
          goto LABEL_26;
        }

        [v13 coverSheetSlidingViewController:self prepareForPresentationTransitionForUserGesture:v8];
        if (v31)
        {
          goto LABEL_26;
        }

        v23 = self;
        v24 = 0;
      }

      else
      {
        if (a3 != 3)
        {
          goto LABEL_26;
        }

        v18 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
        v19 = [v18 syntheticAppearState];

        v20 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
        v21 = [v20 syntheticAppearState];

        v22 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
        [v22 setSyntheticAppearState:3];

        if (v19 != 1 && v21 != 2)
        {
          goto LABEL_26;
        }

        [v13 coverSheetSlidingViewController:self prepareForDismissalTransitionForReversingTransition:v19 == 1 forUserGesture:v8];
        if (v21 != 2)
        {
          goto LABEL_26;
        }

        v23 = self;
        v24 = 1;
      }

      [(SBCoverSheetSlidingViewController *)v23 _beginTransitionFromAppeared:v24];
      goto LABEL_26;
    }

    self->_latestTransitionedPresentationState = 1;
    v28 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
    [v28 setSyntheticAppearState:2];

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
        [v13 coverSheetSlidingViewControllerCleanupPresentationTransition:self];
        v26 = self;
        v27 = 1;
        goto LABEL_17;
    }
  }

  else
  {
    if (a3 <= 5)
    {
      if (a3 != 4)
      {
        v15 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
        v16 = v15;
        v17 = 0;
LABEL_24:
        [v15 setSyntheticAppearState:v17];
LABEL_25:

        goto LABEL_26;
      }

      [v13 coverSheetSlidingViewControllerCleanupDismissalTransition:self];
      goto LABEL_26;
    }

    if (a3 == 6)
    {
      v15 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
      v16 = v15;
      v17 = 2;
      goto LABEL_24;
    }

    if (a3 == 7)
    {
      self->_latestTransitionedPresentationState = 7;
      v25 = [(SBCoverSheetSlidingViewController *)self systemGesturesDelegate];
      [v25 setSyntheticAppearState:0];

      [v13 coverSheetSlidingViewControllerCleanupDismissalTransition:self];
      v26 = self;
      v27 = 0;
LABEL_17:
      [(SBCoverSheetSlidingViewController *)v26 _endTransitionToAppeared:v27];
    }
  }

LABEL_26:
  self->_currentPresentationState = a3;
  [v13 coverSheetSlidingViewController:self didChangePresentationStateWithPreviousState:currentPresentationState];
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
  v4 = [(SBCoverSheetSlidingViewController *)self _grabberRecognizer];
  [v3 removeGestureRecognizer:v4];

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

- (void)_addSystemGestureRecognizerIfUntracked:(id)a3 withType:(unint64_t)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[SBSystemGestureManager mainDisplayManager];
  if ([v6 isSystemGestureRecognizer:v5])
  {
    v7 = SBLogCoverSheet();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "Ignoring attempt to add CoverSheet system gesture: %@ because it is already tracked.", &v8, 0xCu);
    }
  }

  else
  {
    [v6 addGestureRecognizer:v5 withType:a4];
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v7 = a3;
  v5 = [(CSLockScreenSettings *)self->_lockScreenSettings coverSheetDismissGestureSettings];

  v6 = v7;
  if (v5 == v7)
  {
    [(SBCoverSheetSlidingViewController *)self _updateCoverSheetDismissSettings:v7];
    v6 = v7;
  }
}

- (void)_updateHomeGestureSettings:(id)a3
{
  v3 = a3;
  [v3 minimumYDistanceForHomeOrAppSwitcher];
  *&SBCoverSheetMinimumYDistanceForDismissal = v4 * SBMainScreenPointsPerMillimeter();
  [v3 minimumYVelocityForHome];
  v6 = v5;

  *&SBCoverSheetMinimumYVelocityForDismissal = v6 * SBMainScreenPointsPerMillimeter();
}

- (void)_updateCoverSheetDismissSettings:(id)a3
{
  dismissGestureRecognizer = self->_dismissGestureRecognizer;
  v5 = a3;
  [v5 edgeRegionSize];
  [(UIScreenEdgePanGestureRecognizer *)dismissGestureRecognizer _setEdgeRegionSize:?];
  v6 = self->_dismissGestureRecognizer;
  [v5 edgeRegionSize];
  [(UIScreenEdgePanGestureRecognizer *)v6 _setBottomEdgeRegionSize:?];
  -[SBScreenEdgePanGestureRecognizer setEnabled:](self->_dismissAddendumGestureRecognizer, "setEnabled:", [v5 extendSwipeUpRegion]);
  dismissAddendumGestureRecognizer = self->_dismissAddendumGestureRecognizer;
  [v5 extendedEdgeRegionSize];
  [(UIScreenEdgePanGestureRecognizer *)dismissAddendumGestureRecognizer _setEdgeRegionSize:?];
  v8 = self->_dismissAddendumGestureRecognizer;
  [v5 extendedEdgeRegionSize];
  v10 = v9;

  [(UIScreenEdgePanGestureRecognizer *)v8 _setBottomEdgeRegionSize:v10];
}

- (void)setCompletionGroup:(id)a3
{
  v5 = a3;
  if (self->_completionGroup != v5)
  {
    v6 = v5;
    [(SBCoverSheetSlidingViewController *)self setCompletionBlock:0];
    objc_storeStrong(&self->_completionGroup, a3);
    v5 = v6;
  }
}

- (void)setCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  completionBlock = self->_completionBlock;
  if (completionBlock != v4)
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

    v8 = [v4 copy];
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

- (void)_studyLogForGestureRecognizerState:(int64_t)a3 bounds:(CGRect)a4 position:(double)a5 velocity:(double)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = [MEMORY[0x277D6A798] sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__SBCoverSheetSlidingViewController__studyLogForGestureRecognizerState_bounds_position_velocity___block_invoke;
  v14[3] = &__block_descriptor_88_e5__8__0l;
  v14[4] = a3;
  *&v14[5] = a5;
  *&v14[6] = a6;
  *&v14[7] = x;
  *&v14[8] = y;
  *&v14[9] = width;
  *&v14[10] = height;
  [v13 logBlock:v14];
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

- (void)_studyLogForCompletionOfTransitionToPresented:(BOOL)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D6A798] sharedInstance];
  v6 = [v5 isEnabled];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    [v7 setObject:@"SBCoverSheetSlidingViewController" forKeyedSubscript:@"LogSource"];
    v8 = @"VisibleUI";
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = [MEMORY[0x277D75128] sharedApplication];
  v10 = [v9 activeInterfaceOrientation];

  v11 = [(UIViewController *)self _sbWindowScene];
  v12 = [v11 switcherController];

  if (a3)
  {
    v13 = @"CoverSheet";
    goto LABEL_20;
  }

  IsActive = SBWorkspaceSpringBoardIsActive();
  v15 = [v12 unlockedEnvironmentMode];
  v16 = v15 == 2;
  if (IsActive)
  {
    if (v15 != 2)
    {
      v13 = @"HomeScreen";
      goto LABEL_20;
    }

    v17 = v12;
  }

  else
  {
    v17 = v12;
    if (!v16)
    {
      v19 = [v12 layoutStatePrimaryElement];
      v20 = [v19 workspaceEntity];
      v21 = [v20 applicationSceneEntity];
      v22 = [v21 sceneHandle];

      v23 = [v22 application];
      v24 = [v23 bundleIdentifier];
      v25 = v24;
      v26 = @"Unknown";
      if (v24)
      {
        v26 = v24;
      }

      v13 = v26;

      v27 = [v22 currentInterfaceOrientation];
      if (v6)
      {
        v28 = [MEMORY[0x277CCABB0] numberWithInteger:v27];
        [v7 setObject:v28 forKeyedSubscript:@"AppInterfaceOrientation"];
      }

      goto LABEL_18;
    }
  }

  v18 = [v17 interfaceOrientation];
  if (v6)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
    [v7 setObject:v22 forKeyedSubscript:@"SwitcherInterfaceOrientation"];
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

  if (v6)
  {
    v33 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    [v7 setObject:v33 forKeyedSubscript:@"SBInterfaceOrientation"];

    [v7 setObject:v13 forKeyedSubscript:v8];
    v34 = [MEMORY[0x277D6A798] sharedInstance];
    v36 = @"VisibleUIChanged";
    v37 = v7;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    [v34 log:v35];
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