@interface SBHPeopleWidgetPersonDetailInteraction
- (CGRect)_sourceContentFrame;
- (CGRect)_targetContentFrame;
- (CGRect)homeScreenContentFrame;
- (CGRect)sourceContentFrame;
- (CGRect)targetContentFrame;
- (SBHModalInteractionDelegate)modalInteractionDelegate;
- (SBHPeopleWidgetPersonDetailInteraction)initWithInteractionContext:(id)context;
- (SBIconView)referenceView;
- (SBIconView)sourceView;
- (UIView)containerView;
- (UIView)homeScreenContentView;
- (double)targetContentCornerRadius;
- (id)animatorForTransition:(id)transition;
- (void)_handleTapToDismiss:(id)dismiss;
- (void)_setUpMatchMoveAnimationForBackgroundView:(id)view;
- (void)beginInteractionAnimated:(BOOL)animated;
- (void)endInteractionAnimated:(BOOL)animated;
- (void)peopleEntityViewControllerDidRequestDismissal:(id)dismissal;
- (void)prepareTransition:(id)transition;
- (void)transitionDidProgressToEndState:(id)state;
- (void)transitionDidReturnToBeginningState:(id)state;
- (void)transitionWillProgressToEndState:(id)state;
- (void)transitionWillReturnToBeginningState:(id)state;
@end

@implementation SBHPeopleWidgetPersonDetailInteraction

- (SBHPeopleWidgetPersonDetailInteraction)initWithInteractionContext:(id)context
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = SBHPeopleWidgetPersonDetailInteraction;
  v5 = [(SBHPeopleWidgetPersonDetailInteraction *)&v15 init];
  if (v5)
  {
    v6 = +[SBHHomeScreenDomain rootSettings];
    widgetSettings = [v6 widgetSettings];
    personDetailInteractionSettings = [widgetSettings personDetailInteractionSettings];
    settings = v5->_settings;
    v5->_settings = personDetailInteractionSettings;

    v10 = [contextCopy copy];
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
  interactionContext = [(SBHPeopleWidgetPersonDetailInteraction *)self interactionContext];
  containerView = [interactionContext containerView];

  return containerView;
}

- (SBIconView)sourceView
{
  interactionContext = [(SBHPeopleWidgetPersonDetailInteraction *)self interactionContext];
  sourceIconView = [interactionContext sourceIconView];

  return sourceIconView;
}

- (SBIconView)referenceView
{
  interactionContext = [(SBHPeopleWidgetPersonDetailInteraction *)self interactionContext];
  referenceIconView = [interactionContext referenceIconView];

  return referenceIconView;
}

- (double)targetContentCornerRadius
{
  settings = [(SBHPeopleWidgetPersonDetailInteraction *)self settings];
  if ([settings usesCardStyle])
  {
    [settings cardCornerRadius];
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
  interactionContext = [(SBHPeopleWidgetPersonDetailInteraction *)self interactionContext];
  homeScreenContentView = [interactionContext homeScreenContentView];

  return homeScreenContentView;
}

- (CGRect)homeScreenContentFrame
{
  interactionContext = [(SBHPeopleWidgetPersonDetailInteraction *)self interactionContext];
  [interactionContext homeScreenContentFrame];
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

- (void)beginInteractionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  transition = [(SBHPeopleWidgetPersonDetailInteraction *)self transition];
  [transition progressToEndStateWithAnimation:animatedCopy];
}

- (void)endInteractionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  transition = [(SBHPeopleWidgetPersonDetailInteraction *)self transition];
  [transition returnToBeginningStateWithAnimation:animatedCopy];
}

- (void)prepareTransition:(id)transition
{
  v71 = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  [transitionCopy setUserInfo:self];
  interactionContext = [(SBHPeopleWidgetPersonDetailInteraction *)self interactionContext];
  v7 = objc_alloc(MEMORY[0x1E69BDC00]);
  personURL = [interactionContext personURL];
  v9 = [v7 initWithURL:personURL];

  v10 = [objc_alloc(MEMORY[0x1E69BDC08]) initWithMetadata:v9];
  [v10 setDelegate:self];
  [(SBHPeopleWidgetPersonDetailInteraction *)self setPersonViewController:v10];
  containerViewController = [interactionContext containerViewController];
  containerView = [interactionContext containerView];
  sourceIconView = [interactionContext sourceIconView];
  v14 = sourceIconView;
  if (containerViewController && containerView && sourceIconView)
  {
    v59 = sourceIconView;
    v56 = containerViewController;
    referenceIconView = [interactionContext referenceIconView];
    [referenceIconView setHighlighted:0];
    v54 = referenceIconView;
    [referenceIconView addObserver:self];
    [containerView bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    settings = [(SBHPeopleWidgetPersonDetailInteraction *)self settings];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v26 = @"personDetailBackground";
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && ![settings usesCardStyle])
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
    [containerView addSubview:v31];
    [(SBHPeopleWidgetPersonDetailInteraction *)self setBackgroundView:v31];
    [(SBHPeopleWidgetPersonDetailInteraction *)self _setUpMatchMoveAnimationForBackgroundView:v31];
    v32 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v17, v19, v21, v23}];
    [v32 setAutoresizingMask:18];
    [v32 bs_setHitTestingDisabled:1];
    v57 = v9;
    v58 = transitionCopy;
    v55 = interactionContext;
    if ([settings usesCardStyle])
    {
      [settings cardStyleDarkeningTintAlpha];
    }

    else
    {
      [settings fullScreenDarkeningTintAlpha];
    }

    v53 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:v33];
    [v32 setBackgroundColor:v53];
    [v32 setAlpha:0.0];
    [containerView addSubview:v32];
    [(SBHPeopleWidgetPersonDetailInteraction *)self setBackgroundTintView:v32];
    [(SBHPeopleWidgetPersonDetailInteraction *)self _setUpMatchMoveAnimationForBackgroundView:v32];
    v52 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapToDismiss_];
    v35 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v17, v19, v21, v23}];
    [v35 addGestureRecognizer:v52];
    [(SBHPeopleWidgetPersonDetailInteraction *)self setTouchBlockingView:v35];
    [containerView addSubview:v35];
    customIconImageViewController = [v59 customIconImageViewController];
    [customIconImageViewController continuousCornerRadius];
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
    v49 = v48 = containerView;
    [v47 bounds];
    [v49 setFrame:?];
    [v49 setAutoresizingMask:18];
    [v47 addSubview:v49];
    [v47 setClipsToBounds:1];
    [(SBHPeopleWidgetPersonDetailInteraction *)self setPlatterView:v47];
    view = [v10 view];
    [view setFrame:{v40, v42, v44, v46}];
    containerViewController = v56;
    [v56 bs_addChildViewController:v10 withSuperview:v48];
    [(SBHPeopleWidgetPersonDetailInteraction *)self setTargetView:view];

    containerView = v48;
    v14 = v59;

    v9 = v57;
    transitionCopy = v58;
    interactionContext = v55;
  }

  else
  {
    v34 = SBLogIcon();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v51 = NSStringFromSelector(a2);
      *buf = 138544386;
      selfCopy = self;
      v63 = 2114;
      v64 = v51;
      v65 = 2114;
      v66 = containerViewController;
      v67 = 2114;
      v68 = containerView;
      v69 = 2114;
      v70 = v14;
      _os_log_error_impl(&dword_1BEB18000, v34, OS_LOG_TYPE_ERROR, "[%{public}@]: %{public}@ failed to create a new presentation for container view controller: %{public}@ -- container view: %{public}@ -- source view: %{public}@", buf, 0x34u);
    }

    [transitionCopy returnToBeginningStateWithAnimation:0];
  }
}

- (id)animatorForTransition:(id)transition
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

- (void)transitionWillProgressToEndState:(id)state
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = SBLogIcon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: presenting", &v7, 0xCu);
  }

  touchBlockingView = [(SBHPeopleWidgetPersonDetailInteraction *)self touchBlockingView];
  [touchBlockingView setHidden:0];

  modalInteractionDelegate = [(SBHPeopleWidgetPersonDetailInteraction *)self modalInteractionDelegate];
  if (objc_opt_respondsToSelector())
  {
    [modalInteractionDelegate modalInteractionWillBegin:self];
  }
}

- (void)transitionDidProgressToEndState:(id)state
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = SBLogIcon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: presentation finished", &v6, 0xCu);
  }

  modalInteractionDelegate = [(SBHPeopleWidgetPersonDetailInteraction *)self modalInteractionDelegate];
  if (objc_opt_respondsToSelector())
  {
    [modalInteractionDelegate modalInteractionDidBegin:self];
  }
}

- (void)transitionWillReturnToBeginningState:(id)state
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = SBLogIcon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: dismissing", &v7, 0xCu);
  }

  touchBlockingView = [(SBHPeopleWidgetPersonDetailInteraction *)self touchBlockingView];
  [touchBlockingView setHidden:1];

  modalInteractionDelegate = [(SBHPeopleWidgetPersonDetailInteraction *)self modalInteractionDelegate];
  if (objc_opt_respondsToSelector())
  {
    [modalInteractionDelegate modalInteractionWillEnd:self];
  }
}

- (void)transitionDidReturnToBeginningState:(id)state
{
  v22 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: dismissal finished", &v20, 0xCu);
  }

  [stateCopy setUserInfo:0];
  backgroundView = [(SBHPeopleWidgetPersonDetailInteraction *)self backgroundView];
  [backgroundView removeFromSuperview];

  backgroundTintView = [(SBHPeopleWidgetPersonDetailInteraction *)self backgroundTintView];
  [backgroundTintView removeFromSuperview];

  interactionContext = [(SBHPeopleWidgetPersonDetailInteraction *)self interactionContext];
  containerViewController = [interactionContext containerViewController];
  personViewController = [(SBHPeopleWidgetPersonDetailInteraction *)self personViewController];
  [containerViewController bs_removeChildViewController:personViewController];

  [(SBHPeopleWidgetPersonDetailInteraction *)self setPersonViewController:0];
  interactionContext2 = [(SBHPeopleWidgetPersonDetailInteraction *)self interactionContext];
  sourceIconView = [interactionContext2 sourceIconView];

  [sourceIconView invalidate];
  referenceView = [(SBHPeopleWidgetPersonDetailInteraction *)self referenceView];
  [referenceView setIconLabelAlpha:1.0];
  [referenceView setIconImageAlpha:1.0];
  [referenceView setAlpha:1.0];
  [referenceView setHidden:0];
  [referenceView removeObserver:self];
  [(SBHPeopleWidgetPersonDetailInteraction *)self setBackgroundView:0];
  [(SBHPeopleWidgetPersonDetailInteraction *)self setBackgroundTintView:0];
  touchBlockingView = [(SBHPeopleWidgetPersonDetailInteraction *)self touchBlockingView];
  [touchBlockingView removeFromSuperview];

  [(SBHPeopleWidgetPersonDetailInteraction *)self setTouchBlockingView:0];
  v15 = *MEMORY[0x1E695F058];
  v16 = *(MEMORY[0x1E695F058] + 8);
  v17 = *(MEMORY[0x1E695F058] + 16);
  v18 = *(MEMORY[0x1E695F058] + 24);
  [(SBHPeopleWidgetPersonDetailInteraction *)self setSourceContentFrame:*MEMORY[0x1E695F058], v16, v17, v18];
  [(SBHPeopleWidgetPersonDetailInteraction *)self setTargetContentFrame:v15, v16, v17, v18];
  modalInteractionDelegate = [(SBHPeopleWidgetPersonDetailInteraction *)self modalInteractionDelegate];
  if (objc_opt_respondsToSelector())
  {
    [modalInteractionDelegate modalInteractionDidEnd:self];
  }
}

- (void)peopleEntityViewControllerDidRequestDismissal:(id)dismissal
{
  v9 = *MEMORY[0x1E69E9840];
  dismissalCopy = dismissal;
  personViewController = [(SBHPeopleWidgetPersonDetailInteraction *)self personViewController];

  if (personViewController == dismissalCopy)
  {
    v6 = SBLogIcon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]: dismissing due to view controller request", &v7, 0xCu);
    }

    [(SBHPeopleWidgetPersonDetailInteraction *)self endInteractionAnimated:1];
  }
}

- (void)_handleTapToDismiss:(id)dismiss
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = SBLogIcon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: dismissing due to user tap", &v5, 0xCu);
  }

  [(SBHPeopleWidgetPersonDetailInteraction *)self endInteractionAnimated:1];
}

- (CGRect)_sourceContentFrame
{
  referenceView = [(SBHPeopleWidgetPersonDetailInteraction *)self referenceView];
  [referenceView iconImageFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  containerView = [(SBHPeopleWidgetPersonDetailInteraction *)self containerView];
  [referenceView convertRect:containerView toView:{v5, v7, v9, v11}];
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
  settings = [(SBHPeopleWidgetPersonDetailInteraction *)self settings];
  containerView = [(SBHPeopleWidgetPersonDetailInteraction *)self containerView];
  [containerView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([settings usesCardStyle])
  {
    traitCollection = [containerView traitCollection];
    [traitCollection displayScale];

    [(SBHPeopleWidgetPersonDetailInteraction *)self sourceContentFrame];
    UIRectGetCenter();
    containerView2 = [(SBHPeopleWidgetPersonDetailInteraction *)self containerView];
    window = [containerView2 window];
    interfaceOrientation = [window interfaceOrientation];

    [settings cardWidth];
    if ((interfaceOrientation - 1) > 1)
    {
      [settings cardHeightLandscape];
    }

    else
    {
      [settings cardHeightPortrait];
    }

    UIRectCenteredAboutPointScale();
    [settings fractionBetweenSourceAndContainerX];
    [settings fractionBetweenSourceAndContainerY];
    UIRectGetCenter();
    UIRectCenteredAboutPointScale();
    [settings percentMargin];
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

- (void)_setUpMatchMoveAnimationForBackgroundView:(id)view
{
  v4 = MEMORY[0x1E69D3FA0];
  viewCopy = view;
  containerView = [(SBHPeopleWidgetPersonDetailInteraction *)self containerView];
  window = [containerView window];
  v8 = [v4 matchMoveAnimationForPinningToView:window];

  [viewCopy addAnimation:v8 forKey:@"SBHPersonDetailInteractionBackgroundMatchMoveAnimation"];
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