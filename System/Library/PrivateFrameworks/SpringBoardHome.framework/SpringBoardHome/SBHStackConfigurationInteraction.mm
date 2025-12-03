@interface SBHStackConfigurationInteraction
- (BOOL)stackConfigurationViewController:(id)controller allowsRemovalOfIconDataSource:(id)source;
- (BOOL)stackConfigurationViewController:(id)controller dragsSupportSystemDragsForIconView:(id)view;
- (BOOL)stackConfigurationViewControllerShouldDisallowLabelArea:(id)area;
- (CGRect)_contentBoundingFrame;
- (CGRect)_sourceContentFrame;
- (SBHIconViewConfigurationInteractionDelegate)delegate;
- (SBHStackConfigurationInteraction)initWithConfiguration:(id)configuration iconView:(id)view iconViewProvider:(id)provider listLayoutProvider:(id)layoutProvider;
- (SBHStackConfigurationInteractionDelegate)stackConfigurationDelegate;
- (SBHStackConfigurationViewControllerAppearanceDelegate)appearanceDelegate;
- (SBHWidgetSheetViewControllerPresenter)presenter;
- (SBIconViewProviding)iconViewProvider;
- (double)_padApertureOutsetFromWidgetWithGridSize:(id)size;
- (double)stackConfigurationViewController:(id)controller iconContentScaleForGridSizeClass:(id)class;
- (id)animatorForTransition:(id)transition;
- (id)stackConfigurationViewController:(id)controller dragPreviewForIconView:(id)view;
- (id)stackConfigurationViewController:(id)controller draggedIconForIdentifier:(id)identifier;
- (id)stackConfigurationViewController:(id)controller promoteSuggestedWidget:(id)widget withinStack:(id)stack;
- (id)stackConfigurationViewController:(id)controller targetedDragPreviewForIconView:(id)view item:(id)item session:(id)session previewParameters:(id)parameters;
- (id)windowForIconDragPreviewsForStackConfigurationViewController:(id)controller forWindowScene:(id)scene;
- (int64_t)stackConfigurationViewControllerIconViewComponentBackgroundViewType:(id)type;
- (void)_endConfigurationAnimated:(BOOL)animated;
- (void)_handleTransitionWillProgressToEndState:(BOOL)state;
- (void)beginConfiguration;
- (void)endConfiguration;
- (void)endConfigurationImmediately;
- (void)iconViewSizeDidChange:(id)change;
- (void)popConfiguration;
- (void)prepareTransition:(id)transition;
- (void)setPresenter:(id)presenter;
- (void)stackConfigurationViewController:(id)controller didCommitStackConfiguration:(id)configuration;
- (void)stackConfigurationViewController:(id)controller didRemoveSuggestedWidgetIcon:(id)icon;
- (void)stackConfigurationViewController:(id)controller iconView:(id)view dragLiftAnimationDidChangeDirection:(int64_t)direction;
- (void)stackConfigurationViewController:(id)controller iconView:(id)view willAnimateDragLiftWithAnimator:(id)animator session:(id)session;
- (void)stackConfigurationViewController:(id)controller isConsumingDropSession:(id)session;
- (void)stackConfigurationViewControllerDidReceiveUserTouch:(id)touch;
- (void)stackConfigurationViewControllerDoneButtonTapped:(id)tapped;
- (void)stackConfigurationViewControllerRequestsPresentAddWidgetSheet:(id)sheet;
- (void)stackConfigurationViewControllerWillAnimateWidgetInsertion:(id)insertion;
- (void)transitionDidProgressToEndState:(id)state;
- (void)transitionDidReturnToBeginningState:(id)state;
- (void)transitionWillProgressToEndState:(id)state;
- (void)transitionWillReturnToBeginningState:(id)state;
@end

@implementation SBHStackConfigurationInteraction

- (SBHStackConfigurationInteraction)initWithConfiguration:(id)configuration iconView:(id)view iconViewProvider:(id)provider listLayoutProvider:(id)layoutProvider
{
  configurationCopy = configuration;
  viewCopy = view;
  providerCopy = provider;
  layoutProviderCopy = layoutProvider;
  v23.receiver = self;
  v23.super_class = SBHStackConfigurationInteraction;
  v15 = [(SBHStackConfigurationInteraction *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_configuration, configuration);
    objc_storeStrong(&v16->_iconView, view);
    objc_storeWeak(&v16->_iconViewProvider, providerCopy);
    objc_storeStrong(&v16->_listLayoutProvider, layoutProvider);
    v17 = +[SBHHomeScreenDomain rootSettings];
    widgetSettings = [v17 widgetSettings];
    widgetSettings = v16->_widgetSettings;
    v16->_widgetSettings = widgetSettings;

    v20 = objc_alloc_init(SBHViewControllerTransition);
    transition = v16->_transition;
    v16->_transition = v20;

    [(SBHViewControllerTransition *)v16->_transition setDelegate:v16];
  }

  return v16;
}

- (void)setPresenter:(id)presenter
{
  obj = presenter;
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_presenter, obj);
    configurationViewController = [(SBHStackConfigurationInteraction *)self configurationViewController];
    [configurationViewController setPresenter:obj];
  }
}

- (void)beginConfiguration
{
  transition = [(SBHStackConfigurationInteraction *)self transition];
  [transition progressToEndStateWithAnimation:1];
}

- (void)popConfiguration
{
  configurationViewController = [(SBHStackConfigurationInteraction *)self configurationViewController];
  currentConfiguringIconView = [configurationViewController currentConfiguringIconView];

  if (currentConfiguringIconView)
  {
    [currentConfiguringIconView popConfigurationCard];
  }

  else
  {
    [(SBHStackConfigurationInteraction *)self _endConfigurationAnimated:1];
  }
}

- (void)endConfiguration
{
  configurationViewController = [(SBHStackConfigurationInteraction *)self configurationViewController];
  currentConfiguringIconView = [configurationViewController currentConfiguringIconView];
  [currentConfiguringIconView dismissConfigurationCardImmediately];

  [(SBHStackConfigurationInteraction *)self _endConfigurationAnimated:1];
}

- (void)endConfigurationImmediately
{
  configurationViewController = [(SBHStackConfigurationInteraction *)self configurationViewController];
  currentConfiguringIconView = [configurationViewController currentConfiguringIconView];
  [currentConfiguringIconView dismissConfigurationCardImmediately];

  [(SBHStackConfigurationInteraction *)self _endConfigurationAnimated:0];
}

- (void)_endConfigurationAnimated:(BOOL)animated
{
  animatedCopy = animated;
  configurationViewController = [(SBHStackConfigurationInteraction *)self configurationViewController];
  [configurationViewController willDismiss];

  containerViewController = [(SBHStackConfigurationInteraction *)self containerViewController];
  [containerViewController dismissViewControllerAnimated:1 completion:0];

  transition = [(SBHStackConfigurationInteraction *)self transition];
  [transition returnToBeginningStateWithAnimation:animatedCopy];
}

- (void)prepareTransition:(id)transition
{
  transitionCopy = transition;
  delegate = [(SBHStackConfigurationInteraction *)self delegate];
  v5 = [delegate containerViewControllerForConfigurationInteraction:self];
  [(SBHStackConfigurationInteraction *)self setContainerViewController:v5];
  view = [v5 view];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate containerViewForConfigurationInteraction:self];

    view = v7;
  }

  [(SBHStackConfigurationInteraction *)self setContainerView:view];
  [view bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [SBHStackConfigurationViewController alloc];
  configuration = [(SBHStackConfigurationInteraction *)self configuration];
  iconView = [(SBHStackConfigurationInteraction *)self iconView];
  iconViewProvider = [(SBHStackConfigurationInteraction *)self iconViewProvider];
  listLayoutProvider = [(SBHStackConfigurationInteraction *)self listLayoutProvider];
  v21 = [(SBHStackConfigurationViewController *)v16 initWithConfiguration:configuration iconView:iconView iconViewProvider:iconViewProvider listLayoutProvider:listLayoutProvider showsAddButton:[(SBHStackConfigurationInteraction *)self showsAddButton] showsDoneButton:[(SBHStackConfigurationInteraction *)self showsDoneButton]];

  presenter = [(SBHStackConfigurationInteraction *)self presenter];
  [(SBHStackConfigurationViewController *)v21 setPresenter:presenter];

  [(SBHStackConfigurationViewController *)v21 setDelegate:self];
  [(SBHStackConfigurationInteraction *)self setConfigurationViewController:v21];
  [(SBHStackConfigurationInteraction *)self _contentBoundingFrame];
  [(SBHStackConfigurationViewController *)v21 setContentBoundingFrame:?];
  iconView2 = [(SBHStackConfigurationInteraction *)self iconView];
  [iconView2 setHighlighted:0];
  [iconView2 setPaused:1 forReason:4];
  [iconView2 addObserver:self];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__folderExpansionAnimationWillBegin_ name:@"SBIconZoomExpansionAnimationWillBeginNotification" object:0];
  [v5 bs_addChildViewController:v21 withSuperview:view];
  view2 = [(SBHStackConfigurationViewController *)v21 view];
  [view2 setFrame:{v9, v11, v13, v15}];
  [view2 layoutIfNeeded];
  if ([v5 shouldAutomaticallyForwardAppearanceMethods] && objc_msgSend(v5, "bs_isAppearingOrAppeared") && (-[SBHStackConfigurationViewController bs_isAppearingOrAppeared](v21, "bs_isAppearingOrAppeared") & 1) == 0)
  {
    [(SBHStackConfigurationViewController *)v21 bs_endAppearanceTransition:1];
  }

  animationCoordinator = [(SBHStackConfigurationViewController *)v21 animationCoordinator];
  [transitionCopy setUserInfo:animationCoordinator];
}

- (id)animatorForTransition:(id)transition
{
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v4 = off_1E8087350;
  if (!IsReduceMotionEnabled)
  {
    v4 = off_1E8087330;
  }

  v5 = objc_alloc_init(*v4);

  return v5;
}

- (void)transitionWillProgressToEndState:(id)state
{
  delegate = [(SBHStackConfigurationInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate configurationInteractionWillBegin:self];
  }

  appearanceDelegate = [(SBHStackConfigurationInteraction *)self appearanceDelegate];
  configurationViewController = [(SBHStackConfigurationInteraction *)self configurationViewController];
  [appearanceDelegate stackConfigurationViewControllerWillAppear:configurationViewController];

  [(SBHStackConfigurationInteraction *)self _handleTransitionWillProgressToEndState:1];
  v7 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_STACK_EXPAND", " enableTelemetry=YES ", v9, 2u);
  }

  sbh_defaultPPTNotificationCenter = [MEMORY[0x1E696AD88] sbh_defaultPPTNotificationCenter];
  [sbh_defaultPPTNotificationCenter postNotificationName:@"SBHStackConfigurationWillPresentNotification" object:self];
}

- (void)transitionDidProgressToEndState:(id)state
{
  v4 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v4))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_STACK_EXPAND", " enableTelemetry=YES ", v9, 2u);
  }

  sbh_defaultPPTNotificationCenter = [MEMORY[0x1E696AD88] sbh_defaultPPTNotificationCenter];
  [sbh_defaultPPTNotificationCenter postNotificationName:@"SBHStackConfigurationDidPresentNotification" object:self];

  delegate = [(SBHStackConfigurationInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate configurationInteractionDidBegin:self];
  }

  appearanceDelegate = [(SBHStackConfigurationInteraction *)self appearanceDelegate];
  configurationViewController = [(SBHStackConfigurationInteraction *)self configurationViewController];
  [appearanceDelegate stackConfigurationViewControllerDidAppear:configurationViewController];
}

- (void)transitionWillReturnToBeginningState:(id)state
{
  delegate = [(SBHStackConfigurationInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate configurationInteractionWillEnd:self];
  }

  appearanceDelegate = [(SBHStackConfigurationInteraction *)self appearanceDelegate];
  configurationViewController = [(SBHStackConfigurationInteraction *)self configurationViewController];
  [appearanceDelegate stackConfigurationViewControllerWillDisappear:configurationViewController];

  [(SBHStackConfigurationInteraction *)self _handleTransitionWillProgressToEndState:0];
  v7 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_STACK_COLLAPSE", " enableTelemetry=YES ", v9, 2u);
  }

  sbh_defaultPPTNotificationCenter = [MEMORY[0x1E696AD88] sbh_defaultPPTNotificationCenter];
  [sbh_defaultPPTNotificationCenter postNotificationName:@"SBHStackConfigurationWillDismissNotification" object:self];
}

- (void)transitionDidReturnToBeginningState:(id)state
{
  stateCopy = state;
  v5 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v5))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_STACK_COLLAPSE", " enableTelemetry=YES ", v15, 2u);
  }

  sbh_defaultPPTNotificationCenter = [MEMORY[0x1E696AD88] sbh_defaultPPTNotificationCenter];
  [sbh_defaultPPTNotificationCenter postNotificationName:@"SBHStackConfigurationDidDismissNotification" object:self];

  configurationViewController = [(SBHStackConfigurationInteraction *)self configurationViewController];
  parentViewController = [configurationViewController parentViewController];
  [parentViewController bs_removeChildViewController:configurationViewController];

  [stateCopy setUserInfo:0];
  [(SBHStackConfigurationInteraction *)self setContainerView:0];
  [(SBHStackConfigurationInteraction *)self setContainerViewController:0];
  [(SBHStackConfigurationInteraction *)self setConfigurationViewController:0];
  iconView = [(SBHStackConfigurationInteraction *)self iconView];
  [iconView setPaused:0 forReason:4];
  [iconView removeObserver:self];
  customIconImageViewController = [iconView customIconImageViewController];
  view = [customIconImageViewController view];

  [view setHidden:0];
  [view setAlpha:1.0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBIconZoomExpansionAnimationWillBeginNotification" object:0];
  delegate = [(SBHStackConfigurationInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate configurationInteractionDidEnd:self];
  }

  appearanceDelegate = [(SBHStackConfigurationInteraction *)self appearanceDelegate];
  [appearanceDelegate stackConfigurationViewControllerDidDisappear:configurationViewController];
}

- (void)stackConfigurationViewController:(id)controller didCommitStackConfiguration:(id)configuration
{
  [(SBHStackConfigurationInteraction *)self setConfiguration:configuration];
  delegate = [(SBHStackConfigurationInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate configurationInteractionDidCommit:self];
  }
}

- (BOOL)stackConfigurationViewController:(id)controller allowsRemovalOfIconDataSource:(id)source
{
  sourceCopy = source;
  stackConfigurationDelegate = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [stackConfigurationDelegate stackConfigurationInteraction:self allowsRemovalOfIconDataSource:sourceCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)stackConfigurationViewController:(id)controller draggedIconForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  stackConfigurationDelegate = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  v7 = [stackConfigurationDelegate stackConfigurationInteraction:self draggedIconForIdentifier:identifierCopy];

  return v7;
}

- (void)stackConfigurationViewController:(id)controller isConsumingDropSession:(id)session
{
  sessionCopy = session;
  stackConfigurationDelegate = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  [stackConfigurationDelegate stackConfigurationInteraction:self isConsumingDropSession:sessionCopy];
}

- (void)stackConfigurationViewController:(id)controller didRemoveSuggestedWidgetIcon:(id)icon
{
  iconCopy = icon;
  stackConfigurationDelegate = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  [stackConfigurationDelegate stackConfigurationInteraction:self noteDidRemoveSuggestedWidgetIcon:iconCopy];
}

- (void)stackConfigurationViewControllerRequestsPresentAddWidgetSheet:(id)sheet
{
  sheetCopy = sheet;
  stackConfigurationDelegate = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  [stackConfigurationDelegate stackConfigurationInteraction:self requestsPresentAddWidgetSheetFromPresenter:sheetCopy];
}

- (void)stackConfigurationViewControllerWillAnimateWidgetInsertion:(id)insertion
{
  stackConfigurationDelegate = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  [stackConfigurationDelegate stackConfigurationInteractionWillAnimateWidgetInsertion:self];
}

- (id)stackConfigurationViewController:(id)controller dragPreviewForIconView:(id)view
{
  viewCopy = view;
  stackConfigurationDelegate = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  v7 = [stackConfigurationDelegate stackConfigurationInteraction:self dragPreviewForIconView:viewCopy];

  return v7;
}

- (id)stackConfigurationViewController:(id)controller targetedDragPreviewForIconView:(id)view item:(id)item session:(id)session previewParameters:(id)parameters
{
  viewCopy = view;
  itemCopy = item;
  sessionCopy = session;
  parametersCopy = parameters;
  stackConfigurationDelegate = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  if (objc_opt_respondsToSelector())
  {
    v16 = [stackConfigurationDelegate stackConfigurationInteraction:self targetedDragPreviewForIconView:viewCopy item:itemCopy session:sessionCopy previewParameters:parametersCopy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)windowForIconDragPreviewsForStackConfigurationViewController:(id)controller forWindowScene:(id)scene
{
  sceneCopy = scene;
  stackConfigurationDelegate = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  v7 = [stackConfigurationDelegate windowForIconDragPreviewsForStackConfigurationInteraction:self forWindowScene:sceneCopy];

  return v7;
}

- (BOOL)stackConfigurationViewController:(id)controller dragsSupportSystemDragsForIconView:(id)view
{
  viewCopy = view;
  stackConfigurationDelegate = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  if (objc_opt_respondsToSelector())
  {
    dragsSupportSystemDragsByDefault = [stackConfigurationDelegate stackConfigurationInteraction:self dragsSupportSystemDragsForIconView:viewCopy];
  }

  else
  {
    dragsSupportSystemDragsByDefault = [viewCopy dragsSupportSystemDragsByDefault];
  }

  v8 = dragsSupportSystemDragsByDefault;

  return v8;
}

- (void)stackConfigurationViewController:(id)controller iconView:(id)view willAnimateDragLiftWithAnimator:(id)animator session:(id)session
{
  viewCopy = view;
  animatorCopy = animator;
  sessionCopy = session;
  stackConfigurationDelegate = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  if (objc_opt_respondsToSelector())
  {
    [stackConfigurationDelegate stackConfigurationInteraction:self iconView:viewCopy willAnimateDragLiftWithAnimator:animatorCopy session:sessionCopy];
  }
}

- (void)stackConfigurationViewController:(id)controller iconView:(id)view dragLiftAnimationDidChangeDirection:(int64_t)direction
{
  viewCopy = view;
  stackConfigurationDelegate = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  if (objc_opt_respondsToSelector())
  {
    [stackConfigurationDelegate stackConfigurationInteraction:self iconView:viewCopy dragLiftAnimationDidChangeDirection:direction];
  }
}

- (id)stackConfigurationViewController:(id)controller promoteSuggestedWidget:(id)widget withinStack:(id)stack
{
  stackCopy = stack;
  widgetCopy = widget;
  stackConfigurationDelegate = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  v10 = [stackConfigurationDelegate stackConfigurationInteraction:self promoteSuggestedWidget:widgetCopy withinStack:stackCopy];

  return v10;
}

- (double)stackConfigurationViewController:(id)controller iconContentScaleForGridSizeClass:(id)class
{
  classCopy = class;
  stackConfigurationDelegate = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  v7 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [stackConfigurationDelegate stackConfigurationInteraction:self iconContentScaleForGridSizeClass:classCopy];
    v7 = v8;
  }

  return v7;
}

- (void)stackConfigurationViewControllerDoneButtonTapped:(id)tapped
{
  stackConfigurationDelegate = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  if (stackConfigurationDelegate)
  {
    v5 = stackConfigurationDelegate;
    if (objc_opt_respondsToSelector())
    {
      [v5 stackConfigurationDoneButtonTapped:self];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (int64_t)stackConfigurationViewControllerIconViewComponentBackgroundViewType:(id)type
{
  stackConfigurationDelegate = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  if (stackConfigurationDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [stackConfigurationDelegate stackConfigurationInteractionIconViewComponentBackgroundViewType:self];
  }

  else
  {
    v5 = 4;
  }

  return v5;
}

- (void)stackConfigurationViewControllerDidReceiveUserTouch:(id)touch
{
  stackConfigurationDelegate = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  if (stackConfigurationDelegate)
  {
    v5 = stackConfigurationDelegate;
    if (objc_opt_respondsToSelector())
    {
      [v5 stackConfigurationInteractionDidReceiveUserTouch:self];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (BOOL)stackConfigurationViewControllerShouldDisallowLabelArea:(id)area
{
  stackConfigurationDelegate = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  if (stackConfigurationDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [stackConfigurationDelegate stackConfigurationInteractionShouldDisallowLabelArea:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)iconViewSizeDidChange:(id)change
{
  transition = [(SBHStackConfigurationInteraction *)self transition];
  targetEndpoint = [transition targetEndpoint];

  if (!targetEndpoint)
  {

    [(SBHStackConfigurationInteraction *)self endConfigurationImmediately];
  }
}

- (CGRect)_sourceContentFrame
{
  iconView = [(SBHStackConfigurationInteraction *)self iconView];
  containerView = [(SBHStackConfigurationInteraction *)self containerView];
  [iconView iconImageFrame];
  [iconView convertRect:containerView toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_contentBoundingFrame
{
  v60 = *MEMORY[0x1E69E9840];
  delegate = [(SBHStackConfigurationInteraction *)self delegate];
  [(SBHStackConfigurationInteraction *)self _sourceContentFrame];
  containerView = [(SBHStackConfigurationInteraction *)self containerView];
  [containerView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  iconView = [(SBHStackConfigurationInteraction *)self iconView];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v16 = v12;
  v50 = v6;
  v51 = v10;
  v49 = v12;
  v17 = v8;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate contentBoundingRectForConfigurationInteraction:self];
    }

    listLayoutProvider = [(SBHStackConfigurationInteraction *)self listLayoutProvider];
    v19 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationTodayView"];

    icon = [iconView icon];
    gridSizeClass = [icon gridSizeClass];

    SBHIconListLayoutIconImageInfoForGridSizeClass(v19, @"SBHIconGridSizeClassMedium");
    SBHIconListLayoutIconImageInfoForGridSizeClass(v19, gridSizeClass);
    [(SBHStackConfigurationInteraction *)self _padApertureOutsetFromWidgetWithGridSize:gridSizeClass];
    UIEdgeInsetsMakeWithEdges();
    [(SBHWidgetSettings *)self->_widgetSettings stackConfigurationContentHeightRatio];
    UIRectGetCenter();
    UIRectCenteredAboutPointScale();
    location = [iconView location];
    LODWORD(icon) = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupTodayView", location);

    if (icon)
    {
      v46 = 0;
      UIRectCenteredXInRectScale();
    }

    else
    {
      [(SBHWidgetSettings *)self->_widgetSettings configurationFractionBetweenSourceAndContainerX];
      [(SBHWidgetSettings *)self->_widgetSettings configurationFractionBetweenSourceAndContainerY];
      UIRectGetCenter();
      UIRectCenteredAboutPointScale();
    }

    v27 = v24;
    v10 = v25;
    v16 = v26;
    v28 = fmax(v23, 0.0);
    if (v51 - v25 <= v28)
    {
      v6 = v51 - v25;
    }

    else
    {
      v6 = v28;
    }

    v17 = v27;
  }

  v47 = v12 + v16 * 0.1;
  rect = v17;
  UIRectContainInRect();
  x = v61.origin.x;
  y = v61.origin.y;
  width = v61.size.width;
  height = v61.size.height;
  if (CGRectIsEmpty(v61))
  {
    v33 = SBLogIcon();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      v62.origin.x = v6;
      v62.origin.y = rect;
      v62.size.width = v10;
      v62.size.height = v16;
      v43 = NSStringFromCGRect(v62);
      v63.origin.x = v6;
      v63.origin.y = -(v16 * 0.1);
      v63.size.width = v10;
      v63.size.height = v47;
      v44 = NSStringFromCGRect(v63);
      v64.origin.y = v8;
      v64.origin.x = v50;
      v64.size.width = v51;
      v64.size.height = v49;
      v45 = NSStringFromCGRect(v64);
      *buf = 138544130;
      v53 = v43;
      v54 = 2114;
      v55 = v44;
      v56 = 2114;
      v57 = v45;
      v58 = 2114;
      v59 = containerView;
      _os_log_fault_impl(&dword_1BEB18000, v33, OS_LOG_TYPE_FAULT, "Stack Configuration target content frame is empty with preferredContentRect(%{public}@), allowableRect(%{public}@), containerBounds(%{public}@), containerView(%{public}@).", buf, 0x2Au);
    }

    if (iconView)
    {
      [iconView window];
    }

    else
    {
      [MEMORY[0x1E69DCEB0] mainScreen];
    }
    v34 = ;
    [v34 bounds];
    x = v35;
    y = v36;
    width = v37;
    height = v38;
  }

  v39 = x;
  v40 = y;
  v41 = width;
  v42 = height;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (double)_padApertureOutsetFromWidgetWithGridSize:(id)size
{
  sizeCopy = size;
  v4 = sizeCopy;
  v5 = 23.0;
  if (@"SBHIconGridSizeClassMedium" != sizeCopy && ([(__CFString *)sizeCopy isEqualToString:?]& 1) == 0)
  {
    if (@"SBHIconGridSizeClassLarge" == v4 || ([(__CFString *)v4 isEqualToString:?]& 1) != 0 || @"SBHIconGridSizeClassExtraLarge" == v4 || ([(__CFString *)v4 isEqualToString:?]& 1) != 0 || @"SBHIconGridSizeClassNewsLargeTall" == v4)
    {
      v5 = 38.0;
    }

    else if ([(__CFString *)v4 isEqualToString:?])
    {
      v5 = 38.0;
    }

    else
    {
      v5 = 15.0;
    }
  }

  return v5;
}

- (void)_handleTransitionWillProgressToEndState:(BOOL)state
{
  stateCopy = state;
  configurationViewController = [(SBHStackConfigurationInteraction *)self configurationViewController];
  view = [configurationViewController view];
  [view bs_setHitTestingDisabled:stateCopy ^ 1];

  if (!stateCopy)
  {
    visiblyActiveDataSource = [configurationViewController visiblyActiveDataSource];
    iconView = [(SBHStackConfigurationInteraction *)self iconView];
    v8 = iconView;
    if (visiblyActiveDataSource)
    {
      icon = [iconView icon];
      [icon setActiveDataSource:visiblyActiveDataSource];
      customIconImageViewController = [v8 customIconImageViewController];
      view2 = [customIconImageViewController view];
      [view2 layoutIfNeeded];
    }

    else
    {
      [iconView setHidden:1];
    }
  }

  [configurationViewController setEditingIcons:stateCopy];
}

- (SBHWidgetSheetViewControllerPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (SBHIconViewConfigurationInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBHStackConfigurationInteractionDelegate)stackConfigurationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stackConfigurationDelegate);

  return WeakRetained;
}

- (SBHStackConfigurationViewControllerAppearanceDelegate)appearanceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);

  return WeakRetained;
}

- (SBIconViewProviding)iconViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_iconViewProvider);

  return WeakRetained;
}

@end