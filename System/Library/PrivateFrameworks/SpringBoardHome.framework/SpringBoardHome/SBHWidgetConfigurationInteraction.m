@interface SBHWidgetConfigurationInteraction
- (CGRect)_sourceContentFrame;
- (CGRect)_targetContentFrame;
- (CGRect)contentBoundingRect;
- (CGRect)sourceContentFrame;
- (CGRect)targetContentFrame;
- (SBHIconViewConfigurationInteractionDelegate)delegate;
- (SBHWidgetConfigurationInteraction)initWithDescriptor:(id)a3 gridSizeClass:(id)a4 gridSizeClassDomain:(id)a5 intent:(id)a6 configuredDataSource:(id)a7;
- (SBHWidgetConfigurationInteraction)initWithDescriptor:(id)a3 gridSizeClass:(id)a4 intent:(id)a5 configuredDataSource:(id)a6;
- (UIView)targetView;
- (id)animatorForTransition:(id)a3;
- (void)_endConfigurationImmediately:(BOOL)a3;
- (void)_handleTapToDismiss:(id)a3;
- (void)_handleTapToPresent:(id)a3;
- (void)_setUpMatchMoveAnimationForBackgroundView:(id)a3;
- (void)beginConfiguration;
- (void)endConfiguration;
- (void)prepareTransition:(id)a3;
- (void)transitionDidProgressToEndState:(id)a3;
- (void)transitionDidReturnToBeginningState:(id)a3;
- (void)transitionWillProgressToEndState:(id)a3;
- (void)transitionWillReturnToBeginningState:(id)a3;
- (void)widgetConfigurationViewController:(id)a3 didFinishWithIntent:(id)a4;
@end

@implementation SBHWidgetConfigurationInteraction

- (SBHWidgetConfigurationInteraction)initWithDescriptor:(id)a3 gridSizeClass:(id)a4 intent:(id)a5 configuredDataSource:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = +[SBHIconGridSizeClassDomain globalDomain];
  v15 = [(SBHWidgetConfigurationInteraction *)self initWithDescriptor:v13 gridSizeClass:v12 gridSizeClassDomain:v14 intent:v11 configuredDataSource:v10];

  return v15;
}

- (SBHWidgetConfigurationInteraction)initWithDescriptor:(id)a3 gridSizeClass:(id)a4 gridSizeClassDomain:(id)a5 intent:(id)a6 configuredDataSource:(id)a7
{
  v40 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
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
      v37 = v12;
      v38 = 2112;
      v39 = v15;
      _os_log_impl(&dword_1BEB18000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Initializing configuration interaction for descriptor: %{public}@ -- intent: %@", buf, 0x20u);
    }

    v19 = +[SBHHomeScreenDomain rootSettings];
    v20 = [v19 widgetSettings];
    widgetSettings = v17->_widgetSettings;
    v17->_widgetSettings = v20;

    objc_storeStrong(&v17->_configuration, a6);
    objc_storeStrong(&v17->_configuredDataSource, a7);
    v22 = objc_alloc_init(MEMORY[0x1E69E3100]);
    configurationOptions = v17->_configurationOptions;
    v17->_configurationOptions = v22;

    [(WFWidgetConfigurationOptions *)v17->_configurationOptions setIntent:v15];
    v24 = v17->_configurationOptions;
    v25 = [v12 displayName];
    [(WFWidgetConfigurationOptions *)v24 setWidgetDisplayName:v25];

    v26 = v17->_configurationOptions;
    v27 = [v12 widgetDescription];
    [(WFWidgetConfigurationOptions *)v26 setWidgetDescription:v27];

    -[WFWidgetConfigurationOptions setWidgetConfigurationType:](v17->_configurationOptions, "setWidgetConfigurationType:", [v12 sbh_configurationType]);
    -[WFWidgetConfigurationOptions setFamily:](v17->_configurationOptions, "setFamily:", [v14 chsWidgetFamilyForIconGridSizeClass:v13]);
    v28 = [v12 copy];
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
  v2 = [(SBHWidgetConfigurationInteraction *)self configurationViewController];
  v3 = [v2 view];

  return v3;
}

- (void)beginConfiguration
{
  v2 = [(SBHWidgetConfigurationInteraction *)self transition];
  [v2 progressToEndStateWithAnimation:1];
}

- (void)endConfiguration
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [(SBHWidgetConfigurationInteraction *)self transition];
  if (([v4 isTransitioning] & 1) == 0)
  {
    v5 = SBLogIcon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(a2);
      v8 = 138543618;
      v9 = self;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@ calling finishWithCurrentConfiguration", &v8, 0x16u);
    }

    v7 = [(SBHWidgetConfigurationInteraction *)self configurationViewController];
    [v7 finishWithCurrentConfiguration];
  }

  [(SBHWidgetConfigurationInteraction *)self _endConfigurationImmediately:0];
}

- (void)_endConfigurationImmediately:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBHWidgetConfigurationInteraction *)self transition];
  [v4 returnToBeginningStateWithAnimation:!v3];
}

- (void)prepareTransition:(id)a3
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [v5 setUserInfo:self];
  v6 = objc_alloc(MEMORY[0x1E69E3108]);
  v7 = [(SBHWidgetConfigurationInteraction *)self configurationOptions];
  v8 = [v6 initWithOptions:v7];

  v9 = [(SBHWidgetConfigurationInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 setOverrideUserInterfaceStyle:{objc_msgSend(v9, "userInterfaceStyleForConfigurationInteraction:", self)}];
  }

  [v8 setDelegate:self];
  [(SBHWidgetConfigurationInteraction *)self setConfigurationViewController:v8];
  v10 = [v9 containerViewControllerForConfigurationInteraction:self];
  [(SBHWidgetConfigurationInteraction *)self setContainerViewController:v10];
  v11 = [v10 view];
  if (objc_opt_respondsToSelector())
  {
    v12 = [v9 containerViewForConfigurationInteraction:self];

    v11 = v12;
  }

  [(SBHWidgetConfigurationInteraction *)self setContainerView:v11];
  v13 = [v9 sourceIconViewForConfigurationInteraction:self];
  [(SBHWidgetConfigurationInteraction *)self setSourceView:v13];
  if (v10 && v11 && v13)
  {
    if (objc_opt_respondsToSelector())
    {
      v14 = [v9 referenceIconViewForConfigurationInteraction:self];
      [(SBHWidgetConfigurationInteraction *)self setReferenceView:v14];
      [v14 setHighlighted:0];
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [v9 homeScreenContentViewForConfigurationInteraction:self];
      [(SBHWidgetConfigurationInteraction *)self setHomeScreenContentView:v15];
    }

    [v13 setUserInteractionEnabled:1];
    v16 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapToPresent_];
    [(SBHWidgetConfigurationInteraction *)self setTapToPresentGesture:v16];
    [v13 addGestureRecognizer:v16];
    [v11 bounds];
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
      [v9 contentBoundingRectForConfigurationInteraction:{self, v18, v20, v22, v24}];
    }

    [(SBHWidgetConfigurationInteraction *)self setContentBoundingRect:v29, v28, v27, v26];
    v30 = [(SBHWidgetConfigurationInteraction *)self widgetSettings];
    v63 = v16;
    v64 = v5;
    if ([v30 configurationBlursBackground])
    {
      v31 = MEMORY[0x1E69AE158];
      v32 = v30;
      v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v34 = [v31 materialViewWithRecipeNamed:@"widgetConfigurationBackground" inBundle:v33 options:0 initialWeighting:0 scaleAdjustment:0.0];

      v30 = v32;
      [v34 setFrame:{v18, v20, v22, v24}];
      [v34 setAutoresizingMask:18];
      [v34 setGroupNameBase:@"Widget-Configuration"];
      [v11 addSubview:v34];
      [(SBHWidgetConfigurationInteraction *)self setBackgroundView:v34];
      [(SBHWidgetConfigurationInteraction *)self _setUpMatchMoveAnimationForBackgroundView:v34];
    }

    v35 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v18, v20, v22, v24}];
    [v35 setAutoresizingMask:18];
    [v35 bs_setHitTestingDisabled:1];
    [v30 configurationDarkeningTintAlpha];
    v61 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:v36];
    [v35 setBackgroundColor:?];
    [v35 setAlpha:0.0];
    v62 = v30;
    [v30 configurationWidgetTintColorAlpha];
    v38 = v37;
    if (BSFloatGreaterThanFloat())
    {
      v39 = [(SBHWidgetConfigurationInteraction *)self descriptor];
      v40 = objc_opt_class();
      v41 = v39;
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

      v45 = [v44 backgroundColor];

      if (v45)
      {
        v46 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v18, v20, v22, v24}];
        [v46 setAutoresizingMask:18];
        v47 = [v45 colorWithAlphaComponent:v38];
        [v46 setBackgroundColor:v47];

        [v35 addSubview:v46];
      }
    }

    [v11 addSubview:v35];
    [(SBHWidgetConfigurationInteraction *)self setBackgroundTintView:v35];
    [(SBHWidgetConfigurationInteraction *)self _setUpMatchMoveAnimationForBackgroundView:v35];
    v48 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTapToDismiss_];
    v49 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v18, v20, v22, v24}];
    [v49 addGestureRecognizer:v48];
    [(SBHWidgetConfigurationInteraction *)self setTouchBlockingView:v49];
    [v11 addSubview:v49];
    [v10 bs_addChildViewController:v8 withSuperview:v11];
    v50 = [v8 view];
    [v50 setFrame:{v18, v20, v22, v24}];
    [(SBHWidgetConfigurationInteraction *)self _sourceContentFrame];
    [(SBHWidgetConfigurationInteraction *)self setSourceContentFrame:?];
    [(SBHWidgetConfigurationInteraction *)self _targetContentFrame];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    [(SBHWidgetConfigurationInteraction *)self setTargetContentFrame:?];
    v59 = [v8 configurationView];
    [v59 setOverridingCardViewFrame:{v52, v54, v56, v58}];

    v5 = v64;
  }

  else
  {
    v43 = SBLogIcon();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v60 = NSStringFromSelector(a2);
      *buf = 138544386;
      v66 = self;
      v67 = 2114;
      v68 = v60;
      v69 = 2114;
      v70 = v10;
      v71 = 2114;
      v72 = v11;
      v73 = 2114;
      v74 = v13;
      _os_log_error_impl(&dword_1BEB18000, v43, OS_LOG_TYPE_ERROR, "[%{public}@]: %{public}@ failed to create a new presentation for container view controller: %{public}@ -- container view: %{public}@ -- source view: %{public}@", buf, 0x34u);
    }

    [v5 returnToBeginningStateWithAnimation:0];
  }
}

- (id)animatorForTransition:(id)a3
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

- (void)transitionWillProgressToEndState:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = SBLogIcon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: presenting", &v9, 0xCu);
  }

  v5 = [(SBHWidgetConfigurationInteraction *)self touchBlockingView];
  [v5 setHidden:0];

  v6 = [(SBHWidgetConfigurationInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 configurationInteractionWillBegin:self];
  }

  v7 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v7))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_CONFIG_PRESENT", " enableTelemetry=YES ", &v9, 2u);
  }

  v8 = [MEMORY[0x1E696AD88] sbh_defaultPPTNotificationCenter];
  [v8 postNotificationName:@"SBHWidgetConfigurationWillPresentNotification" object:self];
}

- (void)transitionDidProgressToEndState:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = SBLogIcon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: presentation finished", &v8, 0xCu);
  }

  v5 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_CONFIG_PRESENT", " enableTelemetry=YES ", &v8, 2u);
  }

  v6 = [MEMORY[0x1E696AD88] sbh_defaultPPTNotificationCenter];
  [v6 postNotificationName:@"SBHWidgetConfigurationDidPresentNotification" object:self];

  v7 = [(SBHWidgetConfigurationInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 configurationInteractionDidBegin:self];
  }
}

- (void)transitionWillReturnToBeginningState:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = SBLogIcon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: dismissing", &v9, 0xCu);
  }

  v5 = [(SBHWidgetConfigurationInteraction *)self touchBlockingView];
  [v5 setHidden:1];

  v6 = [(SBHWidgetConfigurationInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 configurationInteractionWillEnd:self];
  }

  v7 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v7))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_CONFIG_DISMISS", " enableTelemetry=YES ", &v9, 2u);
  }

  v8 = [MEMORY[0x1E696AD88] sbh_defaultPPTNotificationCenter];
  [v8 postNotificationName:@"SBHWidgetConfigurationWillDismissNotification" object:self];
}

- (void)transitionDidReturnToBeginningState:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138543362;
    v24 = self;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: dismissal finished", &v23, 0xCu);
  }

  v6 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v6))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_CONFIG_DISMISS", " enableTelemetry=YES ", &v23, 2u);
  }

  v7 = [MEMORY[0x1E696AD88] sbh_defaultPPTNotificationCenter];
  [v7 postNotificationName:@"SBHWidgetConfigurationDidDismissNotification" object:self];

  [v4 setUserInfo:0];
  v8 = [(SBHWidgetConfigurationInteraction *)self backgroundView];
  [v8 removeFromSuperview];

  v9 = [(SBHWidgetConfigurationInteraction *)self backgroundTintView];
  [v9 removeFromSuperview];

  [(SBHWidgetConfigurationInteraction *)self setContainerView:0];
  v10 = [(SBHWidgetConfigurationInteraction *)self containerViewController];
  v11 = [(SBHWidgetConfigurationInteraction *)self configurationViewController];
  [v10 bs_removeChildViewController:v11];

  [(SBHWidgetConfigurationInteraction *)self setContainerViewController:0];
  [(SBHWidgetConfigurationInteraction *)self setConfigurationViewController:0];
  [(SBHWidgetConfigurationInteraction *)self setHomeScreenContentView:0];
  v12 = [(SBHWidgetConfigurationInteraction *)self sourceView];
  v13 = [(SBHWidgetConfigurationInteraction *)self tapToPresentGesture];
  [v12 removeGestureRecognizer:v13];

  [v12 invalidate];
  [(SBHWidgetConfigurationInteraction *)self setSourceView:0];
  [(SBHWidgetConfigurationInteraction *)self setTapToPresentGesture:0];
  v14 = [(SBHWidgetConfigurationInteraction *)self referenceView];
  v15 = [v14 customIconImageViewController];
  v16 = [v15 view];
  [v16 setHidden:0];

  [v14 setIconLabelAlpha:1.0];
  [v14 setAlpha:1.0];
  [v14 setHidden:0];
  [(SBHWidgetConfigurationInteraction *)self setReferenceView:0];
  [(SBHWidgetConfigurationInteraction *)self setBackgroundView:0];
  [(SBHWidgetConfigurationInteraction *)self setBackgroundTintView:0];
  v17 = [(SBHWidgetConfigurationInteraction *)self touchBlockingView];
  [v17 removeFromSuperview];

  [(SBHWidgetConfigurationInteraction *)self setTouchBlockingView:0];
  v18 = *MEMORY[0x1E695F058];
  v19 = *(MEMORY[0x1E695F058] + 8);
  v20 = *(MEMORY[0x1E695F058] + 16);
  v21 = *(MEMORY[0x1E695F058] + 24);
  [(SBHWidgetConfigurationInteraction *)self setSourceContentFrame:*MEMORY[0x1E695F058], v19, v20, v21];
  [(SBHWidgetConfigurationInteraction *)self setTargetContentFrame:v18, v19, v20, v21];
  [(SBHWidgetConfigurationInteraction *)self setContentBoundingRect:v18, v19, v20, v21];
  v22 = [(SBHWidgetConfigurationInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v22 configurationInteractionDidEnd:self];
  }
}

- (void)widgetConfigurationViewController:(id)a3 didFinishWithIntent:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(SBHWidgetConfigurationInteraction *)self configurationViewController];
  v10 = [(SBHWidgetConfigurationInteraction *)self configuration];
  v11 = v10;
  if (v9 == v7)
  {
    v15 = [v10 _indexingHash];
    v16 = [v8 _indexingHash];
    v12 = SBLogIcon();
    v17 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v15 == v16)
    {
      if (v17)
      {
        v13 = NSStringFromSelector(a2);
        v19 = 138544130;
        v20 = self;
        v21 = 2114;
        v22 = v13;
        v23 = 2112;
        v24 = v8;
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
        v20 = self;
        v21 = 2114;
        v22 = v18;
        v23 = 2112;
        v24 = v8;
        _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]: %{public}@ is committing new intent: %@", &v19, 0x20u);
      }

      [(SBHWidgetConfigurationInteraction *)self setConfiguration:v8];
      v12 = [(SBHWidgetConfigurationInteraction *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v12 configurationInteractionDidCommit:self];
      }
    }
  }

  else
  {
    v12 = SBLogIcon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      v19 = 138544130;
      v20 = self;
      v21 = 2114;
      v22 = v13;
      v23 = 2112;
      v24 = v8;
      v25 = 2114;
      v26 = v7;
      v14 = "[%{public}@]: %{public}@ is ignoring new intent: %@ -- for unexpected view controller: %{public}@";
LABEL_7:
      _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_DEFAULT, v14, &v19, 0x2Au);
    }
  }

  [(SBHWidgetConfigurationInteraction *)self _endConfigurationImmediately:0];
}

- (void)_handleTapToPresent:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = SBLogIcon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: presenting due to user tap", &v5, 0xCu);
  }

  [(SBHWidgetConfigurationInteraction *)self beginConfiguration];
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

  [(SBHWidgetConfigurationInteraction *)self _endConfigurationImmediately:0];
}

- (CGRect)_sourceContentFrame
{
  v3 = [(SBHWidgetConfigurationInteraction *)self referenceView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SBHWidgetConfigurationInteraction *)self sourceView];
  }

  v6 = v5;

  [v6 iconImageFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(SBHWidgetConfigurationInteraction *)self containerView];
  [v6 convertRect:v15 toView:{v8, v10, v12, v14}];
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
  v3 = [(SBHWidgetConfigurationInteraction *)self widgetSettings];
  v4 = [(SBHWidgetConfigurationInteraction *)self containerView];
  v5 = [v4 traitCollection];
  [v5 displayScale];
  v57 = v6;

  [(SBHWidgetConfigurationInteraction *)self contentBoundingRect];
  v54 = v7;
  if (([v3 configurationMaximizesCardHeight] & 1) == 0)
  {
    v8 = [(SBHWidgetConfigurationInteraction *)self configurationViewController];
    [v8 preferredContentSize];
    BSRectWithSize();
  }

  [v3 configurationMinimumHorizontalMargin];
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
    v11 = [MEMORY[0x1E69DC938] currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (v12 != 1)
    {
      goto LABEL_5;
    }
  }

  UIRectCenteredAboutPointScale();
  v13 = [(SBHWidgetConfigurationInteraction *)self sourceView];
  v14 = [v13 location];
  v15 = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupTodayView", v14);

  if (v15)
  {
    v51 = v57;
    v10 = v54;
    UIRectCenteredXInRectScale();
    goto LABEL_11;
  }

  [v3 configurationFractionBetweenSourceAndContainerX];
  [v3 configurationFractionBetweenSourceAndContainerY];
  v10 = v54;
  UIRectGetCenter();
LABEL_10:
  UIRectCenteredAboutPointScale();
LABEL_11:
  v53 = v16;
  v20 = v17;
  v21 = v18;
  v22 = v19;
  v23 = [(SBHWidgetConfigurationInteraction *)self containerView];
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v55 = v28;
  v58 = v29;

  if ([v3 configurationUsesPercentVerticalMargin])
  {
    v30 = [(SBHWidgetConfigurationInteraction *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v30 verticalMarginPercentageForConfigurationInteraction:self];
    }

    if (BSFloatLessThanFloat())
    {
      [v3 configurationPercentVerticalMargin];
    }

    v31 = v58;
    UICeilToScale();
    v33 = v32;
  }

  else
  {
    [v3 configurationAbsoluteVerticalMargin];
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

  if ([v3 configurationEnforcesMaxCardHeight])
  {
    [v3 configurationMaxCardHeight];
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

- (void)_setUpMatchMoveAnimationForBackgroundView:(id)a3
{
  v4 = MEMORY[0x1E69D3FA0];
  v5 = a3;
  v6 = [(SBHWidgetConfigurationInteraction *)self containerView];
  v7 = [v6 window];
  v8 = [v4 matchMoveAnimationForPinningToView:v7];

  [v5 addAnimation:v8 forKey:@"SBHWidgetConfigurationBackgroundMatchMoveAnimation"];
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