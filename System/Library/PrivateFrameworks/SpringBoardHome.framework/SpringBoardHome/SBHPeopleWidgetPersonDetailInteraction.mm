@interface SBHPeopleWidgetPersonDetailInteraction
- (CGRect)_sourceContentFrame;
- (CGRect)_targetContentFrame;
- (CGRect)homeScreenContentFrame;
- (CGRect)sourceContentFrame;
- (CGRect)targetContentFrame;
- (SBHModalInteractionDelegate)modalInteractionDelegate;
- (SBHPeopleWidgetPersonDetailInteraction)initWithInteractionContext:(id)a3;
- (SBIconView)referenceView;
- (SBIconView)sourceView;
- (UIView)containerView;
- (UIView)homeScreenContentView;
- (double)targetContentCornerRadius;
- (id)animatorForTransition:(id)a3;
- (void)_handleTapToDismiss:(id)a3;
- (void)_setUpMatchMoveAnimationForBackgroundView:(id)a3;
- (void)beginInteractionAnimated:(BOOL)a3;
- (void)endInteractionAnimated:(BOOL)a3;
- (void)peopleEntityViewControllerDidRequestDismissal:(id)a3;
- (void)prepareTransition:(id)a3;
- (void)transitionDidProgressToEndState:(id)a3;
- (void)transitionDidReturnToBeginningState:(id)a3;
- (void)transitionWillProgressToEndState:(id)a3;
- (void)transitionWillReturnToBeginningState:(id)a3;
@end

@implementation SBHPeopleWidgetPersonDetailInteraction

- (SBHPeopleWidgetPersonDetailInteraction)initWithInteractionContext:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SBHPeopleWidgetPersonDetailInteraction;
  v5 = [(SBHPeopleWidgetPersonDetailInteraction *)&v15 init];
  if (v5)
  {
    v6 = +[SBHHomeScreenDomain rootSettings];
    v7 = [v6 widgetSettings];
    v8 = [v7 personDetailInteractionSettings];
    settings = v5->_settings;
    v5->_settings = v8;

    v10 = [v4 copy];
    interactionContext = v5->_interactionContext;
    v5->_interactionContext = v10;

    v12 = objc_alloc_init(SBHViewControllerTransition);
    transition = v5->_transition;
    v5->_transition = v12;

    [(SBHViewControllerTransition *)v5->_transition setDelegate:v5];
  }

  return v5;
}

- (UIView)containerView
{
  v2 = [(SBHPeopleWidgetPersonDetailInteraction *)self interactionContext];
  v3 = [v2 containerView];

  return v3;
}

- (SBIconView)sourceView
{
  v2 = [(SBHPeopleWidgetPersonDetailInteraction *)self interactionContext];
  v3 = [v2 sourceIconView];

  return v3;
}

- (SBIconView)referenceView
{
  v2 = [(SBHPeopleWidgetPersonDetailInteraction *)self interactionContext];
  v3 = [v2 referenceIconView];

  return v3;
}

- (double)targetContentCornerRadius
{
  v2 = [(SBHPeopleWidgetPersonDetailInteraction *)self settings];
  if ([v2 usesCardStyle])
  {
    [v2 cardCornerRadius];
  }

  else
  {
    v4 = SBHScreenTypeForCurrentDevice();
    v3 = SBHDisplayCornerRadiusForScreenType(v4);
  }

  v5 = v3;

  return v5;
}

- (UIView)homeScreenContentView
{
  v2 = [(SBHPeopleWidgetPersonDetailInteraction *)self interactionContext];
  v3 = [v2 homeScreenContentView];

  return v3;
}

- (CGRect)homeScreenContentFrame
{
  v2 = [(SBHPeopleWidgetPersonDetailInteraction *)self interactionContext];
  [v2 homeScreenContentFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)beginInteractionAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBHPeopleWidgetPersonDetailInteraction *)self transition];
  [v4 progressToEndStateWithAnimation:v3];
}

- (void)endInteractionAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBHPeopleWidgetPersonDetailInteraction *)self transition];
  [v4 returnToBeginningStateWithAnimation:v3];
}

- (void)prepareTransition:(id)a3
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [v5 setUserInfo:self];
  v6 = [(SBHPeopleWidgetPersonDetailInteraction *)self interactionContext];
  v7 = objc_alloc(MEMORY[0x1E69BDC00]);
  v8 = [v6 personURL];
  v9 = [v7 initWithURL:v8];

  v10 = [objc_alloc(MEMORY[0x1E69BDC08]) initWithMetadata:v9];
  [v10 setDelegate:self];
  [(SBHPeopleWidgetPersonDetailInteraction *)self setPersonViewController:v10];
  v11 = [v6 containerViewController];
  v12 = [v6 containerView];
  v13 = [v6 sourceIconView];
  v14 = v13;
  if (v11 && v12 && v13)
  {
    v59 = v13;
    v56 = v11;
    v15 = [v6 referenceIconView];
    [v15 setHighlighted:0];
    v54 = v15;
    [v15 addObserver:self];
    [v12 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v60 = [(SBHPeopleWidgetPersonDetailInteraction *)self settings];
    v24 = [MEMORY[0x1E69DC938] currentDevice];
    v25 = [v24 userInterfaceIdiom];

    v26 = @"personDetailBackground";
    if ((v25 & 0xFFFFFFFFFFFFFFFBLL) == 1 && ![v60 usesCardStyle])
    {
      v26 = @"personDetailBackground-iPad";
    }

    v27 = MEMORY[0x1E69AE158];
    v28 = MEMORY[0x1E696AAE8];
    v29 = v26;
    v30 = [v28 bundleForClass:objc_opt_class()];
    v31 = [v27 materialViewWithRecipeNamed:v29 inBundle:v30 options:0 initialWeighting:0 scaleAdjustment:0.0];

    [v31 setFrame:{v17, v19, v21, v23}];
    [v31 setAutoresizingMask:18];
    [v31 setGroupNameBase:@"Person-Detail"];
    [v12 addSubview:v31];
    [(SBHPeopleWidgetPersonDetailInteraction *)self setBackgroundView:v31];
    [(SBHPeopleWidgetPersonDetailInteraction *)self _setUpMatchMoveAnimationForBackgroundView:v31];
    v32 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v17, v19, v21, v23}];
    [v32 setAutoresizingMask:18];
    [v32 bs_setHitTestingDisabled:1];
    v57 = v9;
    v58 = v5;
    v55 = v6;
    if ([v60 usesCardStyle])
    {
      [v60 cardStyleDarkeningTintAlpha];
    }

    else
    {
      [v60 fullScreenDarkeningTintAlpha];
    }

    v53 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:v33];
    [v32 setBackgroundColor:v53];
    [v32 setAlpha:0.0];
    [v12 addSubview:v32];
    [(SBHPeopleWidgetPersonDetailInteraction *)self setBackgroundTintView:v32];
    [(SBHPeopleWidgetPersonDetailInteraction *)self _setUpMatchMoveAnimationForBackgroundView:v32];
    v52 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapToDismiss_];
    v35 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v17, v19, v21, v23}];
    [v35 addGestureRecognizer:v52];
    [(SBHPeopleWidgetPersonDetailInteraction *)self setTouchBlockingView:v35];
    [v12 addSubview:v35];
    v36 = [v59 customIconImageViewController];
    [v36 continuousCornerRadius];
    v38 = v37;

    [(SBHPeopleWidgetPersonDetailInteraction *)self setSourceContentCornerRadius:v38];
    [(SBHPeopleWidgetPersonDetailInteraction *)self _sourceContentFrame];
    [(SBHPeopleWidgetPersonDetailInteraction *)self setSourceContentFrame:?];
    [(SBHPeopleWidgetPersonDetailInteraction *)self _targetContentFrame];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    [(SBHPeopleWidgetPersonDetailInteraction *)self setTargetContentFrame:?];
    v47 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v40, v42, v44, v46}];
    [MEMORY[0x1E69AE158] materialViewWithRecipe:3];
    v49 = v48 = v12;
    [v47 bounds];
    [v49 setFrame:?];
    [v49 setAutoresizingMask:18];
    [v47 addSubview:v49];
    [v47 setClipsToBounds:1];
    [(SBHPeopleWidgetPersonDetailInteraction *)self setPlatterView:v47];
    v50 = [v10 view];
    [v50 setFrame:{v40, v42, v44, v46}];
    v11 = v56;
    [v56 bs_addChildViewController:v10 withSuperview:v48];
    [(SBHPeopleWidgetPersonDetailInteraction *)self setTargetView:v50];

    v12 = v48;
    v14 = v59;

    v9 = v57;
    v5 = v58;
    v6 = v55;
  }

  else
  {
    v34 = SBLogIcon();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v51 = NSStringFromSelector(a2);
      *buf = 138544386;
      v62 = self;
      v63 = 2114;
      v64 = v51;
      v65 = 2114;
      v66 = v11;
      v67 = 2114;
      v68 = v12;
      v69 = 2114;
      v70 = v14;
      _os_log_error_impl(&dword_1BEB18000, v34, OS_LOG_TYPE_ERROR, "[%{public}@]: %{public}@ failed to create a new presentation for container view controller: %{public}@ -- container view: %{public}@ -- source view: %{public}@", buf, 0x34u);
    }

    [v5 returnToBeginningStateWithAnimation:0];
  }
}

- (id)animatorForTransition:(id)a3
{
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v4 = off_1E8087228;
  if (!IsReduceMotionEnabled)
  {
    v4 = off_1E8087240;
  }

  v5 = objc_alloc_init(*v4);

  return v5;
}

- (void)transitionWillProgressToEndState:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = SBLogIcon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: presenting", &v7, 0xCu);
  }

  v5 = [(SBHPeopleWidgetPersonDetailInteraction *)self touchBlockingView];
  [v5 setHidden:0];

  v6 = [(SBHPeopleWidgetPersonDetailInteraction *)self modalInteractionDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 modalInteractionWillBegin:self];
  }
}

- (void)transitionDidProgressToEndState:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = SBLogIcon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: presentation finished", &v6, 0xCu);
  }

  v5 = [(SBHPeopleWidgetPersonDetailInteraction *)self modalInteractionDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 modalInteractionDidBegin:self];
  }
}

- (void)transitionWillReturnToBeginningState:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = SBLogIcon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: dismissing", &v7, 0xCu);
  }

  v5 = [(SBHPeopleWidgetPersonDetailInteraction *)self touchBlockingView];
  [v5 setHidden:1];

  v6 = [(SBHPeopleWidgetPersonDetailInteraction *)self modalInteractionDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 modalInteractionWillEnd:self];
  }
}

- (void)transitionDidReturnToBeginningState:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543362;
    v21 = self;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: dismissal finished", &v20, 0xCu);
  }

  [v4 setUserInfo:0];
  v6 = [(SBHPeopleWidgetPersonDetailInteraction *)self backgroundView];
  [v6 removeFromSuperview];

  v7 = [(SBHPeopleWidgetPersonDetailInteraction *)self backgroundTintView];
  [v7 removeFromSuperview];

  v8 = [(SBHPeopleWidgetPersonDetailInteraction *)self interactionContext];
  v9 = [v8 containerViewController];
  v10 = [(SBHPeopleWidgetPersonDetailInteraction *)self personViewController];
  [v9 bs_removeChildViewController:v10];

  [(SBHPeopleWidgetPersonDetailInteraction *)self setPersonViewController:0];
  v11 = [(SBHPeopleWidgetPersonDetailInteraction *)self interactionContext];
  v12 = [v11 sourceIconView];

  [v12 invalidate];
  v13 = [(SBHPeopleWidgetPersonDetailInteraction *)self referenceView];
  [v13 setIconLabelAlpha:1.0];
  [v13 setIconImageAlpha:1.0];
  [v13 setAlpha:1.0];
  [v13 setHidden:0];
  [v13 removeObserver:self];
  [(SBHPeopleWidgetPersonDetailInteraction *)self setBackgroundView:0];
  [(SBHPeopleWidgetPersonDetailInteraction *)self setBackgroundTintView:0];
  v14 = [(SBHPeopleWidgetPersonDetailInteraction *)self touchBlockingView];
  [v14 removeFromSuperview];

  [(SBHPeopleWidgetPersonDetailInteraction *)self setTouchBlockingView:0];
  v15 = *MEMORY[0x1E695F058];
  v16 = *(MEMORY[0x1E695F058] + 8);
  v17 = *(MEMORY[0x1E695F058] + 16);
  v18 = *(MEMORY[0x1E695F058] + 24);
  [(SBHPeopleWidgetPersonDetailInteraction *)self setSourceContentFrame:*MEMORY[0x1E695F058], v16, v17, v18];
  [(SBHPeopleWidgetPersonDetailInteraction *)self setTargetContentFrame:v15, v16, v17, v18];
  v19 = [(SBHPeopleWidgetPersonDetailInteraction *)self modalInteractionDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v19 modalInteractionDidEnd:self];
  }
}

- (void)peopleEntityViewControllerDidRequestDismissal:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHPeopleWidgetPersonDetailInteraction *)self personViewController];

  if (v5 == v4)
  {
    v6 = SBLogIcon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = self;
      _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]: dismissing due to view controller request", &v7, 0xCu);
    }

    [(SBHPeopleWidgetPersonDetailInteraction *)self endInteractionAnimated:1];
  }
}

- (void)_handleTapToDismiss:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = SBLogIcon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: dismissing due to user tap", &v5, 0xCu);
  }

  [(SBHPeopleWidgetPersonDetailInteraction *)self endInteractionAnimated:1];
}

- (CGRect)_sourceContentFrame
{
  v3 = [(SBHPeopleWidgetPersonDetailInteraction *)self referenceView];
  [v3 iconImageFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SBHPeopleWidgetPersonDetailInteraction *)self containerView];
  [v3 convertRect:v12 toView:{v5, v7, v9, v11}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGRect)_targetContentFrame
{
  v3 = [(SBHPeopleWidgetPersonDetailInteraction *)self settings];
  v4 = [(SBHPeopleWidgetPersonDetailInteraction *)self containerView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([v3 usesCardStyle])
  {
    v13 = [v4 traitCollection];
    [v13 displayScale];

    [(SBHPeopleWidgetPersonDetailInteraction *)self sourceContentFrame];
    UIRectGetCenter();
    v14 = [(SBHPeopleWidgetPersonDetailInteraction *)self containerView];
    v15 = [v14 window];
    v16 = [v15 interfaceOrientation];

    [v3 cardWidth];
    if ((v16 - 1) > 1)
    {
      [v3 cardHeightLandscape];
    }

    else
    {
      [v3 cardHeightPortrait];
    }

    UIRectCenteredAboutPointScale();
    [v3 fractionBetweenSourceAndContainerX];
    [v3 fractionBetweenSourceAndContainerY];
    UIRectGetCenter();
    UIRectCenteredAboutPointScale();
    [v3 percentMargin];
    UICeilToScale();
    UICeilToScale();
    UIRectContainInRect();
    v6 = v17;
    v8 = v18;
    v10 = v19;
    v12 = v20;
  }

  v21 = v6;
  v22 = v8;
  v23 = v10;
  v24 = v12;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)_setUpMatchMoveAnimationForBackgroundView:(id)a3
{
  v4 = MEMORY[0x1E69D3FA0];
  v5 = a3;
  v6 = [(SBHPeopleWidgetPersonDetailInteraction *)self containerView];
  v7 = [v6 window];
  v8 = [v4 matchMoveAnimationForPinningToView:v7];

  [v5 addAnimation:v8 forKey:@"SBHPersonDetailInteractionBackgroundMatchMoveAnimation"];
}

- (SBHModalInteractionDelegate)modalInteractionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->modalInteractionDelegate);

  return WeakRetained;
}

- (CGRect)sourceContentFrame
{
  x = self->_sourceContentFrame.origin.x;
  y = self->_sourceContentFrame.origin.y;
  width = self->_sourceContentFrame.size.width;
  height = self->_sourceContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)targetContentFrame
{
  x = self->_targetContentFrame.origin.x;
  y = self->_targetContentFrame.origin.y;
  width = self->_targetContentFrame.size.width;
  height = self->_targetContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end