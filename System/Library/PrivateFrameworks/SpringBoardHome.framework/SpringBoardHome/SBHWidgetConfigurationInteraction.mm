@interface SBHWidgetConfigurationInteraction
- (CGRect)_sourceContentFrame;
- (CGRect)_targetContentFrame;
- (CGRect)contentBoundingRect;
- (CGRect)sourceContentFrame;
- (CGRect)targetContentFrame;
- (SBHIconViewConfigurationInteractionDelegate)delegate;
- (SBHWidgetConfigurationInteraction)initWithDescriptor:(id)descriptor gridSizeClass:(id)class gridSizeClassDomain:(id)domain intent:(id)intent configuredDataSource:(id)source;
- (SBHWidgetConfigurationInteraction)initWithDescriptor:(id)descriptor gridSizeClass:(id)class intent:(id)intent configuredDataSource:(id)source;
- (UIView)targetView;
- (id)animatorForTransition:(id)transition;
- (void)_endConfigurationImmediately:(BOOL)immediately;
- (void)_handleTapToDismiss:(id)dismiss;
- (void)_handleTapToPresent:(id)present;
- (void)_setUpMatchMoveAnimationForBackgroundView:(id)view;
- (void)beginConfiguration;
- (void)endConfiguration;
- (void)prepareTransition:(id)transition;
- (void)transitionDidProgressToEndState:(id)state;
- (void)transitionDidReturnToBeginningState:(id)state;
- (void)transitionWillProgressToEndState:(id)state;
- (void)transitionWillReturnToBeginningState:(id)state;
- (void)widgetConfigurationViewController:(id)controller didFinishWithIntent:(id)intent;
@end

@implementation SBHWidgetConfigurationInteraction

- (SBHWidgetConfigurationInteraction)initWithDescriptor:(id)descriptor gridSizeClass:(id)class intent:(id)intent configuredDataSource:(id)source
{
  sourceCopy = source;
  intentCopy = intent;
  classCopy = class;
  descriptorCopy = descriptor;
  v14 = +[SBHIconGridSizeClassDomain globalDomain];
  v15 = [(SBHWidgetConfigurationInteraction *)self initWithDescriptor:descriptorCopy gridSizeClass:classCopy gridSizeClassDomain:v14 intent:intentCopy configuredDataSource:sourceCopy];

  return v15;
}

- (SBHWidgetConfigurationInteraction)initWithDescriptor:(id)descriptor gridSizeClass:(id)class gridSizeClassDomain:(id)domain intent:(id)intent configuredDataSource:(id)source
{
  v40 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  classCopy = class;
  domainCopy = domain;
  intentCopy = intent;
  sourceCopy = source;
  v33.receiver = self;
  v33.super_class = SBHWidgetConfigurationInteraction;
  v17 = [(SBHWidgetConfigurationInteraction *)&v33 init];
  if (v17)
  {
    v18 = SBLogIcon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v35 = v17;
      v36 = 2114;
      v37 = descriptorCopy;
      v38 = 2112;
      v39 = intentCopy;
      _os_log_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Initializing configuration interaction for descriptor: %{public}@ -- intent: %@", buf, 0x20u);
    }

    v19 = +[SBHHomeScreenDomain rootSettings];
    widgetSettings = [v19 widgetSettings];
    widgetSettings = v17->_widgetSettings;
    v17->_widgetSettings = widgetSettings;

    objc_storeStrong(&v17->_configuration, intent);
    objc_storeStrong(&v17->_configuredDataSource, source);
    v22 = objc_alloc_init(MEMORY[0x1E69E3100]);
    configurationOptions = v17->_configurationOptions;
    v17->_configurationOptions = v22;

    [(WFWidgetConfigurationOptions *)v17->_configurationOptions setIntent:intentCopy];
    v24 = v17->_configurationOptions;
    displayName = [descriptorCopy displayName];
    [(WFWidgetConfigurationOptions *)v24 setWidgetDisplayName:displayName];

    v26 = v17->_configurationOptions;
    widgetDescription = [descriptorCopy widgetDescription];
    [(WFWidgetConfigurationOptions *)v26 setWidgetDescription:widgetDescription];

    -[WFWidgetConfigurationOptions setWidgetConfigurationType:](v17->_configurationOptions, "setWidgetConfigurationType:", [descriptorCopy sbh_configurationType]);
    -[WFWidgetConfigurationOptions setFamily:](v17->_configurationOptions, "setFamily:", [domainCopy chsWidgetFamilyForIconGridSizeClass:classCopy]);
    v28 = [descriptorCopy copy];
    descriptor = v17->_descriptor;
    v17->_descriptor = v28;

    v30 = objc_alloc_init(SBHViewControllerTransition);
    transition = v17->_transition;
    v17->_transition = v30;

    [(SBHViewControllerTransition *)v17->_transition setDelegate:v17];
  }

  return v17;
}

- (UIView)targetView
{
  configurationViewController = [(SBHWidgetConfigurationInteraction *)self configurationViewController];
  view = [configurationViewController view];

  return view;
}

- (void)beginConfiguration
{
  transition = [(SBHWidgetConfigurationInteraction *)self transition];
  [transition progressToEndStateWithAnimation:1];
}

- (void)endConfiguration
{
  v12 = *MEMORY[0x1E69E9840];
  transition = [(SBHWidgetConfigurationInteraction *)self transition];
  if (([transition isTransitioning] & 1) == 0)
  {
    v5 = SBLogIcon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(a2);
      v8 = 138543618;
      selfCopy = self;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@ calling finishWithCurrentConfiguration", &v8, 0x16u);
    }

    configurationViewController = [(SBHWidgetConfigurationInteraction *)self configurationViewController];
    [configurationViewController finishWithCurrentConfiguration];
  }

  [(SBHWidgetConfigurationInteraction *)self _endConfigurationImmediately:0];
}

- (void)_endConfigurationImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  transition = [(SBHWidgetConfigurationInteraction *)self transition];
  [transition returnToBeginningStateWithAnimation:!immediatelyCopy];
}

- (void)prepareTransition:(id)transition
{
  v75 = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  [transitionCopy setUserInfo:self];
  v6 = objc_alloc(MEMORY[0x1E69E3108]);
  configurationOptions = [(SBHWidgetConfigurationInteraction *)self configurationOptions];
  v8 = [v6 initWithOptions:configurationOptions];

  delegate = [(SBHWidgetConfigurationInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 setOverrideUserInterfaceStyle:{objc_msgSend(delegate, "userInterfaceStyleForConfigurationInteraction:", self)}];
  }

  [v8 setDelegate:self];
  [(SBHWidgetConfigurationInteraction *)self setConfigurationViewController:v8];
  v10 = [delegate containerViewControllerForConfigurationInteraction:self];
  [(SBHWidgetConfigurationInteraction *)self setContainerViewController:v10];
  view = [v10 view];
  if (objc_opt_respondsToSelector())
  {
    v12 = [delegate containerViewForConfigurationInteraction:self];

    view = v12;
  }

  [(SBHWidgetConfigurationInteraction *)self setContainerView:view];
  v13 = [delegate sourceIconViewForConfigurationInteraction:self];
  [(SBHWidgetConfigurationInteraction *)self setSourceView:v13];
  if (v10 && view && v13)
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [delegate referenceIconViewForConfigurationInteraction:self];
      [(SBHWidgetConfigurationInteraction *)self setReferenceView:v14];
      [v14 setHighlighted:0];
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [delegate homeScreenContentViewForConfigurationInteraction:self];
      [(SBHWidgetConfigurationInteraction *)self setHomeScreenContentView:v15];
    }

    [v13 setUserInteractionEnabled:1];
    v16 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapToPresent_];
    [(SBHWidgetConfigurationInteraction *)self setTapToPresentGesture:v16];
    [v13 addGestureRecognizer:v16];
    [view bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = objc_opt_respondsToSelector();
    v26 = v24;
    v27 = v22;
    v28 = v20;
    v29 = v18;
    if (v25)
    {
      [delegate contentBoundingRectForConfigurationInteraction:{self, v18, v20, v22, v24}];
    }

    [(SBHWidgetConfigurationInteraction *)self setContentBoundingRect:v29, v28, v27, v26];
    widgetSettings = [(SBHWidgetConfigurationInteraction *)self widgetSettings];
    v63 = v16;
    v64 = transitionCopy;
    if ([widgetSettings configurationBlursBackground])
    {
      v31 = MEMORY[0x1E69AE158];
      v32 = widgetSettings;
      v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v34 = [v31 materialViewWithRecipeNamed:@"widgetConfigurationBackground" inBundle:v33 options:0 initialWeighting:0 scaleAdjustment:0.0];

      widgetSettings = v32;
      [v34 setFrame:{v18, v20, v22, v24}];
      [v34 setAutoresizingMask:18];
      [v34 setGroupNameBase:@"Widget-Configuration"];
      [view addSubview:v34];
      [(SBHWidgetConfigurationInteraction *)self setBackgroundView:v34];
      [(SBHWidgetConfigurationInteraction *)self _setUpMatchMoveAnimationForBackgroundView:v34];
    }

    v35 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v18, v20, v22, v24}];
    [v35 setAutoresizingMask:18];
    [v35 bs_setHitTestingDisabled:1];
    [widgetSettings configurationDarkeningTintAlpha];
    v61 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:v36];
    [v35 setBackgroundColor:?];
    [v35 setAlpha:0.0];
    v62 = widgetSettings;
    [widgetSettings configurationWidgetTintColorAlpha];
    v38 = v37;
    if (BSFloatGreaterThanFloat())
    {
      descriptor = [(SBHWidgetConfigurationInteraction *)self descriptor];
      v40 = objc_opt_class();
      v41 = descriptor;
      if (v40)
      {
        if (objc_opt_isKindOfClass())
        {
          v42 = v41;
        }

        else
        {
          v42 = 0;
        }
      }

      else
      {
        v42 = 0;
      }

      v44 = v42;

      backgroundColor = [v44 backgroundColor];

      if (backgroundColor)
      {
        v46 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v18, v20, v22, v24}];
        [v46 setAutoresizingMask:18];
        v47 = [backgroundColor colorWithAlphaComponent:v38];
        [v46 setBackgroundColor:v47];

        [v35 addSubview:v46];
      }
    }

    [view addSubview:v35];
    [(SBHWidgetConfigurationInteraction *)self setBackgroundTintView:v35];
    [(SBHWidgetConfigurationInteraction *)self _setUpMatchMoveAnimationForBackgroundView:v35];
    v48 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapToDismiss_];
    v49 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v18, v20, v22, v24}];
    [v49 addGestureRecognizer:v48];
    [(SBHWidgetConfigurationInteraction *)self setTouchBlockingView:v49];
    [view addSubview:v49];
    [v10 bs_addChildViewController:v8 withSuperview:view];
    view2 = [v8 view];
    [view2 setFrame:{v18, v20, v22, v24}];
    [(SBHWidgetConfigurationInteraction *)self _sourceContentFrame];
    [(SBHWidgetConfigurationInteraction *)self setSourceContentFrame:?];
    [(SBHWidgetConfigurationInteraction *)self _targetContentFrame];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    [(SBHWidgetConfigurationInteraction *)self setTargetContentFrame:?];
    configurationView = [v8 configurationView];
    [configurationView setOverridingCardViewFrame:{v52, v54, v56, v58}];

    transitionCopy = v64;
  }

  else
  {
    v43 = SBLogIcon();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v60 = NSStringFromSelector(a2);
      *buf = 138544386;
      selfCopy = self;
      v67 = 2114;
      v68 = v60;
      v69 = 2114;
      v70 = v10;
      v71 = 2114;
      v72 = view;
      v73 = 2114;
      v74 = v13;
      _os_log_error_impl(&dword_1BEB18000, v43, OS_LOG_TYPE_ERROR, "[%{public}@]: %{public}@ failed to create a new presentation for container view controller: %{public}@ -- container view: %{public}@ -- source view: %{public}@", buf, 0x34u);
    }

    [transitionCopy returnToBeginningStateWithAnimation:0];
  }
}

- (id)animatorForTransition:(id)transition
{
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v4 = off_1E8087448;
  if (!IsReduceMotionEnabled)
  {
    v4 = off_1E8087450;
  }

  v5 = objc_alloc_init(*v4);

  return v5;
}

- (void)transitionWillProgressToEndState:(id)state
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = SBLogIcon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: presenting", &v9, 0xCu);
  }

  touchBlockingView = [(SBHWidgetConfigurationInteraction *)self touchBlockingView];
  [touchBlockingView setHidden:0];

  delegate = [(SBHWidgetConfigurationInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate configurationInteractionWillBegin:self];
  }

  v7 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v7))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_CONFIG_PRESENT", " enableTelemetry=YES ", &v9, 2u);
  }

  sbh_defaultPPTNotificationCenter = [MEMORY[0x1E696AD88] sbh_defaultPPTNotificationCenter];
  [sbh_defaultPPTNotificationCenter postNotificationName:@"SBHWidgetConfigurationWillPresentNotification" object:self];
}

- (void)transitionDidProgressToEndState:(id)state
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = SBLogIcon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: presentation finished", &v8, 0xCu);
  }

  v5 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_CONFIG_PRESENT", " enableTelemetry=YES ", &v8, 2u);
  }

  sbh_defaultPPTNotificationCenter = [MEMORY[0x1E696AD88] sbh_defaultPPTNotificationCenter];
  [sbh_defaultPPTNotificationCenter postNotificationName:@"SBHWidgetConfigurationDidPresentNotification" object:self];

  delegate = [(SBHWidgetConfigurationInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate configurationInteractionDidBegin:self];
  }
}

- (void)transitionWillReturnToBeginningState:(id)state
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = SBLogIcon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: dismissing", &v9, 0xCu);
  }

  touchBlockingView = [(SBHWidgetConfigurationInteraction *)self touchBlockingView];
  [touchBlockingView setHidden:1];

  delegate = [(SBHWidgetConfigurationInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate configurationInteractionWillEnd:self];
  }

  v7 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v7))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_CONFIG_DISMISS", " enableTelemetry=YES ", &v9, 2u);
  }

  sbh_defaultPPTNotificationCenter = [MEMORY[0x1E696AD88] sbh_defaultPPTNotificationCenter];
  [sbh_defaultPPTNotificationCenter postNotificationName:@"SBHWidgetConfigurationWillDismissNotification" object:self];
}

- (void)transitionDidReturnToBeginningState:(id)state
{
  v25 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: dismissal finished", &v23, 0xCu);
  }

  v6 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v6))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_CONFIG_DISMISS", " enableTelemetry=YES ", &v23, 2u);
  }

  sbh_defaultPPTNotificationCenter = [MEMORY[0x1E696AD88] sbh_defaultPPTNotificationCenter];
  [sbh_defaultPPTNotificationCenter postNotificationName:@"SBHWidgetConfigurationDidDismissNotification" object:self];

  [stateCopy setUserInfo:0];
  backgroundView = [(SBHWidgetConfigurationInteraction *)self backgroundView];
  [backgroundView removeFromSuperview];

  backgroundTintView = [(SBHWidgetConfigurationInteraction *)self backgroundTintView];
  [backgroundTintView removeFromSuperview];

  [(SBHWidgetConfigurationInteraction *)self setContainerView:0];
  containerViewController = [(SBHWidgetConfigurationInteraction *)self containerViewController];
  configurationViewController = [(SBHWidgetConfigurationInteraction *)self configurationViewController];
  [containerViewController bs_removeChildViewController:configurationViewController];

  [(SBHWidgetConfigurationInteraction *)self setContainerViewController:0];
  [(SBHWidgetConfigurationInteraction *)self setConfigurationViewController:0];
  [(SBHWidgetConfigurationInteraction *)self setHomeScreenContentView:0];
  sourceView = [(SBHWidgetConfigurationInteraction *)self sourceView];
  tapToPresentGesture = [(SBHWidgetConfigurationInteraction *)self tapToPresentGesture];
  [sourceView removeGestureRecognizer:tapToPresentGesture];

  [sourceView invalidate];
  [(SBHWidgetConfigurationInteraction *)self setSourceView:0];
  [(SBHWidgetConfigurationInteraction *)self setTapToPresentGesture:0];
  referenceView = [(SBHWidgetConfigurationInteraction *)self referenceView];
  customIconImageViewController = [referenceView customIconImageViewController];
  view = [customIconImageViewController view];
  [view setHidden:0];

  [referenceView setIconLabelAlpha:1.0];
  [referenceView setAlpha:1.0];
  [referenceView setHidden:0];
  [(SBHWidgetConfigurationInteraction *)self setReferenceView:0];
  [(SBHWidgetConfigurationInteraction *)self setBackgroundView:0];
  [(SBHWidgetConfigurationInteraction *)self setBackgroundTintView:0];
  touchBlockingView = [(SBHWidgetConfigurationInteraction *)self touchBlockingView];
  [touchBlockingView removeFromSuperview];

  [(SBHWidgetConfigurationInteraction *)self setTouchBlockingView:0];
  v18 = *MEMORY[0x1E695F058];
  v19 = *(MEMORY[0x1E695F058] + 8);
  v20 = *(MEMORY[0x1E695F058] + 16);
  v21 = *(MEMORY[0x1E695F058] + 24);
  [(SBHWidgetConfigurationInteraction *)self setSourceContentFrame:*MEMORY[0x1E695F058], v19, v20, v21];
  [(SBHWidgetConfigurationInteraction *)self setTargetContentFrame:v18, v19, v20, v21];
  [(SBHWidgetConfigurationInteraction *)self setContentBoundingRect:v18, v19, v20, v21];
  delegate = [(SBHWidgetConfigurationInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate configurationInteractionDidEnd:self];
  }
}

- (void)widgetConfigurationViewController:(id)controller didFinishWithIntent:(id)intent
{
  v27 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  intentCopy = intent;
  configurationViewController = [(SBHWidgetConfigurationInteraction *)self configurationViewController];
  configuration = [(SBHWidgetConfigurationInteraction *)self configuration];
  v11 = configuration;
  if (configurationViewController == controllerCopy)
  {
    _indexingHash = [configuration _indexingHash];
    _indexingHash2 = [intentCopy _indexingHash];
    delegate = SBLogIcon();
    v17 = os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT);
    if (_indexingHash == _indexingHash2)
    {
      if (v17)
      {
        v13 = NSStringFromSelector(a2);
        v19 = 138544130;
        selfCopy3 = self;
        v21 = 2114;
        v22 = v13;
        v23 = 2112;
        v24 = intentCopy;
        v25 = 2112;
        v26 = v11;
        v14 = "[%{public}@]: %{public}@ is ignoring new intent: %@ -- equivalent to old intent: %@";
        goto LABEL_7;
      }
    }

    else
    {
      if (v17)
      {
        v18 = NSStringFromSelector(a2);
        v19 = 138543874;
        selfCopy3 = self;
        v21 = 2114;
        v22 = v18;
        v23 = 2112;
        v24 = intentCopy;
        _os_log_impl(&dword_1BEB18000, delegate, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@ is committing new intent: %@", &v19, 0x20u);
      }

      [(SBHWidgetConfigurationInteraction *)self setConfiguration:intentCopy];
      delegate = [(SBHWidgetConfigurationInteraction *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate configurationInteractionDidCommit:self];
      }
    }
  }

  else
  {
    delegate = SBLogIcon();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      v19 = 138544130;
      selfCopy3 = self;
      v21 = 2114;
      v22 = v13;
      v23 = 2112;
      v24 = intentCopy;
      v25 = 2114;
      v26 = controllerCopy;
      v14 = "[%{public}@]: %{public}@ is ignoring new intent: %@ -- for unexpected view controller: %{public}@";
LABEL_7:
      _os_log_impl(&dword_1BEB18000, delegate, OS_LOG_TYPE_DEFAULT, v14, &v19, 0x2Au);
    }
  }

  [(SBHWidgetConfigurationInteraction *)self _endConfigurationImmediately:0];
}

- (void)_handleTapToPresent:(id)present
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = SBLogIcon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: presenting due to user tap", &v5, 0xCu);
  }

  [(SBHWidgetConfigurationInteraction *)self beginConfiguration];
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

  [(SBHWidgetConfigurationInteraction *)self _endConfigurationImmediately:0];
}

- (CGRect)_sourceContentFrame
{
  referenceView = [(SBHWidgetConfigurationInteraction *)self referenceView];
  v4 = referenceView;
  if (referenceView)
  {
    sourceView = referenceView;
  }

  else
  {
    sourceView = [(SBHWidgetConfigurationInteraction *)self sourceView];
  }

  v6 = sourceView;

  [v6 iconImageFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  containerView = [(SBHWidgetConfigurationInteraction *)self containerView];
  [v6 convertRect:containerView toView:{v8, v10, v12, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)_targetContentFrame
{
  widgetSettings = [(SBHWidgetConfigurationInteraction *)self widgetSettings];
  containerView = [(SBHWidgetConfigurationInteraction *)self containerView];
  traitCollection = [containerView traitCollection];
  [traitCollection displayScale];
  v57 = v6;

  [(SBHWidgetConfigurationInteraction *)self contentBoundingRect];
  v54 = v7;
  if (([widgetSettings configurationMaximizesCardHeight] & 1) == 0)
  {
    configurationViewController = [(SBHWidgetConfigurationInteraction *)self configurationViewController];
    [configurationViewController preferredContentSize];
    BSRectWithSize();
  }

  [widgetSettings configurationMinimumHorizontalMargin];
  v56 = v9;
  [(SBHWidgetConfigurationInteraction *)self sourceContentFrame];
  UIRectGetCenter();
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
LABEL_5:
      v10 = v54;
      UIRectGetCenter();
      goto LABEL_10;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      goto LABEL_5;
    }
  }

  UIRectCenteredAboutPointScale();
  sourceView = [(SBHWidgetConfigurationInteraction *)self sourceView];
  location = [sourceView location];
  v15 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupTodayView", location);

  if (v15)
  {
    v51 = v57;
    v10 = v54;
    UIRectCenteredXInRectScale();
    goto LABEL_11;
  }

  [widgetSettings configurationFractionBetweenSourceAndContainerX];
  [widgetSettings configurationFractionBetweenSourceAndContainerY];
  v10 = v54;
  UIRectGetCenter();
LABEL_10:
  UIRectCenteredAboutPointScale();
LABEL_11:
  v53 = v16;
  v20 = v17;
  v21 = v18;
  v22 = v19;
  containerView2 = [(SBHWidgetConfigurationInteraction *)self containerView];
  [containerView2 bounds];
  v25 = v24;
  v27 = v26;
  v55 = v28;
  v58 = v29;

  if ([widgetSettings configurationUsesPercentVerticalMargin])
  {
    delegate = [(SBHWidgetConfigurationInteraction *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate verticalMarginPercentageForConfigurationInteraction:self];
    }

    if (BSFloatLessThanFloat())
    {
      [widgetSettings configurationPercentVerticalMargin];
    }

    v31 = v58;
    UICeilToScale();
    v33 = v32;
  }

  else
  {
    [widgetSettings configurationAbsoluteVerticalMargin];
    v33 = v34;
    v31 = v58;
  }

  if (v10 <= v31 - v33 - v33)
  {
    v35 = v10;
  }

  else
  {
    v35 = v31 - v33 - v33;
  }

  if ([widgetSettings configurationEnforcesMaxCardHeight])
  {
    [widgetSettings configurationMaxCardHeight];
    if (v35 > v36)
    {
      v35 = v36;
    }
  }

  if (v22 <= v35)
  {
    v37 = v22;
  }

  else
  {
    v37 = v35;
  }

  v59.origin.x = v53;
  v59.origin.y = v20;
  v59.size.width = v21;
  v59.size.height = v37;
  v52 = v20;
  MaxX = CGRectGetMaxX(v59);
  v60.origin.x = v25;
  v60.origin.y = v27;
  v60.size.width = v55;
  v60.size.height = v58;
  if (MaxX <= CGRectGetWidth(v60) - v56)
  {
    v63.origin.x = v53;
    v63.origin.y = v52;
    v63.size.width = v21;
    v63.size.height = v37;
    CGRectGetMinX(v63);
  }

  else
  {
    v61.origin.x = v25;
    v61.origin.y = v27;
    v61.size.width = v55;
    v61.size.height = v58;
    CGRectGetWidth(v61);
    v62.origin.x = v53;
    v62.origin.y = v52;
    v62.size.width = v21;
    v62.size.height = v37;
    CGRectGetWidth(v62);
  }

  UIRectContainInRect();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v47 = v40;
  v48 = v42;
  v49 = v44;
  v50 = v46;
  result.size.height = v50;
  result.size.width = v49;
  result.origin.y = v48;
  result.origin.x = v47;
  return result;
}

- (void)_setUpMatchMoveAnimationForBackgroundView:(id)view
{
  v4 = MEMORY[0x1E69D3FA0];
  viewCopy = view;
  containerView = [(SBHWidgetConfigurationInteraction *)self containerView];
  window = [containerView window];
  v8 = [v4 matchMoveAnimationForPinningToView:window];

  [viewCopy addAnimation:v8 forKey:@"SBHWidgetConfigurationBackgroundMatchMoveAnimation"];
}

- (SBHIconViewConfigurationInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

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

- (CGRect)contentBoundingRect
{
  x = self->_contentBoundingRect.origin.x;
  y = self->_contentBoundingRect.origin.y;
  width = self->_contentBoundingRect.size.width;
  height = self->_contentBoundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end