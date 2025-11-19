@interface SBGrabberTongue
- (BOOL)_shouldAllowSecondSwipeWithRecognizer:(id)a3;
- (BOOL)_shouldReceiveTouch:(id)a3;
- (BOOL)_shouldSecondSwipeDismissTongueWithRecognizer:(id)a3;
- (BOOL)_shouldShowTongueOnFirstSwipeWithRecognizer:(id)a3;
- (BOOL)_tongueOrPullEnabledForGestureRecognizer:(id)a3;
- (BOOL)dismissWithStyle:(int64_t)a3 animated:(BOOL)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGAffineTransform)_transformForTongueContainer;
- (CGRect)_chevronFrameForTongueBounds:(CGRect)a3;
- (CGRect)_frameForTongueWhenVisible:(BOOL)a3;
- (SBGrabberTongue)init;
- (SBGrabberTongue)initWithDelegate:(id)a3 edge:(unint64_t)a4 type:(unint64_t)a5 windowScene:(id)a6;
- (SBGrabberTongueDelegate)delegate;
- (UIEdgeInsets)_grabberTongueScreenInsets;
- (double)_ambiguousActivationMargin;
- (double)_ambiguousActivationMarginIfHonored;
- (double)_centerOnScreenEdge;
- (double)_distanceFromEdgeForRecognizer:(id)a3;
- (double)_edgeOrientedVelocityForRecognizer:(id)a3;
- (double)edgeLocationForTouch:(id)a3;
- (id)_createEdgePullGestureRecognizerWithAction:(SEL)a3;
- (id)_createTapGestureRecognizerWithAction:(SEL)a3;
- (id)_newBackdropViewWithColorStyle:(int64_t)a3;
- (id)_newChevronView;
- (void)_cancelPendingTongueDismissRequests;
- (void)_createTongueAndGestureRecognizersIfNecessaryWithColorStyle:(int64_t)a3;
- (void)_didDismiss;
- (void)_didPresentInteractively:(id)a3;
- (void)_dismissTongueWithStyle:(int64_t)a3 animated:(BOOL)a4;
- (void)_handlePullGesture:(id)a3;
- (void)_handleTapped:(id)a3;
- (void)_presentTongueAnimated:(BOOL)a3 autoDismiss:(BOOL)a4;
- (void)_pullGestureBegan:(id)a3;
- (void)_pullGestureCanceled:(id)a3;
- (void)_pullGestureEnded:(id)a3;
- (void)_pullGestureUpdated:(id)a3;
- (void)_updateCancelsTouchesWithRecognizerIfNeeded:(id)a3;
- (void)_willDismiss;
- (void)_willPresent;
- (void)_willPresentInteractively:(id)a3;
- (void)dealloc;
- (void)installInView:(id)a3 withColorStyle:(int64_t)a4;
- (void)invalidate;
- (void)uninstall;
@end

@implementation SBGrabberTongue

- (double)_ambiguousActivationMarginIfHonored
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = 0.0;
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained grabberTongueHonorsAmbiguousActivationMargin:self])
  {
    [(SBGrabberTongue *)self _ambiguousActivationMargin];
    v4 = v5;
  }

  return v4;
}

- (SBGrabberTongue)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBGrabberTongue.m" lineNumber:92 description:@"use initWithDelegate:..."];

  return 0;
}

- (SBGrabberTongue)initWithDelegate:(id)a3 edge:(unint64_t)a4 type:(unint64_t)a5 windowScene:(id)a6
{
  v11 = a3;
  v12 = a6;
  if (!v11)
  {
    [SBGrabberTongue initWithDelegate:a2 edge:self type:? windowScene:?];
  }

  v16.receiver = self;
  v16.super_class = SBGrabberTongue;
  v13 = [(SBGrabberTongue *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, v11);
    v14->_screenEdge = a4;
    v14->_systemGestureType = a5;
    objc_storeWeak(&v14->_windowScene, v12);
    v14->_gestureStartTime = -1.79769313e308;
  }

  return v14;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBGrabberTongue.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"_invalidated"}];
}

- (void)invalidate
{
  [(SBGrabberTongue *)self uninstall];
  objc_storeWeak(&self->_delegate, 0);
  self->_invalidated = 1;
}

- (void)installInView:(id)a3 withColorStyle:(int64_t)a4
{
  v7 = a3;
  if (self->_containingView)
  {
    [SBGrabberTongue installInView:a2 withColorStyle:self];
  }

  containingView = self->_containingView;
  self->_containingView = v7;
  v9 = v7;

  [(SBGrabberTongue *)self _createTongueAndGestureRecognizersIfNecessaryWithColorStyle:a4];
  [(UIView *)self->_tongueContainer setAccessibilityIdentifier:@"sb-grabber-tongue"];
  [(UIView *)self->_containingView addSubview:self->_tongueContainer];
}

- (void)uninstall
{
  if (self->_tongueContainer)
  {
    tongueBackdropView = self->_tongueBackdropView;
    self->_tongueBackdropView = 0;

    tongueChevron = self->_tongueChevron;
    self->_tongueChevron = 0;

    [(UIView *)self->_tongueContainer removeFromSuperview];
    tongueContainer = self->_tongueContainer;
    self->_tongueContainer = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v11 = [WeakRetained systemGestureManager];

  [v11 removeGestureRecognizer:self->_edgePullGestureRecognizer];
  [(UIPanGestureRecognizer *)self->_edgePullGestureRecognizer setDelegate:0];
  edgePullGestureRecognizer = self->_edgePullGestureRecognizer;
  self->_edgePullGestureRecognizer = 0;

  [v11 removeGestureRecognizer:self->_indirectEdgePullGestureRecognizer];
  [(SBIndirectPanGestureRecognizer *)self->_indirectEdgePullGestureRecognizer setDelegate:0];
  indirectEdgePullGestureRecognizer = self->_indirectEdgePullGestureRecognizer;
  self->_indirectEdgePullGestureRecognizer = 0;

  [v11 removeGestureRecognizer:self->_tapGestureRecognizer];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:0];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = 0;

  containingView = self->_containingView;
  self->_containingView = 0;
}

- (BOOL)dismissWithStyle:(int64_t)a3 animated:(BOOL)a4
{
  tongueVisible = self->_tongueVisible;
  if (tongueVisible)
  {
    [(SBGrabberTongue *)self _dismissTongueWithStyle:a3 animated:a4];
  }

  return tongueVisible;
}

- (double)edgeLocationForTouch:(id)a3
{
  _UISystemGestureLocationForTouchInView();
  v6 = v5;
  screenEdge = self->_screenEdge;
  result = 0.0;
  if (screenEdge > 3)
  {
    if (screenEdge == 8)
    {
      return v4;
    }

    if (screenEdge != 4)
    {
      return result;
    }

    return v6;
  }

  if (screenEdge == 1)
  {
    return v6;
  }

  if (screenEdge == 2)
  {
    return v4;
  }

  return result;
}

- (BOOL)_tongueOrPullEnabledForGestureRecognizer:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained grabberTongueOrPullEnabled:self forGestureRecognizer:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldShowTongueOnFirstSwipeWithRecognizer:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (self->_indirectEdgePullGestureRecognizer != v4 && WeakRetained != 0)
  {
    _UISystemGestureLocationInView();
    v11 = v9;
    screenEdge = self->_screenEdge;
    v13 = 0.0;
    if (screenEdge > 3)
    {
      if (screenEdge == 8)
      {
LABEL_14:
        v13 = v10;
        goto LABEL_15;
      }

      if (screenEdge != 4)
      {
LABEL_15:
        v8 = [v6 grabberTongue:self shouldShowTongueOnFirstSwipeWithEdgeLocation:v13];
        goto LABEL_16;
      }
    }

    else if (screenEdge != 1)
    {
      if (screenEdge != 2)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v13 = v11;
    goto LABEL_15;
  }

  v8 = 0;
LABEL_16:

  return v8;
}

- (BOOL)_shouldReceiveTouch:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [WeakRetained grabberTongue:self shouldReceiveTouch:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)_shouldAllowSecondSwipeWithRecognizer:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = objc_opt_respondsToSelector();
  }

  else
  {
    v6 = 0;
  }

  _UISystemGestureLocationInView();
  v9 = v8;
  screenEdge = self->_screenEdge;
  v11 = 0.0;
  if (screenEdge > 3)
  {
    if (screenEdge == 8)
    {
LABEL_13:
      v11 = v7;
      if (v6)
      {
        goto LABEL_12;
      }

LABEL_14:
      v12 = [(SBGrabberTongue *)self isEdgeLocationInGrabberRegion:v11];
      goto LABEL_15;
    }

    if (screenEdge != 4)
    {
      goto LABEL_11;
    }

LABEL_10:
    v11 = v9;
    goto LABEL_11;
  }

  if (screenEdge == 1)
  {
    goto LABEL_10;
  }

  if (screenEdge == 2)
  {
    goto LABEL_13;
  }

LABEL_11:
  if ((v6 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  v12 = [WeakRetained grabberTongue:self shouldAllowSecondSwipeWithEdgeLocation:v11];
LABEL_15:
  v13 = v12;

  return v13;
}

- (BOOL)_shouldSecondSwipeDismissTongueWithRecognizer:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = objc_opt_respondsToSelector();
  }

  else
  {
    v6 = 0;
  }

  _UISystemGestureLocationInView();
  v9 = v8;
  screenEdge = self->_screenEdge;
  v11 = 0.0;
  if (screenEdge > 3)
  {
    if (screenEdge == 8)
    {
LABEL_13:
      v11 = v7;
      if (v6)
      {
        goto LABEL_12;
      }

LABEL_14:
      v12 = 1;
      goto LABEL_15;
    }

    if (screenEdge != 4)
    {
      goto LABEL_11;
    }

LABEL_10:
    v11 = v9;
    goto LABEL_11;
  }

  if (screenEdge == 1)
  {
    goto LABEL_10;
  }

  if (screenEdge == 2)
  {
    goto LABEL_13;
  }

LABEL_11:
  if ((v6 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  v12 = [WeakRetained grabberTongue:self shouldDismissTongueOnSecondSwipeWithEdgeLocation:v11];
LABEL_15:

  return v12;
}

- (double)_ambiguousActivationMargin
{
  v25 = *MEMORY[0x277D85DE8];
  if (!SBWorkspaceHasApplicationSceneInLockedOrUnlockedEnvironmentLayoutState())
  {
LABEL_6:
    v5 = SBApp;

    [v5 bottomEdgeAmbiguousActivationMargin];
    return result;
  }

  v2 = +[SBWorkspace mainWorkspace];
  v3 = [v2 transientOverlayPresentationManager];
  if ([v3 hasActivePresentation])
  {
LABEL_5:

    goto LABEL_6;
  }

  v4 = +[SBCoverSheetPresentationManager sharedInstance];
  if ([v4 isVisible])
  {

    goto LABEL_5;
  }

  v7 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v8 = [v7 isAnySwitcherVisible];

  if (v8)
  {
    goto LABEL_6;
  }

  v9 = SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [*(*(&v20 + 1) + 8 * i) sceneIfExists];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 uiClientSettings];
          [v17 controlCenterAmbiguousActivationMargin];
          v19 = v18;

          if (v19 >= v13)
          {
            v13 = v19;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (double)_centerOnScreenEdge
{
  v2 = self->_screenEdge & 5;
  [(UIView *)self->_containingView bounds];
  if (v2)
  {

    return CGRectGetMidX(*&v3);
  }

  else
  {

    return CGRectGetMidY(*&v3);
  }
}

- (void)_pullGestureBegan:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(SBGrabberTongue *)self _distanceFromEdgeForRecognizer:v8];
    v6 = v5;
    [(SBGrabberTongue *)self _edgeOrientedVelocityForRecognizer:v8];
    [WeakRetained grabberTongueBeganPulling:self withDistance:v8 andVelocity:v6 andGesture:v7];
  }
}

- (void)_pullGestureUpdated:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(SBGrabberTongue *)self _distanceFromEdgeForRecognizer:v8];
    v6 = v5;
    [(SBGrabberTongue *)self _edgeOrientedVelocityForRecognizer:v8];
    [WeakRetained grabberTongueUpdatedPulling:self withDistance:v8 andVelocity:v6 andGesture:v7];
  }
}

- (void)_pullGestureEnded:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(SBGrabberTongue *)self _distanceFromEdgeForRecognizer:v8];
    v6 = v5;
    [(SBGrabberTongue *)self _edgeOrientedVelocityForRecognizer:v8];
    [WeakRetained grabberTongueEndedPulling:self withDistance:v8 andVelocity:v6 andGesture:v7];
  }
}

- (void)_pullGestureCanceled:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(SBGrabberTongue *)self _distanceFromEdgeForRecognizer:v8];
    v6 = v5;
    [(SBGrabberTongue *)self _edgeOrientedVelocityForRecognizer:v8];
    [WeakRetained grabberTongueCanceledPulling:self withDistance:v8 andVelocity:v6 andGesture:v7];
  }
}

- (void)_willPresent
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained grabberTongueWillPresent:self];
  }
}

- (void)_willDismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained grabberTongueWillDismiss:self];
  }
}

- (void)_didDismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained grabberTongueDidDismiss:self];
  }
}

- (void)_willPresentInteractively:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(SBGrabberTongue *)self _distanceFromEdgeForRecognizer:v8];
    v6 = v5;
    [(SBGrabberTongue *)self _edgeOrientedVelocityForRecognizer:v8];
    [WeakRetained grabberTongueWillPresentInteractively:self withDistance:v6 andVelocity:v7];
  }
}

- (void)_didPresentInteractively:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(SBGrabberTongue *)self _distanceFromEdgeForRecognizer:v8];
    v6 = v5;
    [(SBGrabberTongue *)self _edgeOrientedVelocityForRecognizer:v8];
    [WeakRetained grabberTongueDidPresentInteractively:self withDistance:v6 andVelocity:v7];
  }
}

- (void)_createTongueAndGestureRecognizersIfNecessaryWithColorStyle:(int64_t)a3
{
  if (self->_tongueContainer)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v34 = [WeakRetained systemGestureManager];

  v7 = [(SBGrabberTongue *)self name];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = objc_opt_class();
    v9 = NSStringFromClass(v10);
  }

  v11 = v9;

  v12 = [(SBGrabberTongue *)self _createEdgePullGestureRecognizerWithAction:sel__handlePullGesture_];
  edgePullGestureRecognizer = self->_edgePullGestureRecognizer;
  self->_edgePullGestureRecognizer = v12;

  v14 = self->_edgePullGestureRecognizer;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-edgePullGestureRecognizer-%X", v11, self->_screenEdge];
  [(UIPanGestureRecognizer *)v14 setName:v15];

  [(UIPanGestureRecognizer *)self->_edgePullGestureRecognizer setDelegate:self];
  [(UIPanGestureRecognizer *)self->_edgePullGestureRecognizer setCancelsTouchesInView:0];
  [v34 addGestureRecognizer:self->_edgePullGestureRecognizer withType:self->_systemGestureType];
  v16 = [(SBGrabberTongue *)self _createTapGestureRecognizerWithAction:sel__handleTapped_];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v16;

  v18 = self->_tapGestureRecognizer;
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-tapGestureRecognizer-%X", v11, self->_screenEdge];
  [(UITapGestureRecognizer *)v18 setName:v19];

  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:self];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setCancelsTouchesInView:0];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setAllowedTouchTypes:&unk_28336EAF0];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer sbf_setPencilTouchesAllowed:_os_feature_enabled_impl()];
  systemGestureType = self->_systemGestureType;
  if (systemGestureType == 19)
  {
    v21 = 21;
    goto LABEL_9;
  }

  if (systemGestureType == 20)
  {
    v21 = 22;
LABEL_9:
    [v34 addGestureRecognizer:self->_tapGestureRecognizer withType:v21];
  }

  v22 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v23 = [v22 indirectPanGestureRecognizerForGrabberTongue:self];
    indirectEdgePullGestureRecognizer = self->_indirectEdgePullGestureRecognizer;
    self->_indirectEdgePullGestureRecognizer = v23;
  }

  v25 = self->_indirectEdgePullGestureRecognizer;
  if (v25)
  {
    [(SBIndirectPanGestureRecognizer *)v25 setDelegate:self];
    [(SBIndirectPanGestureRecognizer *)self->_indirectEdgePullGestureRecognizer addTarget:self action:sel__handlePullGesture_];
    [v34 addGestureRecognizer:self->_indirectEdgePullGestureRecognizer withType:{objc_msgSend(v22, "indirectPanSystemGestureTypeForGrabberTongue:", self)}];
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v22 shouldSuppressTongueViewForGrabberTongue:self])
  {
    tongueContainer = self->_tongueContainer;
    self->_tongueContainer = 0;
  }

  else
  {
    v27 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 96.0, 30.0}];
    v28 = self->_tongueContainer;
    self->_tongueContainer = v27;

    [(UIView *)self->_tongueContainer setClipsToBounds:1];
    [(UIView *)self->_tongueContainer setOpaque:0];
    [(UIView *)self->_tongueContainer setUserInteractionEnabled:1];
    [(UIView *)self->_tongueContainer _setContinuousCornerRadius:13.0];
    v29 = [(UIView *)self->_tongueContainer layer];
    [v29 setMaskedCorners:12];

    v30 = [(SBGrabberTongue *)self _newBackdropViewWithColorStyle:a3];
    tongueBackdropView = self->_tongueBackdropView;
    self->_tongueBackdropView = v30;

    v32 = [(SBGrabberTongue *)self _newChevronView];
    tongueChevron = self->_tongueChevron;
    self->_tongueChevron = v32;

    [(UIView *)self->_tongueContainer addSubview:self->_tongueBackdropView];
    [(UIView *)self->_tongueContainer addSubview:self->_tongueChevron];
    [(_UIBackdropView *)self->_tongueBackdropView setComputesColorSettings:1];
    [(_UIBackdropView *)self->_tongueBackdropView setAppliesOutputSettingsAutomatically:1];
    [(_UIBackdropView *)self->_tongueBackdropView setAppliesOutputSettingsAnimationDuration:1.0];
  }

  [(UIView *)self->_tongueContainer setAlpha:0.0];
}

- (id)_createEdgePullGestureRecognizerWithAction:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained customGestureRecognizerForGrabberTongue:self];
  }

  else
  {
    v6 = [[SBScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:a3];
    [(UIScreenEdgePanGestureRecognizer *)v6 setEdges:self->_screenEdge];
  }

  [(SBScreenEdgePanGestureRecognizer *)v6 addTarget:self action:a3];

  return v6;
}

- (id)_createTapGestureRecognizerWithAction:(SEL)a3
{
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:a3];

  return v3;
}

- (id)_newBackdropViewWithColorStyle:(int64_t)a3
{
  if (a3)
  {
    v4 = 11050;
  }

  else
  {
    v4 = 2020;
  }

  v5 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:v4];
  [v5 setGroupName:@"GrabberTongue"];
  [(UIView *)self->_tongueContainer bounds];
  [v5 setFrame:?];
  return v5;
}

- (id)_newChevronView
{
  v2 = [MEMORY[0x277D755B8] imageNamed:@"grabber-chevron"];
  v3 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v2];
  CGAffineTransformMakeRotation(&v5, 3.14159265);
  [v3 setTransform:&v5];

  return v3;
}

- (void)_cancelPendingTongueDismissRequests
{
  v3 = objc_opt_class();

  [v3 cancelPreviousPerformRequestsWithTarget:self selector:sel__dismissTongue_ object:0];
}

- (void)_dismissTongueWithStyle:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(SBGrabberTongue *)self _cancelPendingTongueDismissRequests];
  self->_tongueVisible = 0;
  [(SBGrabberTongue *)self _willDismiss];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__SBGrabberTongue__dismissTongueWithStyle_animated___block_invoke;
  v13[3] = &unk_2783A8BC8;
  v13[4] = self;
  v13[5] = a3;
  v7 = MEMORY[0x223D6F7F0](v13);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__SBGrabberTongue__dismissTongueWithStyle_animated___block_invoke_2;
  v12[3] = &unk_2783B3C38;
  v12[4] = self;
  v12[5] = a3;
  v8 = MEMORY[0x223D6F7F0](v12);
  if (v4)
  {
    v9 = MEMORY[0x277D75D18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__SBGrabberTongue__dismissTongueWithStyle_animated___block_invoke_3;
    v10[3] = &unk_2783A9348;
    v11 = v7;
    [v9 animateWithDuration:v10 animations:v8 completion:0.2];
  }

  else
  {
    v7[2](v7);
    v8[2](v8, 1);
  }
}

uint64_t __52__SBGrabberTongue__dismissTongueWithStyle_animated___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  v3 = v1[5];
  if (*(v2 + 8))
  {
    v4 = v1[5];

    return [v4 setAlpha:0.0];
  }

  else
  {
    [v1 _frameForTongueWhenVisible:0];

    return [v3 setFrame:?];
  }
}

uint64_t __52__SBGrabberTongue__dismissTongueWithStyle_animated___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 104) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  *(v2 + 104) = 0;

  if (!*(a1 + 40))
  {
    [*(*(a1 + 32) + 40) setAlpha:0.0];
  }

  v4 = *(a1 + 32);

  return [v4 _didDismiss];
}

- (void)_presentTongueAnimated:(BOOL)a3 autoDismiss:(BOOL)a4
{
  v4 = a4;
  v20[1] = *MEMORY[0x277D85DE8];
  if (!self->_tongueVisible)
  {
    v6 = a3;
    self->_tongueVisible = 1;
    [(SBGrabberTongue *)self _willPresent];
    if (!self->_deferOrientationUpdatesAssertion)
    {
      v7 = [SBApp deviceOrientationUpdateDeferralAssertionWithReason:@"SBOrientationLockForGrabber"];
      deferOrientationUpdatesAssertion = self->_deferOrientationUpdatesAssertion;
      self->_deferOrientationUpdatesAssertion = v7;
    }

    [(UIView *)self->_tongueContainer setAlpha:1.0];
    tongueContainer = self->_tongueContainer;
    v10 = *(MEMORY[0x277CBF2C0] + 16);
    v17 = *MEMORY[0x277CBF2C0];
    v18 = v10;
    v19 = *(MEMORY[0x277CBF2C0] + 32);
    [(UIView *)tongueContainer setTransform:&v17];
    [(SBGrabberTongue *)self _frameForTongueWhenVisible:0];
    [(UIView *)self->_tongueContainer setFrame:?];
    tongueChevron = self->_tongueChevron;
    SBRectWithSize();
    [(SBGrabberTongue *)self _chevronFrameForTongueBounds:?];
    [(UIImageView *)tongueChevron setFrame:?];
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    [(SBGrabberTongue *)self _transformForTongueContainer];
    v12 = self->_tongueContainer;
    v16[0] = v17;
    v16[1] = v18;
    v16[2] = v19;
    [(UIView *)v12 setTransform:v16];
    v13 = 0.2;
    if (!v6)
    {
      v13 = 0.0;
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__SBGrabberTongue__presentTongueAnimated_autoDismiss___block_invoke;
    v15[3] = &unk_2783A8C18;
    v15[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v15 animations:v13];
  }

  [(SBGrabberTongue *)self _cancelPendingTongueDismissRequests];
  if (v4)
  {
    v20[0] = *MEMORY[0x277CBE738];
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [(SBGrabberTongue *)self performSelector:sel__dismissTongue_ withObject:0 afterDelay:v14 inModes:2.0];
  }
}

uint64_t __54__SBGrabberTongue__presentTongueAnimated_autoDismiss___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  [v1 _frameForTongueWhenVisible:1];

  return [v2 setFrame:?];
}

- (CGRect)_frameForTongueWhenVisible:(BOOL)a3
{
  v3 = a3;
  [(UIView *)self->_tongueContainer frame];
  MinX = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  screenEdge = self->_screenEdge;
  [(UIView *)self->_containingView bounds];
  [(SBGrabberTongue *)self _grabberTongueScreenInsets];
  UIRectInset();
  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = v18;
  if (screenEdge <= 3)
  {
    if (screenEdge == 1)
    {
      [(SBGrabberTongue *)self _centerOnScreenEdge];
      SBScreenScale();
      SBFloatFloorForScale();
      MinX = v26;
      if (!v3)
      {
        v9 = -v13;
        goto LABEL_20;
      }

      v35.origin.x = v19;
      v35.origin.y = v20;
      v35.size.width = v21;
      v35.size.height = v22;
      MinY = CGRectGetMinY(v35);
      goto LABEL_19;
    }

    if (screenEdge == 2)
    {
      if (v3)
      {
        MinX = CGRectGetMinX(*&v15);
      }

      else
      {
        MinX = -v11;
      }

LABEL_18:
      [(SBGrabberTongue *)self _centerOnScreenEdge];
      SBScreenScale();
      SBFloatFloorForScale();
LABEL_19:
      v9 = MinY;
      goto LABEL_20;
    }

LABEL_11:
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"SBGrabberTongue.m" lineNumber:547 description:@"Grabbers can only be installed on one edge"];

    goto LABEL_20;
  }

  if (screenEdge != 4)
  {
    if (screenEdge == 8)
    {
      MaxX = CGRectGetMaxX(*&v15);
      v24 = -0.0;
      if (v3)
      {
        v24 = v11;
      }

      MinX = MaxX - v24;
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  [(SBGrabberTongue *)self _centerOnScreenEdge];
  SBScreenScale();
  SBFloatFloorForScale();
  MinX = v28;
  v36.origin.x = v19;
  v36.origin.y = v20;
  v36.size.width = v21;
  v36.size.height = v22;
  MaxY = CGRectGetMaxY(v36);
  v30 = -0.0;
  if (v3)
  {
    v30 = v13;
  }

  v9 = MaxY - v30;
LABEL_20:
  v31 = MinX;
  v32 = v9;
  v33 = v11;
  v34 = v13;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (UIEdgeInsets)_grabberTongueScreenInsets
{
  v3 = [MEMORY[0x277D77780] sb_thisDeviceDisplayShape];
  v4 = v3;
  if (v3)
  {
    [v3 rect];
    MaxY = CGRectGetMaxY(v23);
  }

  else
  {
    MaxY = 0.0;
  }

  if (SBSIsSystemApertureAvailable())
  {
    v6 = [SBApp systemApertureControllerForMainDisplay];
    v7 = v6;
    if (v6)
    {
      [v6 defaultIslandFrameInCoordinateSpace:self->_containingView];
      MaxY = CGRectGetMaxY(v24);
    }
  }

  v9 = *MEMORY[0x277D768C8];
  v8 = *(MEMORY[0x277D768C8] + 8);
  v11 = *(MEMORY[0x277D768C8] + 16);
  v10 = *(MEMORY[0x277D768C8] + 24);
  if (MaxY > 0.0)
  {
    v12 = objc_opt_class();
    v13 = SBSafeCast(v12, self->_containingView);
    if (!v13)
    {
      v13 = [(UIView *)self->_containingView window];
    }

    v14 = [v13 interfaceOrientation];
    if (v14 == 4)
    {
      v15 = MaxY;
    }

    else
    {
      v15 = v10;
    }

    if (v14 == 3)
    {
      v15 = v10;
      v16 = MaxY;
    }

    else
    {
      v16 = v8;
    }

    if (v14 == 2)
    {
      v17 = MaxY;
    }

    else
    {
      v17 = v11;
    }

    if (v14 == 1)
    {
      v17 = v11;
      v18 = MaxY;
    }

    else
    {
      v18 = v9;
    }

    if (v14 <= 2)
    {
      v11 = v17;
    }

    else
    {
      v10 = v15;
    }

    if (v14 <= 2)
    {
      v9 = v18;
    }

    else
    {
      v8 = v16;
    }
  }

  v19 = v9;
  v20 = v8;
  v21 = v11;
  v22 = v10;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (CGRect)_chevronFrameForTongueBounds:(CGRect)a3
{
  SBRectWithSize();
  UIRectCenteredIntegralRectScale();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGAffineTransform)_transformForTongueContainer
{
  screenEdge = self->_screenEdge;
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  switch(screenEdge)
  {
    case 1uLL:
      v5 = 0.0;
      break;
    case 2uLL:
      v5 = -1.57079633;
      break;
    case 8uLL:
      v5 = 1.57079633;
      break;
    default:
      v5 = 3.14159265;
      if (screenEdge != 4)
      {
        v5 = 0.0;
      }

      break;
  }

  CGAffineTransformMakeRotation(&v7, v5);
  return UIIntegralTransform();
}

- (double)_distanceFromEdgeForRecognizer:(id)a3
{
  [a3 locationInView:self->_containingView];
  v5 = v4;
  v7 = v6;
  [(UIView *)self->_containingView bounds];
  v12 = v11;
  screenEdge = self->_screenEdge;
  result = 0.0;
  if (screenEdge > 3)
  {
    if (screenEdge == 4)
    {
      v16 = v12;
      return CGRectGetMaxY(*(&v8 - 1)) - v7;
    }

    else if (screenEdge == 8)
    {
      v15 = v12;
      return CGRectGetMaxX(*(&v8 - 1)) - v5;
    }
  }

  else
  {
    if (screenEdge == 2)
    {
      result = v5;
    }

    if (screenEdge == 1)
    {
      return v7;
    }
  }

  return result;
}

- (double)_edgeOrientedVelocityForRecognizer:(id)a3
{
  [a3 velocityInView:self->_containingView];
  screenEdge = self->_screenEdge;
  v7 = -v5;
  v8 = -result;
  if (screenEdge != 8)
  {
    v8 = 0.0;
  }

  if (screenEdge != 4)
  {
    v7 = v8;
  }

  if (screenEdge != 2)
  {
    result = 0.0;
  }

  if (screenEdge == 1)
  {
    result = v5;
  }

  if (screenEdge > 3)
  {
    return v7;
  }

  return result;
}

- (void)_updateCancelsTouchesWithRecognizerIfNeeded:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_tapGestureRecognizer != v4)
  {
    v8 = v4;
    if (self->_tongueVisible)
    {
      v6 = 1;
    }

    else
    {
      v6 = ![(SBGrabberTongue *)self _shouldShowTongueOnFirstSwipeWithRecognizer:v4];
    }

    [(SBGrabberTongue *)self _ambiguousActivationMarginIfHonored];
    IsZero = BSFloatIsZero();
    [(UIPanGestureRecognizer *)self->_edgePullGestureRecognizer setCancelsTouchesInView:v6 & IsZero];
    [(SBIndirectPanGestureRecognizer *)self->_indirectEdgePullGestureRecognizer setCancelsTouchesInView:v6 & IsZero];
    v5 = v8;
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIPanGestureRecognizer *)v6 view];
  [v7 locationInView:v8];
  v10 = v9;
  v12 = v11;

  v13 = [(UIView *)self->_containingView _sbWindowScene];
  v14 = [v13 pictureInPictureManager];
  v15 = [v14 isPointWithinAnyPictureInPictureContent:{v10, v12}];

  if ((v15 & 1) != 0 || self->_tapGestureRecognizer == v6 && (self->_inPullGesture || self->_inShowTongueGesture || self->_inDismissTongueGesture) || ![(SBGrabberTongue *)self _shouldReceiveTouch:v7])
  {
    LOBYTE(v16) = 0;
  }

  else if (self->_edgePullGestureRecognizer == v6 || self->_tapGestureRecognizer == v6)
  {
    v16 = [v7 _isPointerTouch] ^ 1;
  }

  else
  {
    LOBYTE(v16) = 1;
  }

  return v16;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  v7 = self->_inPullGesture || self->_inShowTongueGesture || self->_inDismissTongueGesture;
  if (self->_tapGestureRecognizer == v5 || self->_edgePullGestureRecognizer == v5)
  {
    if (!v7)
    {
      goto LABEL_8;
    }

LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  if (self->_indirectEdgePullGestureRecognizer == v5 && v7)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [(UITapGestureRecognizer *)v6 name];
    v12 = NSStringFromBOOL();
    v13 = NSStringFromBOOL();
    v14 = NSStringFromBOOL();
    v17 = 138544642;
    v18 = v10;
    v19 = 2050;
    v20 = v6;
    v21 = 2114;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[SBGrabberTongue gestureRecognizerShouldBegin:] gesture <%{public}@:%{public}p> (%{public}@) with State _inPullGesture:%@ _inShowTongueGesture:%@ _inDismissTongueGesture:%@", &v17, 0x3Eu);
  }

  if (self->_inPullGesture || self->_inShowTongueGesture || self->_inDismissTongueGesture)
  {
    [(SBGrabberTongue *)&self->_inPullGesture gestureRecognizerShouldBegin:a2, v6];
  }

  v15 = [(SBGrabberTongue *)self _tongueOrPullEnabledForGestureRecognizer:v6];
  [(SBGrabberTongue *)self _updateCancelsTouchesWithRecognizerIfNeeded:v6];
LABEL_16:

  return v15;
}

- (void)_handlePullGesture:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SBGrabberTongue *)self _ambiguousActivationMarginIfHonored];
  IsZero = BSFloatIsZero();
  if ([v4 state] == 1)
  {
    BSContinuousMachTimeNow();
    self->_gestureStartTime = v6;
  }

  if (self->_inAmbiguousGesture || !self->_inPullGesture && !self->_inDismissTongueGesture && ((self->_inShowTongueGesture | IsZero) & 1) == 0)
  {
    v7 = [v4 state];
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        *&self->_inAmbiguousGesture = 1;
        goto LABEL_50;
      }

      if (v7 != 2)
      {
        goto LABEL_50;
      }

      BSContinuousMachTimeNow();
      v9 = v8 - self->_gestureStartTime;
      if (v9 <= 0.2 && (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_50;
      }

      if (!self->_beganAmbiguousPullGesture)
      {
        [(SBGrabberTongue *)self _pullGestureBegan:v4];
        self->_beganAmbiguousPullGesture = 1;
      }

      goto LABEL_30;
    }

    if (v7 != 3)
    {
      if (v7 != 4)
      {
        goto LABEL_50;
      }

      [(SBGrabberTongue *)self _pullGestureCanceled:v4];
      goto LABEL_49;
    }

    [(SBGrabberTongue *)self _ambiguousActivationMarginIfHonored];
    v18 = fmax(v17, 64.0);
    [(SBGrabberTongue *)self _distanceFromEdgeForRecognizer:v4];
    if (v19 >= v18)
    {
      if (!self->_beganAmbiguousPullGesture)
      {
        [(SBGrabberTongue *)self _pullGestureBegan:v4];
        self->_beganAmbiguousPullGesture = 1;
      }
    }

    else if (!self->_beganAmbiguousPullGesture)
    {
      goto LABEL_49;
    }

    [(SBGrabberTongue *)self _pullGestureEnded:v4];
LABEL_49:
    *&self->_inAmbiguousGesture = 0;
    goto LABEL_50;
  }

  tongueVisible = self->_tongueVisible;
  v12 = [(SBGrabberTongue *)self _shouldShowTongueOnFirstSwipeWithRecognizer:v4];
  v13 = [(SBGrabberTongue *)self _shouldAllowSecondSwipeWithRecognizer:v4];
  v14 = [(SBGrabberTongue *)self _shouldSecondSwipeDismissTongueWithRecognizer:v4];
  if (tongueVisible)
  {
    v15 = v13;
  }

  else
  {
    v15 = !v12;
  }

  if (self->_inShowTongueGesture)
  {
LABEL_20:
    if ([v4 state] == 1)
    {
      [(SBGrabberTongue *)self _presentTongueAnimated:1 autoDismiss:1];
      [(SBGrabberTongue *)self _willPresentInteractively:v4];
      self->_inShowTongueGesture = 1;
    }

    else if ([v4 state] == 2)
    {
      [(SBGrabberTongue *)self _willPresentInteractively:v4];
    }

    else if ([v4 state] == 3 || objc_msgSend(v4, "state") == 4)
    {
      self->_inShowTongueGesture = 0;
      [(SBGrabberTongue *)self _didPresentInteractively:v4];
    }

    goto LABEL_50;
  }

  if (!self->_inPullGesture)
  {
    if (!self->_inDismissTongueGesture)
    {
      inAmbiguousGesture = self->_inAmbiguousGesture;
      if (!inAmbiguousGesture && !tongueVisible && v12)
      {
        goto LABEL_20;
      }

      if (inAmbiguousGesture || !tongueVisible || v13 || !v14)
      {
        if (inAmbiguousGesture || ((v15 ^ 1) & 1) != 0)
        {
          goto LABEL_50;
        }

        goto LABEL_27;
      }
    }

LABEL_38:
    if ([v4 state] == 1)
    {
      [(SBGrabberTongue *)self _dismissTongue:0];
      self->_inDismissTongueGesture = 1;
    }

    else if ([v4 state] == 3 || objc_msgSend(v4, "state") == 4)
    {
      self->_inDismissTongueGesture = 0;
    }

    goto LABEL_50;
  }

  if (self->_inDismissTongueGesture)
  {
    goto LABEL_38;
  }

LABEL_27:
  v16 = [v4 state];
  if (v16 <= 2)
  {
    if (v16 == 1)
    {
      self->_inPullGesture = 1;
      [(SBGrabberTongue *)self _pullGestureBegan:v4];
      goto LABEL_50;
    }

    if (v16 != 2)
    {
      goto LABEL_50;
    }

LABEL_30:
    [(SBGrabberTongue *)self _pullGestureUpdated:v4];
    goto LABEL_50;
  }

  if (v16 == 3)
  {
    [(SBGrabberTongue *)self _pullGestureEnded:v4];
  }

  else
  {
    if (v16 != 4)
    {
      goto LABEL_50;
    }

    [(SBGrabberTongue *)self _pullGestureCanceled:v4];
  }

  self->_inPullGesture = 0;
LABEL_50:
  v20 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = NSStringFromBOOL();
    v22 = NSStringFromBOOL();
    v23 = NSStringFromBOOL();
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [v4 name];
    v28 = 138413570;
    v29 = v21;
    v30 = 2112;
    v31 = v22;
    v32 = 2112;
    v33 = v23;
    v34 = 2114;
    v35 = v25;
    v36 = 2050;
    v37 = v4;
    v38 = 2114;
    v39 = v26;
    _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "[SBGrabberTongue _handlePullGesture:] with state: _inPullGesture:%@ _inShowTongueGesture:%@ _inDismissTongueGesture:%@ from gesture <%{public}@:%{public}p> (%{public}@)", &v28, 0x3Eu);
  }
}

- (void)_handleTapped:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v4 locationInView:self->_tongueBackdropView];
  v6 = v5;
  v8 = v7;

  [(_UIBackdropView *)self->_tongueBackdropView bounds];
  v11.x = v6;
  v11.y = v8;
  if (CGRectContainsPoint(v12, v11) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained grabberTongueTapped:self];
  }
}

- (SBGrabberTongueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithDelegate:(uint64_t)a1 edge:(uint64_t)a2 type:windowScene:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBGrabberTongue.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
}

- (void)installInView:(uint64_t)a1 withColorStyle:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBGrabberTongue.m" lineNumber:123 description:@"Can't install more than once"];
}

- (void)gestureRecognizerShouldBegin:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromBOOL();
  v9 = NSStringFromBOOL();
  v10 = NSStringFromBOOL();
  [v7 handleFailureInMethod:a3 object:a2 file:@"SBGrabberTongue.m" lineNumber:737 description:{@"Unexpected State Transition for Gesture:%@ with State _inPullGesture:%@ _inShowTongueGesture:%@ _inDismissTongueGesture:%@", a4, v8, v9, v10}];
}

@end