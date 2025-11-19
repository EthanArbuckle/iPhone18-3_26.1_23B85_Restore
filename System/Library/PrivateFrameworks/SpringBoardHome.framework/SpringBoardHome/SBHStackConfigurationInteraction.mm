@interface SBHStackConfigurationInteraction
- (BOOL)stackConfigurationViewController:(id)a3 allowsRemovalOfIconDataSource:(id)a4;
- (BOOL)stackConfigurationViewController:(id)a3 dragsSupportSystemDragsForIconView:(id)a4;
- (BOOL)stackConfigurationViewControllerShouldDisallowLabelArea:(id)a3;
- (CGRect)_contentBoundingFrame;
- (CGRect)_sourceContentFrame;
- (SBHIconViewConfigurationInteractionDelegate)delegate;
- (SBHStackConfigurationInteraction)initWithConfiguration:(id)a3 iconView:(id)a4 iconViewProvider:(id)a5 listLayoutProvider:(id)a6;
- (SBHStackConfigurationInteractionDelegate)stackConfigurationDelegate;
- (SBHStackConfigurationViewControllerAppearanceDelegate)appearanceDelegate;
- (SBHWidgetSheetViewControllerPresenter)presenter;
- (SBIconViewProviding)iconViewProvider;
- (double)_padApertureOutsetFromWidgetWithGridSize:(id)a3;
- (double)stackConfigurationViewController:(id)a3 iconContentScaleForGridSizeClass:(id)a4;
- (id)animatorForTransition:(id)a3;
- (id)stackConfigurationViewController:(id)a3 dragPreviewForIconView:(id)a4;
- (id)stackConfigurationViewController:(id)a3 draggedIconForIdentifier:(id)a4;
- (id)stackConfigurationViewController:(id)a3 promoteSuggestedWidget:(id)a4 withinStack:(id)a5;
- (id)stackConfigurationViewController:(id)a3 targetedDragPreviewForIconView:(id)a4 item:(id)a5 session:(id)a6 previewParameters:(id)a7;
- (id)windowForIconDragPreviewsForStackConfigurationViewController:(id)a3 forWindowScene:(id)a4;
- (int64_t)stackConfigurationViewControllerIconViewComponentBackgroundViewType:(id)a3;
- (void)_endConfigurationAnimated:(BOOL)a3;
- (void)_handleTransitionWillProgressToEndState:(BOOL)a3;
- (void)beginConfiguration;
- (void)endConfiguration;
- (void)endConfigurationImmediately;
- (void)iconViewSizeDidChange:(id)a3;
- (void)popConfiguration;
- (void)prepareTransition:(id)a3;
- (void)setPresenter:(id)a3;
- (void)stackConfigurationViewController:(id)a3 didCommitStackConfiguration:(id)a4;
- (void)stackConfigurationViewController:(id)a3 didRemoveSuggestedWidgetIcon:(id)a4;
- (void)stackConfigurationViewController:(id)a3 iconView:(id)a4 dragLiftAnimationDidChangeDirection:(int64_t)a5;
- (void)stackConfigurationViewController:(id)a3 iconView:(id)a4 willAnimateDragLiftWithAnimator:(id)a5 session:(id)a6;
- (void)stackConfigurationViewController:(id)a3 isConsumingDropSession:(id)a4;
- (void)stackConfigurationViewControllerDidReceiveUserTouch:(id)a3;
- (void)stackConfigurationViewControllerDoneButtonTapped:(id)a3;
- (void)stackConfigurationViewControllerRequestsPresentAddWidgetSheet:(id)a3;
- (void)stackConfigurationViewControllerWillAnimateWidgetInsertion:(id)a3;
- (void)transitionDidProgressToEndState:(id)a3;
- (void)transitionDidReturnToBeginningState:(id)a3;
- (void)transitionWillProgressToEndState:(id)a3;
- (void)transitionWillReturnToBeginningState:(id)a3;
@end

@implementation SBHStackConfigurationInteraction

- (SBHStackConfigurationInteraction)initWithConfiguration:(id)a3 iconView:(id)a4 iconViewProvider:(id)a5 listLayoutProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = SBHStackConfigurationInteraction;
  v15 = [(SBHStackConfigurationInteraction *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_configuration, a3);
    objc_storeStrong(&v16->_iconView, a4);
    objc_storeWeak(&v16->_iconViewProvider, v13);
    objc_storeStrong(&v16->_listLayoutProvider, a6);
    v17 = +[SBHHomeScreenDomain rootSettings];
    v18 = [v17 widgetSettings];
    widgetSettings = v16->_widgetSettings;
    v16->_widgetSettings = v18;

    v20 = objc_alloc_init(SBHViewControllerTransition);
    transition = v16->_transition;
    v16->_transition = v20;

    [(SBHViewControllerTransition *)v16->_transition setDelegate:v16];
  }

  return v16;
}

- (void)setPresenter:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_presenter, obj);
    v5 = [(SBHStackConfigurationInteraction *)self configurationViewController];
    [v5 setPresenter:obj];
  }
}

- (void)beginConfiguration
{
  v2 = [(SBHStackConfigurationInteraction *)self transition];
  [v2 progressToEndStateWithAnimation:1];
}

- (void)popConfiguration
{
  v3 = [(SBHStackConfigurationInteraction *)self configurationViewController];
  v4 = [v3 currentConfiguringIconView];

  if (v4)
  {
    [v4 popConfigurationCard];
  }

  else
  {
    [(SBHStackConfigurationInteraction *)self _endConfigurationAnimated:1];
  }
}

- (void)endConfiguration
{
  v3 = [(SBHStackConfigurationInteraction *)self configurationViewController];
  v4 = [v3 currentConfiguringIconView];
  [v4 dismissConfigurationCardImmediately];

  [(SBHStackConfigurationInteraction *)self _endConfigurationAnimated:1];
}

- (void)endConfigurationImmediately
{
  v3 = [(SBHStackConfigurationInteraction *)self configurationViewController];
  v4 = [v3 currentConfiguringIconView];
  [v4 dismissConfigurationCardImmediately];

  [(SBHStackConfigurationInteraction *)self _endConfigurationAnimated:0];
}

- (void)_endConfigurationAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBHStackConfigurationInteraction *)self configurationViewController];
  [v5 willDismiss];

  v6 = [(SBHStackConfigurationInteraction *)self containerViewController];
  [v6 dismissViewControllerAnimated:1 completion:0];

  v7 = [(SBHStackConfigurationInteraction *)self transition];
  [v7 returnToBeginningStateWithAnimation:v3];
}

- (void)prepareTransition:(id)a3
{
  v4 = a3;
  v27 = [(SBHStackConfigurationInteraction *)self delegate];
  v5 = [v27 containerViewControllerForConfigurationInteraction:self];
  [(SBHStackConfigurationInteraction *)self setContainerViewController:v5];
  v6 = [v5 view];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v27 containerViewForConfigurationInteraction:self];

    v6 = v7;
  }

  [(SBHStackConfigurationInteraction *)self setContainerView:v6];
  [v6 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [SBHStackConfigurationViewController alloc];
  v17 = [(SBHStackConfigurationInteraction *)self configuration];
  v18 = [(SBHStackConfigurationInteraction *)self iconView];
  v19 = [(SBHStackConfigurationInteraction *)self iconViewProvider];
  v20 = [(SBHStackConfigurationInteraction *)self listLayoutProvider];
  v21 = [(SBHStackConfigurationViewController *)v16 initWithConfiguration:v17 iconView:v18 iconViewProvider:v19 listLayoutProvider:v20 showsAddButton:[(SBHStackConfigurationInteraction *)self showsAddButton] showsDoneButton:[(SBHStackConfigurationInteraction *)self showsDoneButton]];

  v22 = [(SBHStackConfigurationInteraction *)self presenter];
  [(SBHStackConfigurationViewController *)v21 setPresenter:v22];

  [(SBHStackConfigurationViewController *)v21 setDelegate:self];
  [(SBHStackConfigurationInteraction *)self setConfigurationViewController:v21];
  [(SBHStackConfigurationInteraction *)self _contentBoundingFrame];
  [(SBHStackConfigurationViewController *)v21 setContentBoundingFrame:?];
  v23 = [(SBHStackConfigurationInteraction *)self iconView];
  [v23 setHighlighted:0];
  [v23 setPaused:1 forReason:4];
  [v23 addObserver:self];
  v24 = [MEMORY[0x1E696AD88] defaultCenter];
  [v24 addObserver:self selector:sel__folderExpansionAnimationWillBegin_ name:@"SBIconZoomExpansionAnimationWillBeginNotification" object:0];
  [v5 bs_addChildViewController:v21 withSuperview:v6];
  v25 = [(SBHStackConfigurationViewController *)v21 view];
  [v25 setFrame:{v9, v11, v13, v15}];
  [v25 layoutIfNeeded];
  if ([v5 shouldAutomaticallyForwardAppearanceMethods] && objc_msgSend(v5, "bs_isAppearingOrAppeared") && (-[SBHStackConfigurationViewController bs_isAppearingOrAppeared](v21, "bs_isAppearingOrAppeared") & 1) == 0)
  {
    [(SBHStackConfigurationViewController *)v21 bs_endAppearanceTransition:1];
  }

  v26 = [(SBHStackConfigurationViewController *)v21 animationCoordinator];
  [v4 setUserInfo:v26];
}

- (id)animatorForTransition:(id)a3
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

- (void)transitionWillProgressToEndState:(id)a3
{
  v4 = [(SBHStackConfigurationInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 configurationInteractionWillBegin:self];
  }

  v5 = [(SBHStackConfigurationInteraction *)self appearanceDelegate];
  v6 = [(SBHStackConfigurationInteraction *)self configurationViewController];
  [v5 stackConfigurationViewControllerWillAppear:v6];

  [(SBHStackConfigurationInteraction *)self _handleTransitionWillProgressToEndState:1];
  v7 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_STACK_EXPAND", " enableTelemetry=YES ", v9, 2u);
  }

  v8 = [MEMORY[0x1E696AD88] sbh_defaultPPTNotificationCenter];
  [v8 postNotificationName:@"SBHStackConfigurationWillPresentNotification" object:self];
}

- (void)transitionDidProgressToEndState:(id)a3
{
  v4 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v4))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_STACK_EXPAND", " enableTelemetry=YES ", v9, 2u);
  }

  v5 = [MEMORY[0x1E696AD88] sbh_defaultPPTNotificationCenter];
  [v5 postNotificationName:@"SBHStackConfigurationDidPresentNotification" object:self];

  v6 = [(SBHStackConfigurationInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 configurationInteractionDidBegin:self];
  }

  v7 = [(SBHStackConfigurationInteraction *)self appearanceDelegate];
  v8 = [(SBHStackConfigurationInteraction *)self configurationViewController];
  [v7 stackConfigurationViewControllerDidAppear:v8];
}

- (void)transitionWillReturnToBeginningState:(id)a3
{
  v4 = [(SBHStackConfigurationInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 configurationInteractionWillEnd:self];
  }

  v5 = [(SBHStackConfigurationInteraction *)self appearanceDelegate];
  v6 = [(SBHStackConfigurationInteraction *)self configurationViewController];
  [v5 stackConfigurationViewControllerWillDisappear:v6];

  [(SBHStackConfigurationInteraction *)self _handleTransitionWillProgressToEndState:0];
  v7 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v7))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_STACK_COLLAPSE", " enableTelemetry=YES ", v9, 2u);
  }

  v8 = [MEMORY[0x1E696AD88] sbh_defaultPPTNotificationCenter];
  [v8 postNotificationName:@"SBHStackConfigurationWillDismissNotification" object:self];
}

- (void)transitionDidReturnToBeginningState:(id)a3
{
  v4 = a3;
  v5 = SBLogTelemetrySignposts();
  if (os_signpost_enabled(v5))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEB18000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_WIDGET_STACK_COLLAPSE", " enableTelemetry=YES ", v15, 2u);
  }

  v6 = [MEMORY[0x1E696AD88] sbh_defaultPPTNotificationCenter];
  [v6 postNotificationName:@"SBHStackConfigurationDidDismissNotification" object:self];

  v7 = [(SBHStackConfigurationInteraction *)self configurationViewController];
  v8 = [v7 parentViewController];
  [v8 bs_removeChildViewController:v7];

  [v4 setUserInfo:0];
  [(SBHStackConfigurationInteraction *)self setContainerView:0];
  [(SBHStackConfigurationInteraction *)self setContainerViewController:0];
  [(SBHStackConfigurationInteraction *)self setConfigurationViewController:0];
  v9 = [(SBHStackConfigurationInteraction *)self iconView];
  [v9 setPaused:0 forReason:4];
  [v9 removeObserver:self];
  v10 = [v9 customIconImageViewController];
  v11 = [v10 view];

  [v11 setHidden:0];
  [v11 setAlpha:1.0];
  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 removeObserver:self name:@"SBIconZoomExpansionAnimationWillBeginNotification" object:0];
  v13 = [(SBHStackConfigurationInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v13 configurationInteractionDidEnd:self];
  }

  v14 = [(SBHStackConfigurationInteraction *)self appearanceDelegate];
  [v14 stackConfigurationViewControllerDidDisappear:v7];
}

- (void)stackConfigurationViewController:(id)a3 didCommitStackConfiguration:(id)a4
{
  [(SBHStackConfigurationInteraction *)self setConfiguration:a4];
  v5 = [(SBHStackConfigurationInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 configurationInteractionDidCommit:self];
  }
}

- (BOOL)stackConfigurationViewController:(id)a3 allowsRemovalOfIconDataSource:(id)a4
{
  v5 = a4;
  v6 = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 stackConfigurationInteraction:self allowsRemovalOfIconDataSource:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)stackConfigurationViewController:(id)a3 draggedIconForIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  v7 = [v6 stackConfigurationInteraction:self draggedIconForIdentifier:v5];

  return v7;
}

- (void)stackConfigurationViewController:(id)a3 isConsumingDropSession:(id)a4
{
  v5 = a4;
  v6 = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  [v6 stackConfigurationInteraction:self isConsumingDropSession:v5];
}

- (void)stackConfigurationViewController:(id)a3 didRemoveSuggestedWidgetIcon:(id)a4
{
  v5 = a4;
  v6 = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  [v6 stackConfigurationInteraction:self noteDidRemoveSuggestedWidgetIcon:v5];
}

- (void)stackConfigurationViewControllerRequestsPresentAddWidgetSheet:(id)a3
{
  v4 = a3;
  v5 = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  [v5 stackConfigurationInteraction:self requestsPresentAddWidgetSheetFromPresenter:v4];
}

- (void)stackConfigurationViewControllerWillAnimateWidgetInsertion:(id)a3
{
  v4 = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  [v4 stackConfigurationInteractionWillAnimateWidgetInsertion:self];
}

- (id)stackConfigurationViewController:(id)a3 dragPreviewForIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  v7 = [v6 stackConfigurationInteraction:self dragPreviewForIconView:v5];

  return v7;
}

- (id)stackConfigurationViewController:(id)a3 targetedDragPreviewForIconView:(id)a4 item:(id)a5 session:(id)a6 previewParameters:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  if (objc_opt_respondsToSelector())
  {
    v16 = [v15 stackConfigurationInteraction:self targetedDragPreviewForIconView:v11 item:v12 session:v13 previewParameters:v14];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)windowForIconDragPreviewsForStackConfigurationViewController:(id)a3 forWindowScene:(id)a4
{
  v5 = a4;
  v6 = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  v7 = [v6 windowForIconDragPreviewsForStackConfigurationInteraction:self forWindowScene:v5];

  return v7;
}

- (BOOL)stackConfigurationViewController:(id)a3 dragsSupportSystemDragsForIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 stackConfigurationInteraction:self dragsSupportSystemDragsForIconView:v5];
  }

  else
  {
    v7 = [v5 dragsSupportSystemDragsByDefault];
  }

  v8 = v7;

  return v8;
}

- (void)stackConfigurationViewController:(id)a3 iconView:(id)a4 willAnimateDragLiftWithAnimator:(id)a5 session:(id)a6
{
  v12 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 stackConfigurationInteraction:self iconView:v12 willAnimateDragLiftWithAnimator:v9 session:v10];
  }
}

- (void)stackConfigurationViewController:(id)a3 iconView:(id)a4 dragLiftAnimationDidChangeDirection:(int64_t)a5
{
  v8 = a4;
  v7 = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 stackConfigurationInteraction:self iconView:v8 dragLiftAnimationDidChangeDirection:a5];
  }
}

- (id)stackConfigurationViewController:(id)a3 promoteSuggestedWidget:(id)a4 withinStack:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  v10 = [v9 stackConfigurationInteraction:self promoteSuggestedWidget:v8 withinStack:v7];

  return v10;
}

- (double)stackConfigurationViewController:(id)a3 iconContentScaleForGridSizeClass:(id)a4
{
  v5 = a4;
  v6 = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  v7 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v6 stackConfigurationInteraction:self iconContentScaleForGridSizeClass:v5];
    v7 = v8;
  }

  return v7;
}

- (void)stackConfigurationViewControllerDoneButtonTapped:(id)a3
{
  v4 = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 stackConfigurationDoneButtonTapped:self];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (int64_t)stackConfigurationViewControllerIconViewComponentBackgroundViewType:(id)a3
{
  v4 = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 stackConfigurationInteractionIconViewComponentBackgroundViewType:self];
  }

  else
  {
    v5 = 4;
  }

  return v5;
}

- (void)stackConfigurationViewControllerDidReceiveUserTouch:(id)a3
{
  v4 = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 stackConfigurationInteractionDidReceiveUserTouch:self];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (BOOL)stackConfigurationViewControllerShouldDisallowLabelArea:(id)a3
{
  v4 = [(SBHStackConfigurationInteraction *)self stackConfigurationDelegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 stackConfigurationInteractionShouldDisallowLabelArea:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)iconViewSizeDidChange:(id)a3
{
  v4 = [(SBHStackConfigurationInteraction *)self transition];
  v5 = [v4 targetEndpoint];

  if (!v5)
  {

    [(SBHStackConfigurationInteraction *)self endConfigurationImmediately];
  }
}

- (CGRect)_sourceContentFrame
{
  v3 = [(SBHStackConfigurationInteraction *)self iconView];
  v4 = [(SBHStackConfigurationInteraction *)self containerView];
  [v3 iconImageFrame];
  [v3 convertRect:v4 toView:?];
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
  v3 = [(SBHStackConfigurationInteraction *)self delegate];
  [(SBHStackConfigurationInteraction *)self _sourceContentFrame];
  v4 = [(SBHStackConfigurationInteraction *)self containerView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SBHStackConfigurationInteraction *)self iconView];
  v14 = [MEMORY[0x1E69DC938] currentDevice];
  v15 = [v14 userInterfaceIdiom];

  v16 = v12;
  v50 = v6;
  v51 = v10;
  v49 = v12;
  v17 = v8;
  if ((v15 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (objc_opt_respondsToSelector())
    {
      [v3 contentBoundingRectForConfigurationInteraction:self];
    }

    v18 = [(SBHStackConfigurationInteraction *)self listLayoutProvider];
    v19 = [v18 layoutForIconLocation:@"SBIconLocationTodayView"];

    v20 = [v13 icon];
    v21 = [v20 gridSizeClass];

    SBHIconListLayoutIconImageInfoForGridSizeClass(v19, @"SBHIconGridSizeClassMedium");
    SBHIconListLayoutIconImageInfoForGridSizeClass(v19, v21);
    [(SBHStackConfigurationInteraction *)self _padApertureOutsetFromWidgetWithGridSize:v21];
    UIEdgeInsetsMakeWithEdges();
    [(SBHWidgetSettings *)self->_widgetSettings stackConfigurationContentHeightRatio];
    UIRectGetCenter();
    UIRectCenteredAboutPointScale();
    v22 = [v13 location];
    LODWORD(v20) = SBIconLocationGroupContainsLocation(@"SBIconLocationGroupTodayView", v22);

    if (v20)
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
      v59 = v4;
      _os_log_fault_impl(&dword_1BEB18000, v33, OS_LOG_TYPE_FAULT, "Stack Configuration target content frame is empty with preferredContentRect(%{public}@), allowableRect(%{public}@), containerBounds(%{public}@), containerView(%{public}@).", buf, 0x2Au);
    }

    if (v13)
    {
      [v13 window];
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

- (double)_padApertureOutsetFromWidgetWithGridSize:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = 23.0;
  if (@"SBHIconGridSizeClassMedium" != v3 && ([(__CFString *)v3 isEqualToString:?]& 1) == 0)
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

- (void)_handleTransitionWillProgressToEndState:(BOOL)a3
{
  v3 = a3;
  v12 = [(SBHStackConfigurationInteraction *)self configurationViewController];
  v5 = [v12 view];
  [v5 bs_setHitTestingDisabled:v3 ^ 1];

  if (!v3)
  {
    v6 = [v12 visiblyActiveDataSource];
    v7 = [(SBHStackConfigurationInteraction *)self iconView];
    v8 = v7;
    if (v6)
    {
      v9 = [v7 icon];
      [v9 setActiveDataSource:v6];
      v10 = [v8 customIconImageViewController];
      v11 = [v10 view];
      [v11 layoutIfNeeded];
    }

    else
    {
      [v7 setHidden:1];
    }
  }

  [v12 setEditingIcons:v3];
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