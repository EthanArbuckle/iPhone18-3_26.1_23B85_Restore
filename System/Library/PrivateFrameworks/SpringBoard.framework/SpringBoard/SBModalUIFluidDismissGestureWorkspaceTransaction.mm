@interface SBModalUIFluidDismissGestureWorkspaceTransaction
- (BOOL)_shouldDismissImmmediatelyAtFullGestureProgress;
- (SBModalUIFluidDismissGestureWorkspaceTransaction)initWithTransitionRequest:(id)request windowScene:(id)scene dismissalType:(int64_t)type initiatedFromBottomEdge:(BOOL)edge;
- (SBWindowScene)windowScene;
- (double)_backgroundWeightingForDismissal:(BOOL)dismissal;
- (double)_backgroundWeightingForGestureProgress;
- (double)_clientAnimationsDelay;
- (double)_hapticDelay;
- (double)_scaleForDismissal;
- (double)_scaleForGestureProgress;
- (double)_swipeUpGestureProgress;
- (double)_swipeUpGestureTranslation;
- (double)_yOffsetForGestureProgress;
- (double)_zoomOutDelay;
- (id)_dismissalFeedbackGenerator;
- (id)_homeScreenAnimator;
- (id)_layoutSettings;
- (id)_viewForGesture;
- (int64_t)_notificationFeedbackType;
- (void)_begin;
- (void)_cleanupHierarchyForDismissal:(BOOL)dismissal;
- (void)_didComplete;
- (void)_didInterruptWithReason:(id)reason;
- (void)_dismissClientAnimated:(BOOL)animated completion:(id)completion;
- (void)_finishInteractionAndDismiss:(BOOL)dismiss animated:(BOOL)animated;
- (void)_finishWithCompletionType:(int64_t)type;
- (void)_finishWithGesture:(id)gesture;
- (void)_setFluidDismissalState:(id)state;
- (void)_updateDismissingViewLayoutAndStyleForGesture;
- (void)_updateWithGesture:(id)gesture;
- (void)systemGestureStateChanged:(id)changed;
@end

@implementation SBModalUIFluidDismissGestureWorkspaceTransaction

- (SBModalUIFluidDismissGestureWorkspaceTransaction)initWithTransitionRequest:(id)request windowScene:(id)scene dismissalType:(int64_t)type initiatedFromBottomEdge:(BOOL)edge
{
  sceneCopy = scene;
  v18.receiver = self;
  v18.super_class = SBModalUIFluidDismissGestureWorkspaceTransaction;
  v11 = [(SBSystemGestureWorkspaceTransaction *)&v18 initWithTransitionRequest:request];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_windowScene, sceneCopy);
    assistantController = [sceneCopy assistantController];
    assistantController = v12->_assistantController;
    v12->_assistantController = assistantController;

    v12->_dismissalType = type;
    v12->_initiatedFromBottomEdge = edge;
    v15 = +[SBAppSwitcherDomain rootSettings];
    settings = v12->_settings;
    v12->_settings = v15;

    v12->_animateGestureCancelationOrFailure = 0;
  }

  return v12;
}

- (void)_didInterruptWithReason:(id)reason
{
  reasonCopy = reason;
  gestureRecognizer = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
  [gestureRecognizer setEnabled:0];

  gestureRecognizer2 = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
  [gestureRecognizer2 setEnabled:1];

  v7.receiver = self;
  v7.super_class = SBModalUIFluidDismissGestureWorkspaceTransaction;
  [(SBModalUIFluidDismissGestureWorkspaceTransaction *)&v7 _didInterruptWithReason:reasonCopy];
}

- (void)_begin
{
  dismissalType = self->_dismissalType;
  if ((dismissalType - 3) >= 4)
  {
    if ((dismissalType - 1) >= 2)
    {
      if (dismissalType)
      {
        goto LABEL_14;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBModalUIFluidDismissGestureWorkspaceTransaction.m" lineNumber:128 description:@"Invalid dismissal type for dismiss gesture workspace transaction"];
      goto LABEL_11;
    }

    assistantRootViewController = [(SBAssistantSceneControlling *)self->_assistantController assistantRootViewController];
    v8 = 256;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    transientOverlayPresenter = [WeakRetained transientOverlayPresenter];
    transientOverlayPresenter = self->_transientOverlayPresenter;
    self->_transientOverlayPresenter = transientOverlayPresenter;

    assistantRootViewController = [(SBTransientOverlayPresenting *)self->_transientOverlayPresenter viewControllerForGestureDismissal];
    v8 = 272;
  }

  v9 = *(&self->super.super.super.super.super.super.isa + v8);
  *(&self->super.super.super.super.super.super.isa + v8) = assistantRootViewController;

  if (!*(&self->super.super.super.super.super.super.isa + v8))
  {
    goto LABEL_12;
  }

  [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self addMilestone:@"SBModalUIFluidDismissGestureMilestone"];
  currentHandler = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _viewForGesture];
  gestureRecognizer = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
  _UISystemGestureLocationInView();
  v13 = v12;
  v15 = v14;

  [currentHandler bounds];
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  v20 = CGRectGetHeight(v31);
  if (v15 >= v20)
  {
    v15 = v20;
  }

  UIRectGetCenter();
  self->_dismissingViewTouchOffset.x = v13 - v21;
  self->_dismissingViewTouchOffset.y = v15 - v22;
  self->_originalBounds.origin.x = x;
  self->_originalBounds.origin.y = y;
  self->_originalBounds.size.width = width;
  self->_originalBounds.size.height = height;
  UIRectGetCenter();
  self->_originalCenter.x = v23;
  self->_originalCenter.y = v24;
LABEL_11:

LABEL_12:
  if (self->_dismissalType == 3)
  {
    v26 = +[SBKeyboardSuppressionManager sharedInstance];
    transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
    displayIdentity = [transitionRequest displayIdentity];
    [v26 startSuppressingKeyboardWithReason:@"SBModalUIFluidDismissGestureKeyboardSuppressionReason" predicate:0 displayIdentity:displayIdentity];
  }

LABEL_14:
  _dismissalFeedbackGenerator = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _dismissalFeedbackGenerator];
  [_dismissalFeedbackGenerator activateWithCompletionBlock:0];

  v30.receiver = self;
  v30.super_class = SBModalUIFluidDismissGestureWorkspaceTransaction;
  [(SBSystemGestureWorkspaceTransaction *)&v30 _begin];
}

- (void)_didComplete
{
  v6.receiver = self;
  v6.super_class = SBModalUIFluidDismissGestureWorkspaceTransaction;
  [(SBSystemGestureWorkspaceTransaction *)&v6 _didComplete];
  _dismissalFeedbackGenerator = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _dismissalFeedbackGenerator];
  [_dismissalFeedbackGenerator deactivate];

  if (self->_dismissalType == 3)
  {
    v4 = +[SBKeyboardSuppressionManager sharedInstance];
    [v4 stopSuppressingKeyboardWithReason:@"SBModalUIFluidDismissGestureKeyboardSuppressionReason"];
  }

  [(SBWindowSceneStatusBarSettingsAssertion *)self->_statusBarAssertion invalidate];
  statusBarAssertion = self->_statusBarAssertion;
  self->_statusBarAssertion = 0;
}

- (void)systemGestureStateChanged:(id)changed
{
  changedCopy = changed;
  if ([(SBModalUIFluidDismissGestureWorkspaceTransaction *)self isRunning]&& !self->_isDismissing)
  {
    state = [changedCopy state];
    if (state == 2)
    {
      [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _updateWithGesture:changedCopy];
    }

    else if (state == 1)
    {
      [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _beginWithGesture:changedCopy];
    }

    else
    {
      [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _finishWithGesture:changedCopy];
    }
  }
}

- (void)_finishWithCompletionType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = SBModalUIFluidDismissGestureWorkspaceTransaction;
  [(SBSystemGestureWorkspaceTransaction *)&v8 _finishWithCompletionType:?];
  if (type == 1)
  {
    v5 = +[SBKeyboardFocusCoordinator sharedInstance];
    windowScene = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self windowScene];
    v7 = +[SBKeyboardFocusArbitrationReason modalUIFluidDismissGestureDidFinish];
    [v5 requestArbitrationForSBWindowScene:windowScene forReason:v7];
  }

  [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self removeMilestone:@"SBModalUIFluidDismissGestureMilestone"];
}

- (void)_updateWithGesture:(id)gesture
{
  gestureCopy = gesture;
  if (!self->_hasPreservedInputViews)
  {
    self->_hasPreservedInputViews = 1;
    [(SBTransientOverlayViewController *)self->_transientOverlayViewController preserveInputViewsAnimated:1];
  }

  [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _updateDismissingViewLayoutAndStyleForGesture];
  if ([(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _shouldDismissImmmediatelyAtFullGestureProgress])
  {
    [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _swipeUpGestureProgress];
    if (v4 >= 1.0)
    {
      [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _finishInteractionAndDismiss:1 animated:1];
    }
  }
}

- (void)_finishWithGesture:(id)gesture
{
  gestureCopy = gesture;
  v12 = gestureCopy;
  if (!self->_assistantRootViewController && !self->_transientOverlayViewController)
  {
    [(SBModalUIFluidDismissGestureWorkspaceTransaction *)a2 _finishWithGesture:?];
    gestureCopy = v12;
  }

  if (([gestureCopy state] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v6 = 0;
    animateGestureCancelationOrFailure = self->_animateGestureCancelationOrFailure;
  }

  else
  {
    _viewForGesture = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _viewForGesture];
    [v12 velocityInView:_viewForGesture];
    v10 = v9;
    [v12 translationInView:_viewForGesture];
    v6 = v11 + v10 * 0.15 <= self->_dismissalThreshold;

    animateGestureCancelationOrFailure = 1;
  }

  [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _finishInteractionAndDismiss:v6 animated:animateGestureCancelationOrFailure];
}

- (void)_finishInteractionAndDismiss:(BOOL)dismiss animated:(BOOL)animated
{
  animatedCopy = animated;
  dismissCopy = dismiss;
  self->_isDismissing = dismiss;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v7 = dispatch_group_create();
  v8 = v7;
  if (dismissCopy)
  {
    dispatch_group_enter(v7);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __90__SBModalUIFluidDismissGestureWorkspaceTransaction__finishInteractionAndDismiss_animated___block_invoke;
    v21[3] = &unk_2783A8C18;
    v22 = v8;
    [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _dismissClientAnimated:animatedCopy completion:v21];
  }

  v9 = 0.0;
  if (self->_isDismissing)
  {
    [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _zoomOutDelay];
    v9 = v10;
  }

  dispatch_group_enter(v8);
  v11 = dispatch_time(0, (v9 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__SBModalUIFluidDismissGestureWorkspaceTransaction__finishInteractionAndDismiss_animated___block_invoke_2;
  block[3] = &unk_2783AF868;
  v19 = animatedCopy;
  v20 = dismissCopy;
  block[4] = self;
  v18 = v23;
  v12 = v8;
  v17 = v12;
  dispatch_after(v11, MEMORY[0x277D85CD0], block);
  if ([(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _shouldFinishImmediately])
  {
    dispatch_group_leave(v12);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__SBModalUIFluidDismissGestureWorkspaceTransaction__finishInteractionAndDismiss_animated___block_invoke_5;
  v14[3] = &unk_2783AD078;
  v14[4] = self;
  v14[5] = v23;
  v15 = dismissCopy;
  v13 = MEMORY[0x277D85CD0];
  dispatch_group_notify(v12, MEMORY[0x277D85CD0], v14);

  _Block_object_dispose(v23, 8);
}

void __90__SBModalUIFluidDismissGestureWorkspaceTransaction__finishInteractionAndDismiss_animated___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v3 = [*(a1 + 32) _layoutSettings];
  if (*(a1 + 56))
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__SBModalUIFluidDismissGestureWorkspaceTransaction__finishInteractionAndDismiss_animated___block_invoke_3;
  v10[3] = &unk_2783A9F58;
  v11 = *(a1 + 32);
  v12 = *(a1 + 57);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__SBModalUIFluidDismissGestureWorkspaceTransaction__finishInteractionAndDismiss_animated___block_invoke_4;
  v7[3] = &unk_2783AF840;
  v7[4] = v11;
  v9 = v12;
  v6 = *(a1 + 40);
  v5 = v6;
  v8 = v6;
  [v2 sb_animateWithSettings:v3 mode:v4 animations:v10 completion:v7];
}

void __90__SBModalUIFluidDismissGestureWorkspaceTransaction__finishInteractionAndDismiss_animated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _backgroundWeightingForDismissal:*(a1 + 40)];
  v28 = v2;
  v3 = *(a1 + 40);
  v4 = 1.0;
  if (v3 == 1)
  {
    [*(a1 + 32) _scaleForDismissal];
    v4 = v5;
  }

  v6 = [*(a1 + 32) _viewForGesture];
  [v6 bounds];
  CGAffineTransformMakeScale(&v30, v4, v4);
  UIRectGetCenter();
  BSRectWithSize();
  UIRectCenteredAboutPoint();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [*(a1 + 32) dismissalType];
  v16 = v8;
  v17 = v10;
  v18 = v12;
  v19 = v14;
  if (v15 == 3)
  {
    v20 = [*(a1 + 32) _homeScreenAnimator];
    [v20 setHomeScreenScale:3 behaviorMode:0 completion:1.0];

    v16 = v8;
    v17 = v10;
    v18 = v12;
    v19 = v14;
    if (*(a1 + 40) == 1)
    {
      v21 = *(a1 + 32);
      v16 = v8;
      v17 = v10;
      v18 = v12;
      v19 = v14;
      if (v21[344] == 1)
      {
        [v21 _scaleForGestureProgress];
        CGAffineTransformMakeScale(&v30, v22 * 0.95, v22 * 0.95);
        UIRectGetCenter();
        BSRectWithSize();
        UIRectCenteredAboutPoint();
        v16 = v23;
        v17 = v24;
        v18 = v25;
      }
    }
  }

  v29 = v19;
  v26 = objc_alloc_init(SBFluidDismissalState);
  [(SBFluidDismissalState *)v26 setBackgroundWeighting:v28];
  [(SBFluidDismissalState *)v26 setContentWeighting:(v3 ^ 1u)];
  [(SBFluidDismissalState *)v26 setContentRect:v8, v10, v12, v14];
  [(SBFluidDismissalState *)v26 setHomeGrabberContentRect:v16, v17, v18, v29];
  -[SBFluidDismissalState setDismissalType:](v26, "setDismissalType:", [*(a1 + 32) dismissalType]);
  if (*(a1 + 40))
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  [(SBFluidDismissalState *)v26 setTransitionPhase:v27];
  [*(a1 + 32) _setFluidDismissalState:v26];
}

void __90__SBModalUIFluidDismissGestureWorkspaceTransaction__finishInteractionAndDismiss_animated___block_invoke_4(uint64_t a1, int a2, char a3)
{
  if (a2)
  {
    if ([*(*(a1 + 32) + 368) isSystemAssistantExperienceEnabled])
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 256);
      if (v6)
      {
        if ((*(v5 + 376) - 1) <= 1)
        {
          v7 = [v6 siriPresentationViewController];
          [v7 noteFluidDismissalCompletedWithSuccess:*(a1 + 56)];
        }
      }
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = a3 & ~*(a1 + 56);
  if (([*(a1 + 32) _shouldFinishImmediately] & 1) == 0)
  {
    v8 = *(a1 + 40);

    dispatch_group_leave(v8);
  }
}

uint64_t __90__SBModalUIFluidDismissGestureWorkspaceTransaction__finishInteractionAndDismiss_animated___block_invoke_5(uint64_t result)
{
  *(*(result + 32) + 346) = 0;
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v2 = result;
    [*(result + 32) _cleanupHierarchyForDismissal:*(result + 48)];
    v3 = *(v2 + 32);
    if (*(v2 + 48))
    {
      v4 = 1;
    }

    else
    {
      v4 = -1;
    }

    return [v3 finishWithCompletionType:v4];
  }

  return result;
}

- (void)_updateDismissingViewLayoutAndStyleForGesture
{
  [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _scaleForGestureProgress];
  v4 = v3;
  [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _yOffsetForGestureProgress];
  v6 = v5;
  [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _swipeUpGestureTranslation];
  v7 = MEMORY[0x277D75D18];
  _layoutSettings = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _layoutSettings];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __97__SBModalUIFluidDismissGestureWorkspaceTransaction__updateDismissingViewLayoutAndStyleForGesture__block_invoke;
  v13[3] = &unk_2783A8C40;
  v13[4] = self;
  v13[5] = v4;
  v13[6] = v6;
  [v7 sb_animateWithSettings:_layoutSettings mode:5 animations:v13 completion:0];

  if (self->_dismissalType == 3 && !SBReduceMotion())
  {
    if (BSFloatGreaterThanFloat())
    {
      _homeScreenAnimator2 = +[SBSpotlightDomain rootSettings];
      [_homeScreenAnimator2 maxTranslationForHomeScreenScale];
      [_homeScreenAnimator2 homeScreenScaleRubberbandingMin];
      [_homeScreenAnimator2 homeScreenScaleRubberbandingMax];
      [_homeScreenAnimator2 homeScreenScaleRubberbandingRange];
      BSUIConstrainValueToIntervalWithRubberBand();
      v11 = v10;
      _homeScreenAnimator = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _homeScreenAnimator];
      [_homeScreenAnimator setHomeScreenScale:5 behaviorMode:0 completion:v11];
    }

    else
    {
      _homeScreenAnimator2 = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _homeScreenAnimator];
      [_homeScreenAnimator2 setHomeScreenScale:5 behaviorMode:0 completion:1.0];
    }
  }
}

void __97__SBModalUIFluidDismissGestureWorkspaceTransaction__updateDismissingViewLayoutAndStyleForGesture__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _viewForGesture];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v35 = v7;
  v36 = v8;
  CGAffineTransformMakeScale(&v37, *(a1 + 40), *(a1 + 40));
  UIRectGetCenter();
  BSRectWithSize();
  UIRectCenteredAboutPoint();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [*(a1 + 32) _backgroundWeightingForGestureProgress];
  v18 = v17;
  v19 = 1.0;
  if ([*(a1 + 32) dismissalType] == 3)
  {
    v20 = *(a1 + 32);
    if (v20[344] == 1)
    {
      [v20 _swipeUpGestureProgress];
      v30 = 1.0 - v21;
      v31 = v12;
      v18 = 0.0;
      v33 = v10;
      v29 = v14;
      v22 = v16;
    }

    else
    {
      v31 = v6;
      v33 = v4;
      v29 = v35;
      v22 = v36;
      v30 = 1.0;
    }

    v25 = SBReduceMotion();
    if (v25)
    {
      v10 = v4;
      v12 = v6;
      v14 = v35;
      v16 = v36;
      v26 = v4;
    }

    else
    {
      v26 = v33;
    }

    v27 = v31;
    if (v25)
    {
      v27 = v6;
    }

    v32 = v27;
    v34 = v26;
    if (v25)
    {
      v23 = v35;
    }

    else
    {
      v23 = v29;
    }

    if (v25)
    {
      v24 = v36;
    }

    else
    {
      v24 = v22;
    }

    if (v25)
    {
      v19 = 1.0;
    }

    else
    {
      v19 = v30;
    }

    if (v25)
    {
      v18 = 0.0;
    }
  }

  else
  {
    v32 = v12;
    v34 = v10;
    v23 = v14;
    v24 = v16;
  }

  v28 = objc_alloc_init(SBFluidDismissalState);
  [(SBFluidDismissalState *)v28 setBackgroundWeighting:v18];
  [(SBFluidDismissalState *)v28 setContentWeighting:v19];
  [(SBFluidDismissalState *)v28 setContentRect:v10, v12, v14, v16];
  [(SBFluidDismissalState *)v28 setHomeGrabberContentRect:v34, v32, v23, v24];
  -[SBFluidDismissalState setDismissalType:](v28, "setDismissalType:", [*(a1 + 32) dismissalType]);
  [(SBFluidDismissalState *)v28 setTransitionPhase:0];
  [*(a1 + 32) _setFluidDismissalState:v28];
}

- (id)_dismissalFeedbackGenerator
{
  dismissalFeedbackGenerator = self->_dismissalFeedbackGenerator;
  if (!dismissalFeedbackGenerator)
  {
    v4 = objc_alloc(MEMORY[0x277D757B8]);
    v5 = MEMORY[0x277D76138];
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{&unk_283370508, &unk_283370520, 0}];
    v7 = [v5 privateConfigurationForTypes:v6];
    v8 = [v4 initWithConfiguration:v7];
    v9 = self->_dismissalFeedbackGenerator;
    self->_dismissalFeedbackGenerator = v8;

    dismissalFeedbackGenerator = self->_dismissalFeedbackGenerator;
  }

  return dismissalFeedbackGenerator;
}

- (id)_layoutSettings
{
  dismissalType = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self dismissalType];
  v5 = 0;
  if (dismissalType > 4)
  {
    if ((dismissalType - 5) >= 2)
    {
      goto LABEL_11;
    }

    animationSettings = [(SBAppSwitcherSettings *)self->_settings animationSettings];
    alertBarSwipeDismissalSettings = [animationSettings alertBarSwipeDismissalSettings];
  }

  else if ((dismissalType - 2) >= 3)
  {
    if (!dismissalType)
    {
      animationSettings = [MEMORY[0x277CCA890] currentHandler];
      [animationSettings handleFailureInMethod:a2 object:self file:@"SBModalUIFluidDismissGestureWorkspaceTransaction.m" lineNumber:403 description:@"Invalid dismissal type for dismiss gesture workspace transaction"];
      v5 = 0;
      goto LABEL_10;
    }

    if (dismissalType != 1)
    {
      goto LABEL_11;
    }

    animationSettings = [(SBAppSwitcherSettings *)self->_settings animationSettings];
    alertBarSwipeDismissalSettings = [animationSettings siriSwipeDismissalSettings];
  }

  else
  {
    animationSettings = [(SBAppSwitcherSettings *)self->_settings animationSettings];
    alertBarSwipeDismissalSettings = [animationSettings alertCardifiedDismissalSettings];
  }

  v5 = alertBarSwipeDismissalSettings;
LABEL_10:

LABEL_11:

  return v5;
}

- (double)_zoomOutDelay
{
  dismissalType = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self dismissalType];
  v4 = 0.0;
  if (dismissalType > 4)
  {
    if ((dismissalType - 5) < 2)
    {
      animationSettings = [(SBAppSwitcherSettings *)self->_settings animationSettings];
      [animationSettings alertBarSwipeDismissZoomOutDelay];
      goto LABEL_9;
    }
  }

  else
  {
    if (dismissalType == 1)
    {
      animationSettings = [(SBAppSwitcherSettings *)self->_settings animationSettings];
      [animationSettings siriSwipeDismissZoomOutDelay];
      goto LABEL_9;
    }

    if (dismissalType == 2 || dismissalType == 4)
    {
      animationSettings = [(SBAppSwitcherSettings *)self->_settings animationSettings];
      [animationSettings alertCardifiedDismissZoomOutDelay];
LABEL_9:
      v4 = v6;
    }
  }

  return v4;
}

- (double)_clientAnimationsDelay
{
  dismissalType = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self dismissalType];
  v4 = 0.0;
  if (dismissalType > 4)
  {
    if ((dismissalType - 5) < 2)
    {
      animationSettings = [(SBAppSwitcherSettings *)self->_settings animationSettings];
      [animationSettings alertBarSwipeDismissClientAnimationsDelay];
      goto LABEL_9;
    }
  }

  else
  {
    if (dismissalType == 1)
    {
      animationSettings = [(SBAppSwitcherSettings *)self->_settings animationSettings];
      [animationSettings siriSwipeDismissClientAnimationsDelay];
      goto LABEL_9;
    }

    if (dismissalType == 2 || dismissalType == 4)
    {
      animationSettings = [(SBAppSwitcherSettings *)self->_settings animationSettings];
      [animationSettings alertCardifiedDismissClientAnimationsDelay];
LABEL_9:
      v4 = v6;
    }
  }

  return v4;
}

- (double)_hapticDelay
{
  dismissalType = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self dismissalType];
  v4 = 0.0;
  if (dismissalType > 4)
  {
    if ((dismissalType - 5) < 2)
    {
      animationSettings = [(SBAppSwitcherSettings *)self->_settings animationSettings];
      [animationSettings alertBarSwipeDismissHapticDelay];
      goto LABEL_9;
    }
  }

  else
  {
    if (dismissalType == 1)
    {
      animationSettings = [(SBAppSwitcherSettings *)self->_settings animationSettings];
      [animationSettings siriSwipeDismissHapticDelay];
      goto LABEL_9;
    }

    if (dismissalType == 2 || dismissalType == 4)
    {
      animationSettings = [(SBAppSwitcherSettings *)self->_settings animationSettings];
      [animationSettings alertCardifiedDismissHapticDelay];
LABEL_9:
      v4 = v6;
    }
  }

  return v4;
}

- (int64_t)_notificationFeedbackType
{
  dismissalType = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self dismissalType];
  if (dismissalType > 6)
  {
    return 0;
  }

  else
  {
    return qword_21F8A6000[dismissalType];
  }
}

- (void)_dismissClientAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v8 = 0.0;
  v9 = 0.0;
  if (animatedCopy)
  {
    [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _clientAnimationsDelay];
    v9 = v10;
  }

  v11 = dispatch_time(0, (v9 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__SBModalUIFluidDismissGestureWorkspaceTransaction__dismissClientAnimated_completion___block_invoke;
  block[3] = &unk_2783ABD10;
  v20 = animatedCopy;
  block[4] = self;
  block[5] = a2;
  dispatch_after(v11, MEMORY[0x277D85CD0], block);
  if (animatedCopy)
  {
    [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _hapticDelay];
    v8 = v12;
    v13 = dispatch_time(0, (v12 * 1000000000.0));
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __86__SBModalUIFluidDismissGestureWorkspaceTransaction__dismissClientAnimated_completion___block_invoke_2;
    v18[3] = &unk_2783A8C18;
    v18[4] = self;
    v14 = MEMORY[0x277D85CD0];
    dispatch_after(v13, MEMORY[0x277D85CD0], v18);
  }

  if (v9 >= v8)
  {
    v15 = v9;
  }

  else
  {
    v15 = v8;
  }

  v16 = dispatch_time(0, (v15 * 1000000000.0));
  v17 = MEMORY[0x277D85CD0];
  dispatch_after(v16, MEMORY[0x277D85CD0], completionCopy);
}

void __86__SBModalUIFluidDismissGestureWorkspaceTransaction__dismissClientAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dismissalType];
  if ((v2 - 3) >= 4)
  {
    if ((v2 - 1) >= 2)
    {
      if (!v2)
      {
        v6 = [MEMORY[0x277CCA890] currentHandler];
        [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"SBModalUIFluidDismissGestureWorkspaceTransaction.m" lineNumber:534 description:@"Invalid dismissal type for dismiss gesture workspace transaction"];
      }
    }

    else
    {
      v4 = *(*(a1 + 32) + 368);
      v5 = *(a1 + 48);

      [v4 dismissAssistantViewIfNecessaryWithAnimation:v5];
    }
  }

  else
  {
    v3 = *(*(a1 + 32) + 272);

    [v3 handleGestureDismissal];
  }
}

void __86__SBModalUIFluidDismissGestureWorkspaceTransaction__dismissClientAnimated_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _dismissalFeedbackGenerator];
  [v2 _privateNotificationOccurred:{objc_msgSend(*(a1 + 32), "_notificationFeedbackType")}];
}

- (double)_scaleForDismissal
{
  dismissalType = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self dismissalType];
  result = 0.0;
  if (dismissalType <= 6)
  {
    return dbl_21F8A6038[dismissalType];
  }

  return result;
}

- (double)_backgroundWeightingForDismissal:(BOOL)dismissal
{
  dismissalCopy = dismissal;
  dismissalType = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self dismissalType];
  if (dismissalType > 6)
  {
    return 0.0;
  }

  if (dismissalType == 3)
  {
    v7 = +[SBLockScreenManager sharedInstance];
    isUILocked = [v7 isUILocked];

    v9 = +[SBSpotlightDomain rootSettings];
    v10 = v9;
    v5 = 0.0;
    if (isUILocked)
    {
      v11 = !dismissalCopy;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      [v9 dimmingViewRubberbandingMax];
      v5 = v12;
    }
  }

  else if (dismissalCopy)
  {
    return 0.0;
  }

  else
  {
    return 1.0;
  }

  return v5;
}

- (double)_scaleForGestureProgress
{
  [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _swipeUpGestureProgress];
  v4 = v3;
  dismissalType = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self dismissalType];
  if (dismissalType > 6)
  {
    return 0.0;
  }

  if (((1 << dismissalType) & 0x1E) != 0)
  {
    return v4 * -0.145 + 1.0;
  }

  return 1.0;
}

- (double)_backgroundWeightingForGestureProgress
{
  [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _swipeUpGestureProgress];
  v4 = v3;
  dismissalType = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self dismissalType];
  if (dismissalType > 6)
  {
    return 0.0;
  }

  if (((1 << dismissalType) & 0x16) != 0)
  {
    return v4 * -0.1 + 0.9;
  }

  if (((1 << dismissalType) & 0x61) != 0)
  {
    return 1.0;
  }

  [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _swipeUpGestureTranslation];
  v6 = 0.0;
  if (BSFloatGreaterThanFloat())
  {
    v7 = +[SBSpotlightDomain rootSettings];
    [v7 maxTranslationForDimmingView];
    [v7 dimmingViewRubberbandingMin];
    v9 = v8;
    [v7 dimmingViewRubberbandingMax];
    [v7 dimmingViewRubberbandingRange];
    BSUIConstrainValueToIntervalWithRubberBand();
    v6 = v11;
  }

  return v6;
}

- (double)_yOffsetForGestureProgress
{
  [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _swipeUpGestureProgress];
  v4 = v3;
  dismissalType = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self dismissalType];
  if (dismissalType > 6)
  {
    return 0.0;
  }

  if (((1 << dismissalType) & 0x1D) != 0)
  {
    v6 = -10.0;
  }

  else if (((1 << dismissalType) & 0x60) != 0)
  {
    v6 = -15.0;
  }

  else
  {
    v6 = -25.0;
  }

  return v4 * v6 + 0.0;
}

- (double)_swipeUpGestureTranslation
{
  gestureRecognizer = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
  state = [gestureRecognizer state];

  v5 = 0.0;
  if (state != 1)
  {
    _viewForGesture = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _viewForGesture];
    dismissalType = self->_dismissalType;
    gestureRecognizer2 = [(SBSystemGestureWorkspaceTransaction *)self gestureRecognizer];
    v9 = gestureRecognizer2;
    if (dismissalType == 3)
    {
      [gestureRecognizer2 translationInView:_viewForGesture];
      v5 = v10;
    }

    else
    {
      _UISystemGestureTranslationInView();
      v12 = v11;

      v5 = fmin(v12, 0.0);
    }
  }

  return v5;
}

- (double)_swipeUpGestureProgress
{
  [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self _swipeUpGestureTranslation];
  v4 = v3;
  dismissalType = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self dismissalType];
  if (dismissalType < 5)
  {
    v6 = fabs(v4);
    v7 = pow((v6 + v6) / 500.0 + 0.0, 0.7);
    tanh(v7 * 0.6);
LABEL_4:
    BSIntervalMap();
    return result;
  }

  if (dismissalType - 5 < 2)
  {
    goto LABEL_4;
  }

  return 0.0;
}

- (BOOL)_shouldDismissImmmediatelyAtFullGestureProgress
{
  dismissalType = [(SBModalUIFluidDismissGestureWorkspaceTransaction *)self dismissalType];
  if ((dismissalType - 5) < 2)
  {
    return 1;
  }

  if (!dismissalType)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBModalUIFluidDismissGestureWorkspaceTransaction.m" lineNumber:739 description:@"Invalid dismissal type for dismiss gesture workspace transaction"];

    return 0;
  }

  if (dismissalType != 3)
  {
    return 0;
  }

  return SBReduceMotion();
}

- (void)_setFluidDismissalState:(id)state
{
  stateCopy = state;
  assistantRootViewController = self->_assistantRootViewController;
  if (assistantRootViewController && (self->_dismissalType - 1) <= 1)
  {
    v7 = stateCopy;
    [(SBAssistantRootViewController *)assistantRootViewController setFluidDismissalState:stateCopy];
LABEL_7:
    stateCopy = v7;
    goto LABEL_8;
  }

  if (self->_transientOverlayViewController)
  {
    transientOverlayPresenter = self->_transientOverlayPresenter;
    if (transientOverlayPresenter)
    {
      v7 = stateCopy;
      [(SBTransientOverlayPresenting *)transientOverlayPresenter setFluidDismissalState:stateCopy forViewController:?];
      goto LABEL_7;
    }
  }

LABEL_8:
}

- (id)_viewForGesture
{
  if (self->_transientOverlayViewController)
  {
    transientOverlayViewController = self->_transientOverlayViewController;
  }

  else
  {
    transientOverlayViewController = self->_assistantRootViewController;
  }

  view = [transientOverlayViewController view];

  return view;
}

- (void)_cleanupHierarchyForDismissal:(BOOL)dismissal
{
  if (self->_hasPreservedInputViews)
  {
    self->_hasPreservedInputViews = 0;
    [(SBTransientOverlayViewController *)self->_transientOverlayViewController restoreInputViewsAnimated:1];
  }

  [(SBWindowSceneStatusBarSettingsAssertion *)self->_statusBarAssertion invalidate];
  statusBarAssertion = self->_statusBarAssertion;
  self->_statusBarAssertion = 0;

  assistantRootViewController = self->_assistantRootViewController;
  self->_assistantRootViewController = 0;

  transientOverlayViewController = self->_transientOverlayViewController;
  self->_transientOverlayViewController = 0;

  transientOverlayPresenter = self->_transientOverlayPresenter;
  self->_transientOverlayPresenter = 0;
}

- (id)_homeScreenAnimator
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  homeScreenController = [WeakRetained homeScreenController];

  return homeScreenController;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (void)_finishWithGesture:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBModalUIFluidDismissGestureWorkspaceTransaction.m" lineNumber:210 description:@"We reached the end of a modal UI dismissal transaction with no _assistantRootViewController or _transientOverlayViewController..."];
}

@end