@interface SBHStackConfigurationViewController
- (BOOL)_canAddAdditionalWidgets;
- (BOOL)_widgetDataSourceIsSuggestion:(id)a3;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)iconDragManager:(id)a3 dragsSupportSystemDragsForIconView:(id)a4;
- (BOOL)iconListModel:(id)a3 isAllowedToContainIcon:(id)a4;
- (BOOL)iconView:(id)a3 supportsConfigurationForDataSource:(id)a4;
- (BOOL)iconViewDisplaysAccessories:(id)a3;
- (BOOL)iconViewDisplaysCloseBox:(id)a3;
- (BOOL)iconViewDisplaysLabel:(id)a3;
- (CGPoint)_targetContentOffsetForWidgetIndex:(unint64_t)a3;
- (CGRect)contentBoundingFrame;
- (CGSize)_stableApertureSize;
- (NSMutableDictionary)userInfo;
- (NSSet)fadingViews;
- (NSSet)materialViews;
- (NSSet)widgetBackgroundViews;
- (SBHStackConfigurationViewController)initWithConfiguration:(id)a3 iconView:(id)a4 iconViewProvider:(id)a5 listLayoutProvider:(id)a6 showsAddButton:(BOOL)a7 showsDoneButton:(BOOL)a8;
- (SBHStackConfigurationViewControllerDelegate)delegate;
- (SBHWidgetSheetViewControllerPresenter)presenter;
- (SBLeafIconDataSource)visiblyActiveDataSource;
- (UIEdgeInsets)visibleContainerInsets;
- (UIView)visiblyActiveDataSourceSnapshotView;
- (double)_expandedPageControlOutset;
- (double)_iconContentScale;
- (double)verticalMarginPercentageForConfigurationOfIconView:(id)a3;
- (id)_unraveledWidgetIconForDataSource:(id)a3 withGridSizeClass:(id)a4;
- (id)animationCoordinator;
- (id)customImageViewControllerForIconView:(id)a3;
- (id)iconDragManager:(id)a3 dragPreviewForIconView:(id)a4;
- (id)iconDragManager:(id)a3 draggedIconForIdentifier:(id)a4;
- (id)iconDragManager:(id)a3 iconDropSessionDidUpdate:(id)a4 inIconListView:(id)a5 draggedIcons:(id)a6 proposedDropProposal:(id)a7;
- (id)iconDragManager:(id)a3 targetedDragPreviewForIconView:(id)a4 item:(id)a5 session:(id)a6 previewParameters:(id)a7;
- (id)iconView:(id)a3 configurationInteractionForDataSource:(id)a4;
- (id)keepIconImageViewControllersStaticForReason:(id)a3;
- (id)makeTitledButtonOfClass:(Class)a3;
- (id)widgetInsertionRippleIconAnimatorForIcon:(id)a3 iconListView:(id)a4 withReferenceIconView:(id)a5;
- (id)windowForIconDragPreviewsForIconDragManager:(id)a3 forWindowScene:(id)a4;
- (int64_t)_iconViewComponentBackgroundViewType;
- (int64_t)iconView:(id)a3 accessoryTypeWithProposedAccessoryType:(int64_t)a4;
- (int64_t)iconView:(id)a3 userInterfaceStyleForConfigurationInteraction:(id)a4;
- (unint64_t)_sourceActiveWidgetIndex;
- (unint64_t)_widgetIndexForContentOffset:(CGPoint)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_cancelCloseConfigurationTimer;
- (void)_closeConfigurationTimerFired;
- (void)_didChangePageControlPage:(id)a3;
- (void)_didTapAddWidgetButton:(id)a3;
- (void)_didTapBackgroundView:(id)a3;
- (void)_didTapDoneButton:(id)a3;
- (void)_didToggleSmartRotate:(id)a3;
- (void)_didToggleSuggestions:(id)a3;
- (void)_iconListDidChangeWidgetIcons;
- (void)_promoteWidgetIcon:(id)a3;
- (void)_requestDismissal;
- (void)_saveConfiguration;
- (void)_scrollToWidgetIndex:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_setCloseFolderTimerIfNecessary;
- (void)_setPageControlScale:(double)a3;
- (void)_setupApertureViewInContainer:(id)a3;
- (void)_setupBackgroundInContainer:(id)a3;
- (void)_setupContentViewWithContentFrame:(CGRect)a3;
- (void)_setupEditingButtons;
- (void)_setupIconListViewCenteredInScrollView:(id)a3;
- (void)_setupLargeSizeLayoutAdjustmentsIfNecessary;
- (void)_setupMatchMoveAnimationWithSourceView:(id)a3 targetView:(id)a4;
- (void)_setupPageControlInContainer:(id)a3;
- (void)_setupScrollViewInContainer:(id)a3;
- (void)_setupTapToDismissGestureInView:(id)a3;
- (void)_updateAddWidgetButtonOperabilityForDataSourceCount;
- (void)_updateButtonSubtitleForSmartRotate:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateCurrentPageControlPage;
- (void)_updateEditingStateAnimated:(BOOL)a3;
- (void)_updateForWidgetIconCountChanged;
- (void)_updateLayoutForEditButtons;
- (void)_updatePresentationModeForIconViews;
- (void)animationCoordinator;
- (void)configureWithStackLayoutMetrics:(SBHStackLayoutMetrics *)a3;
- (void)coronaAnimationController:(id)a3 willAnimateCoronaTransitionWithAnimator:(id)a4;
- (void)didMoveToParentViewController:(id)a3;
- (void)iconAccessoryViewTapped:(id)a3;
- (void)iconCloseBoxTapped:(id)a3;
- (void)iconDragManager:(id)a3 didPerformIconDrop:(id)a4 withIcons:(id)a5 inIconListView:(id)a6;
- (void)iconDragManager:(id)a3 iconListView:(id)a4 item:(id)a5 willAnimateDropWithAnimator:(id)a6;
- (void)iconDragManager:(id)a3 iconView:(id)a4 didEndDragSession:(id)a5 withOperation:(unint64_t)a6;
- (void)iconDragManager:(id)a3 iconView:(id)a4 dragLiftAnimationDidChangeDirection:(int64_t)a5;
- (void)iconDragManager:(id)a3 iconView:(id)a4 item:(id)a5 willAnimateDragCancelWithAnimator:(id)a6;
- (void)iconDragManager:(id)a3 iconView:(id)a4 willAnimateDragLiftWithAnimator:(id)a5 session:(id)a6;
- (void)iconDragManager:(id)a3 iconView:(id)a4 willBeginDragSession:(id)a5;
- (void)iconDragManagerIconDraggingDidChange:(id)a3;
- (void)iconList:(id)a3 didAddIcon:(id)a4;
- (void)iconList:(id)a3 didMoveIcon:(id)a4;
- (void)iconList:(id)a3 didRemoveIcon:(id)a4;
- (void)iconList:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5;
- (void)iconTapped:(id)a3;
- (void)iconView:(id)a3 configurationDidEndWithInteraction:(id)a4;
- (void)iconView:(id)a3 configurationDidUpdateWithInteraction:(id)a4;
- (void)iconView:(id)a3 configurationWillBeginWithInteraction:(id)a4;
- (void)iconView:(id)a3 configurationWillEndWithInteraction:(id)a4;
- (void)leafIcon:(id)a3 didAddIconDataSource:(id)a4;
- (void)leafIcon:(id)a3 didChangeActiveDataSource:(id)a4;
- (void)loadView;
- (void)noteIconDrag:(id)a3 didChangeInIconListView:(id)a4;
- (void)noteIconDrag:(id)a3 didEnterIconListView:(id)a4;
- (void)noteIconDrag:(id)a3 didExitIconListView:(id)a4;
- (void)noteIconDragDidEnd;
- (void)scrollIconToVisible:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setEditingIcons:(BOOL)a3;
- (void)setScrollPosition:(unint64_t)a3;
- (void)setSuppressesEditingStateForListView:(BOOL)a3;
- (void)setTitledButtonsAlpha:(double)a3;
- (void)setTitledButtonsEnabled:(BOOL)a3;
- (void)stackConfigurationView:(id)a3 didHitTestView:(id)a4 atPoint:(CGPoint)a5 withEvent:(id)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willDismiss;
@end

@implementation SBHStackConfigurationViewController

- (SBHStackConfigurationViewController)initWithConfiguration:(id)a3 iconView:(id)a4 iconViewProvider:(id)a5 listLayoutProvider:(id)a6 showsAddButton:(BOOL)a7 showsDoneButton:(BOOL)a8
{
  v15 = a3;
  v16 = a4;
  v38 = a5;
  v17 = a6;
  v39.receiver = self;
  v39.super_class = SBHStackConfigurationViewController;
  v18 = [(SBHStackConfigurationViewController *)&v39 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_listLayoutProvider, a6);
    objc_storeStrong(&v19->_iconViewProvider, a5);
    objc_storeStrong(&v19->_configuration, a3);
    objc_storeStrong(&v19->_stackIconView, a4);
    v19->_titledButtonsAlpha = 1.0;
    v19->_needsAddButton = a7;
    v19->_needsDoneButton = a8;
    v19->_canDismissWhileDragging = 1;
    v20 = [v16 delegate];
    defaultIconViewDelegate = v19->_defaultIconViewDelegate;
    v19->_defaultIconViewDelegate = v20;

    v22 = +[SBHHomeScreenDomain rootSettings];
    v23 = [v22 widgetSettings];
    widgetSettings = v19->_widgetSettings;
    v19->_widgetSettings = v23;

    v25 = [(SBHScrollableIconViewInteraction *)[SBHScrollableConfiguringIconViewInteraction alloc] initWithContainer:v19];
    scrollingInteraction = v19->_scrollingInteraction;
    v19->_scrollingInteraction = &v25->super;

    v27 = objc_alloc_init(SBIconDragManager);
    iconDragManager = v19->_iconDragManager;
    v19->_iconDragManager = v27;

    [(SBIconDragManager *)v19->_iconDragManager setDelegate:v19];
    v29 = [(SBIconListLayoutProvider *)v19->_listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];
    if (objc_opt_respondsToSelector())
    {
      v30 = [v29 rootFolderVisualConfiguration];
    }

    else
    {
      v30 = objc_alloc_init(SBHRootFolderVisualConfiguration);
    }

    rootFolderVisualConfiguration = v19->_rootFolderVisualConfiguration;
    v19->_rootFolderVisualConfiguration = v30;

    v32 = v29;
    v33 = SBHIconListLayoutIconGridSizeClassSizes(v32, [v16 orientation]);

    v34 = [v16 icon];
    v35 = [v34 gridSizeClass];
    v36 = [v33 gridSizeForGridSizeClass:v35];

    v19->_stackSizeIsSmall = v36 <= [v33 gridSizeForGridSizeClass:@"SBHIconGridSizeClassSmall"];
  }

  return v19;
}

- (void)loadView
{
  v35.receiver = self;
  v35.super_class = SBHStackConfigurationViewController;
  [(SBHStackConfigurationViewController *)&v35 loadView];
  v3 = [SBHStackConfigurationView alloc];
  v4 = [(SBHStackConfigurationViewController *)self view];
  [v4 frame];
  v5 = [(SBHStackConfigurationView *)v3 initWithFrame:?];

  [(SBHStackConfigurationView *)v5 setDelegate:self];
  [(SBHStackConfigurationViewController *)self setView:v5];
  v6 = [(SBHStackConfigurationViewController *)self view];
  v7 = [(SBHWidgetSettings *)self->_widgetSettings stackConfigurationBlursBackground];
  widgetSettings = self->_widgetSettings;
  if (v7)
  {
    if ([(SBHWidgetSettings *)widgetSettings stackConfigurationUsesFolderBlur])
    {
      v9 = [MEMORY[0x1E69DC938] currentDevice];
      v10 = [v9 sbf_animatedBlurRadiusGraphicsQuality];

      v11 = @"folderExpandedBackgroundHomeSimplified";
      if (v10 == 100)
      {
        v11 = @"folderExpandedBackgroundHome";
      }

      v12 = MEMORY[0x1E69AE158];
      v13 = v11;
      v14 = SBHBundle();
      v15 = [v12 materialViewWithRecipeNamed:v13 inBundle:v14 options:0 initialWeighting:0 scaleAdjustment:1.0];
    }

    else
    {
      v18 = MEMORY[0x1E69AE158];
      v14 = SBHBundle();
      v15 = [v18 materialViewWithRecipeNamed:@"stackConfigurationBackground" inBundle:v14 options:0 initialWeighting:0 scaleAdjustment:1.0];
    }

    [v6 bounds];
    [v15 setFrame:?];
    [v15 setAutoresizingMask:18];
    v19 = SBHHomeScreenMaterialViewBackdropScaleAdjustmentHandlerForCurrentDevice();
    [v15 setBackdropScaleAdjustment:v19];

    [v15 setGroupNameBase:@"Widget-Stack-Configuration"];
    [v6 addSubview:v15];
    backgroundMaterialView = self->_backgroundMaterialView;
    self->_backgroundMaterialView = v15;
    v21 = v15;

    [(SBHWidgetSettings *)self->_widgetSettings stackConfigurationDimmingAlpha];
    v17 = v22;
  }

  else
  {
    [(SBHWidgetSettings *)widgetSettings stackConfigurationNoBlurDimmingAlpha];
    v17 = v16;
  }

  v23 = [SBHStackConfigurationBackgroundDimmingView alloc];
  [v6 bounds];
  v24 = [(SBHStackConfigurationBackgroundDimmingView *)v23 initWithFrame:?];
  [(SBHStackConfigurationBackgroundDimmingView *)v24 setAutoresizingMask:18];
  v25 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:v17];
  [(SBHStackConfigurationBackgroundDimmingView *)v24 setBackgroundColor:v25];

  [v6 addSubview:v24];
  backgroundDimmingView = self->_backgroundDimmingView;
  self->_backgroundDimmingView = v24;
  v27 = v24;

  v28 = [SBHTouchPassThroughView alloc];
  [v6 bounds];
  v29 = [(SBHTouchPassThroughView *)v28 initWithFrame:?];
  [(UIView *)v29 setAutoresizingMask:18];
  [v6 addSubview:v29];
  [(UIView *)v29 sbh_createGlassGroup];
  scalingView = self->_scalingView;
  self->_scalingView = v29;
  v31 = v29;

  v32 = [SBHTouchPassThroughView alloc];
  [(UIView *)v31 bounds];
  v33 = [(SBHTouchPassThroughView *)v32 initWithFrame:?];
  [(UIView *)v31 addSubview:v33];
  contentView = self->_contentView;
  self->_contentView = v33;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = SBHStackConfigurationViewController;
  [(SBHStackConfigurationViewController *)&v12 viewDidLoad];
  v3 = [(SBHStackConfigurationViewController *)self presenter];
  if (objc_opt_respondsToSelector())
  {
    -[SBHStackConfigurationViewController setOverrideUserInterfaceStyle:](self, "setOverrideUserInterfaceStyle:", [v3 overrideUserInterfaceStyleForPresentingWidgetSheet]);
  }

  [(SBHStackConfigurationViewController *)self contentBoundingFrame];
  [(SBHStackConfigurationViewController *)self _setupContentViewWithContentFrame:?];
  v4 = self->_contentView;
  [(SBHStackConfigurationViewController *)self _setupBackgroundInContainer:v4];
  v5 = self->_contentView;
  [(SBHStackConfigurationViewController *)self _setupApertureViewInContainer:v5];
  v6 = self->_apertureView;
  [(SBHStackConfigurationViewController *)self _setupScrollViewInContainer:v6];
  v7 = self->_scrollView;
  [(SBHStackConfigurationViewController *)self _setupIconListViewCenteredInScrollView:v7];
  v8 = self->_contentView;
  [(SBHStackConfigurationViewController *)self _setupPageControlInContainer:v8];
  v9 = [(SBHStackConfigurationViewController *)self view];
  [(SBHStackConfigurationViewController *)self _setupTapToDismissGestureInView:v9];
  [(SBHStackConfigurationViewController *)self _setupEditingButtons];
  [(SBHStackConfigurationViewController *)self _setupLargeSizeLayoutAdjustmentsIfNecessary];
  [(SBHStackConfigurationApertureView *)self->_apertureView setContentScrollView:self->_scrollView];
  [(SBHStackConfigurationApertureView *)self->_apertureView setIconImageInfo:self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, self->_iconImageInfo.continuousCornerRadius];
  [(SBHStackConfigurationApertureView *)self->_apertureView setIconListView:self->_iconListView];
  self->_scrollPositionNeed = 1;
  [(SBHStackConfigurationViewController *)self _stableApertureSize];
  [(SBHStackConfigurationBackgroundViewController *)self->_backgroundViewController setApertureSize:?];
  [(SBHStackConfigurationBackgroundDimmingView *)self->_backgroundDimmingView setIconListView:self->_iconListView];
  [(UIPageControl *)self->_pageControl setAccessibilityIdentifier:@"stack-configuration-page-control"];
  [(SBHStackConfigurationApertureView *)self->_apertureView setAccessibilityIdentifier:@"stack-configuration-aperture-view"];
  v10 = [(CCUILabeledRoundButtonViewController *)self->_smartRotateButtonViewController button];
  [v10 setAccessibilityIdentifier:@"stack-configuration-smart-rotate-button"];

  v11 = [(CCUILabeledRoundButtonViewController *)self->_suggestionsButtonViewController button];

  [v11 setAccessibilityIdentifier:@"stack-configuration-suggestions-button"];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBHStackConfigurationViewController;
  [(SBHStackConfigurationViewController *)&v4 viewWillAppear:a3];
  [(SBHStackConfigurationViewController *)self _updatePresentationModeForIconViews];
  [(SBIconListView *)self->_iconListView showAllIcons];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBHStackConfigurationViewController;
  [(SBHStackConfigurationViewController *)&v3 viewDidLayoutSubviews];
  [(SBHStackConfigurationViewController *)self _updateLayoutForEditButtons];
  if (self->_scrollPositionNeed)
  {
    [(SBHStackConfigurationViewController *)self _scrollToWidgetIndex:[(SBHStackConfigurationViewController *)self _sourceActiveWidgetIndex] animated:0];
    self->_scrollPositionNeed = 0;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SBHStackConfigurationViewController;
  [(SBHStackConfigurationViewController *)&v7 viewDidAppear:a3];
  v4 = [(SBHStackConfigurationViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 sb_coronaAnimationController];

  [v6 addParticipant:self];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SBHStackConfigurationViewController;
  [(SBHStackConfigurationViewController *)&v7 viewDidDisappear:a3];
  v4 = [(SBHStackConfigurationViewController *)self view];
  v5 = [v4 window];
  v6 = [v5 sb_coronaAnimationController];

  [v6 removeParticipant:self];
}

- (void)didMoveToParentViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBHStackConfigurationViewController;
  [(SBHStackConfigurationViewController *)&v7 didMoveToParentViewController:?];
  if (a3)
  {
    v5 = [(SBHStackConfigurationViewController *)self view];
    v6 = [v5 window];

    [(SBHStackConfigurationViewController *)self _setupMatchMoveAnimationWithSourceView:v6 targetView:self->_backgroundDimmingView];
    [(SBHStackConfigurationViewController *)self _setupMatchMoveAnimationWithSourceView:v6 targetView:self->_backgroundMaterialView];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if (__sb__runningInSpringBoard())
  {
    v2 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    v2 = [v3 userInterfaceIdiom] == 1;
  }

  if (v2)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)setEditingIcons:(BOOL)a3
{
  if (self->_editingIcons != a3)
  {
    self->_editingIcons = a3;
    [(SBHStackConfigurationViewController *)self _updateEditingStateAnimated:1];
  }
}

- (SBLeafIconDataSource)visiblyActiveDataSource
{
  v3 = [(SBIconView *)self->_stackIconView icon];
  if ([v3 iconDataSourceCount])
  {
    [(BSUIScrollView *)self->_scrollView contentOffset];
    v4 = [(SBHStackConfigurationViewController *)self _widgetIndexForContentOffset:?];
    v5 = [v3 iconDataSourceCount];
    if (v5 - 1 < v4)
    {
      v4 = v5 - 1;
    }

    v6 = [v3 iconDataSources];
    v7 = [v6 objectAtIndex:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)animationCoordinator
{
  if (([(SBHStackConfigurationViewController *)self isViewLoaded]& 1) == 0)
  {
    v4 = SBLogIcon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SBHStackConfigurationViewController *)self animationCoordinator];
    }

    [(SBHStackConfigurationViewController *)self loadViewIfNeeded];
  }

  return self;
}

- (id)keepIconImageViewControllersStaticForReason:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E698E778]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __83__SBHStackConfigurationViewController_keepIconImageViewControllersStaticForReason___block_invoke;
  v14 = &unk_1E808A7B8;
  objc_copyWeak(&v15, &location);
  v6 = [v5 initWithIdentifier:@"KeepStackIconImagesStatic" forReason:v4 invalidationBlock:&v11];
  keepStaticAssertions = self->_keepStaticAssertions;
  if (!keepStaticAssertions)
  {
    v8 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v9 = self->_keepStaticAssertions;
    self->_keepStaticAssertions = v8;

    keepStaticAssertions = self->_keepStaticAssertions;
  }

  [(NSHashTable *)keepStaticAssertions addObject:v6, v11, v12, v13, v14];
  [(SBHStackConfigurationViewController *)self _updatePresentationModeForIconViews];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v6;
}

void __83__SBHStackConfigurationViewController_keepIconImageViewControllersStaticForReason___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[161] removeObject:v5];
    [v4 _updatePresentationModeForIconViews];
  }
}

- (void)scrollIconToVisible:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  iconListView = self->_iconListView;
  v10 = a3;
  v11 = [(SBIconListView *)iconListView icons];
  v12 = [v11 indexOfObject:v10];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__SBHStackConfigurationViewController_scrollIconToVisible_animated_completion___block_invoke;
    aBlock[3] = &unk_1E808A0B8;
    v15 = v8;
    v13 = _Block_copy(aBlock);
    [(SBHStackConfigurationViewController *)self _scrollToWidgetIndex:v12 animated:v5 completion:v13];
  }
}

uint64_t __79__SBHStackConfigurationViewController_scrollIconToVisible_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (NSMutableDictionary)userInfo
{
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = self->_userInfo;
    self->_userInfo = v4;

    userInfo = self->_userInfo;
  }

  return userInfo;
}

- (void)setSuppressesEditingStateForListView:(BOOL)a3
{
  if (self->_suppressesEditingStateForListView != a3)
  {
    self->_suppressesEditingStateForListView = a3;
    [(SBHStackConfigurationViewController *)self _updateEditingStateAnimated:1];
  }
}

- (void)setTitledButtonsAlpha:(double)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_titledButtonsAlpha != a3)
  {
    self->_titledButtonsAlpha = a3;
    v5 = SBLogIcon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134349056;
      v7 = a3;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "SBHStackConfigurationViewController setTitledButtonsAlpha: %{public}f", &v6, 0xCu);
    }

    [(SBTitledHomeScreenButton *)self->_doneButton setAlpha:a3];
    [(SBTitledHomeScreenButton *)self->_addButton setAlpha:a3];
  }
}

- (NSSet)materialViews
{
  v3 = [MEMORY[0x1E695DFA8] set];
  [v3 bs_safeAddObject:self->_backgroundMaterialView];

  return v3;
}

- (NSSet)fadingViews
{
  v3 = [MEMORY[0x1E695DFA8] set];
  [v3 addObject:self->_backgroundDimmingView];
  v4 = [(CCUILabeledRoundButtonViewController *)self->_smartRotateButtonViewController view];
  [v3 addObject:v4];

  v5 = [(CCUILabeledRoundButtonViewController *)self->_suggestionsButtonViewController view];
  [v3 addObject:v5];

  v6 = [(SBHStackConfigurationViewController *)self doneButton];
  [v3 bs_safeAddObject:v6];

  v7 = [(SBHStackConfigurationViewController *)self addButton];
  [v3 bs_safeAddObject:v7];

  return v3;
}

- (NSSet)widgetBackgroundViews
{
  v3 = [MEMORY[0x1E695DFA8] set];
  iconListView = self->_iconListView;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__SBHStackConfigurationViewController_widgetBackgroundViews__block_invoke;
  v7[3] = &unk_1E8089928;
  v5 = v3;
  v8 = v5;
  [(SBIconListView *)iconListView enumerateDisplayedIconViewsUsingBlock:v7];

  return v5;
}

void __60__SBHStackConfigurationViewController_widgetBackgroundViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 customIconImageViewController];
  v4 = objc_opt_class();
  v9 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = *(a1 + 32);
  v8 = [v6 backgroundView];

  [v7 bs_safeAddObject:v8];
}

- (UIView)visiblyActiveDataSourceSnapshotView
{
  v3 = [(SBHStackConfigurationViewController *)self visiblyActiveDataSource];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = &v15;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8;
  v19 = __Block_byref_object_dispose__8;
  v20 = 0;
  iconListView = self->_iconListView;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __74__SBHStackConfigurationViewController_visiblyActiveDataSourceSnapshotView__block_invoke;
  v12 = &unk_1E8089768;
  v13 = v3;
  v14 = &v15;
  [(SBIconListView *)iconListView enumerateDisplayedIconViewsUsingBlock:&v9];
  v7 = v16[5];
  if (v7)
  {
    v5 = [v16[5] iconImageSnapshotView];
    [v5 setClipsToBounds:1];
  }

  _Block_object_dispose(&v15, 8);
  if (!v7)
  {
LABEL_5:
    v5 = 0;
  }

  return v5;
}

void __74__SBHStackConfigurationViewController_visiblyActiveDataSourceSnapshotView__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  v6 = [v11 icon];
  if ([v6 isWidgetIcon])
  {
    v7 = [v6 activeDataSource];
    v8 = [v7 uniqueIdentifier];
    v9 = [*(a1 + 32) uniqueIdentifier];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a3 = 1;
    }
  }
}

- (void)configureWithStackLayoutMetrics:(SBHStackLayoutMetrics *)a3
{
  v5 = *&a3->var1.height;
  v34[0] = *&a3->var0;
  v34[1] = v5;
  v6 = *&a3->var4;
  v34[2] = *&a3->var2.y;
  v34[3] = v6;
  v33[0] = SBHStackLayoutMetricsUnspecified;
  v33[1] = *&qword_1BEE88810;
  v33[2] = xmmword_1BEE88820;
  v33[3] = *&qword_1BEE88830;
  v7 = SBHStackLayoutMetricsEqualToMetrics(v34, v33);
  if (v7)
  {
    [(SBHStackConfigurationViewController *)self _expandedPageControlOutset];
    var3 = 1.0;
  }

  else
  {
    var3 = a3->var3;
    var5 = a3->var5;
  }

  [(NSLayoutConstraint *)self->_pageControlOutsetConstraint setConstant:var5];
  var4 = 1.0;
  if (!v7)
  {
    var4 = a3->var4;
  }

  [(UIPageControl *)self->_pageControl setAlpha:var4];
  [(SBHStackConfigurationViewController *)self _setPageControlScale:var3];
  var0 = a3->var0;
  [(SBHStackConfigurationViewController *)self _iconContentScale];
  width = SBHSizeScaled(self->_scaledIconSpacing.width, self->_scaledIconSpacing.height, var0 / v12);
  if (v7)
  {
    width = self->_scaledIconSpacing.width;
    height = self->_scaledIconSpacing.height;
  }

  [(SBIconListView *)self->_iconListView setIconSpacing:width, height];
  iconListView = self->_iconListView;
  if (v7)
  {
    [(SBHStackConfigurationViewController *)self _iconContentScale];
    [(SBIconListView *)iconListView setIconContentScale:?];
    v16 = [(SBHStackConfigurationViewController *)self _shouldUseConcentricCornersWhenExpanded];
  }

  else
  {
    [(SBIconListView *)self->_iconListView setIconContentScale:a3->var0];
    v16 = 1;
  }

  [(SBHStackConfigurationApertureView *)self->_apertureView setUsesConcentricCorners:v16];
  [(SBHStackConfigurationViewController *)self _stableApertureSize];
  v32 = v17;
  v19 = v18;
  v21 = a3->var1.width;
  v20 = a3->var1.height;
  [(NSLayoutConstraint *)self->_apertureHeightConstraint multiplier];
  v23 = v22;
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
  if (!v7)
  {
    v26 = v20 - v19;
    v25 = v21 - v32;
    x = a3->var2.x;
    [(SBHStackConfigurationApertureView *)self->_apertureView center];
    v24 = x - v29;
    y = a3->var2.y;
    [(SBHStackConfigurationApertureView *)self->_apertureView center];
    v27 = y - v31;
  }

  [(NSLayoutConstraint *)self->_apertureSizeConstraint setConstant:v25];
  [(NSLayoutConstraint *)self->_apertureHeightConstraint setConstant:v26 - v25 * v23];
  [(NSLayoutConstraint *)self->_apertureCenterXConstraint setConstant:v24];
  [(NSLayoutConstraint *)self->_apertureCenterYConstraint setConstant:v27];
  [(SBHStackConfigurationApertureView *)self->_apertureView layoutIfNeeded];
}

- (void)setScrollPosition:(unint64_t)a3
{
  if (self->_scrollPositionNeed != a3)
  {
    self->_scrollPositionNeed = a3;
    v4 = [(SBHStackConfigurationViewController *)self view];
    [v4 setNeedsLayout];
  }
}

- (void)_setupContentViewWithContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v24[4] = *MEMORY[0x1E69E9840];
  if (a3.size.width == *MEMORY[0x1E695F060] && a3.size.height == *(MEMORY[0x1E695F060] + 8))
  {
    NSLog(&cfstr_CanTSetupWithA.isa, a2);
  }

  v9 = [(UIView *)self->_contentView superview];
  v10 = self->_contentView;
  [(UIView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = MEMORY[0x1E696ACD8];
  v23 = [(UIView *)v10 widthAnchor];
  v22 = [v23 constraintEqualToConstant:width];
  v24[0] = v22;
  v11 = [(UIView *)v10 heightAnchor];
  v12 = [v11 constraintEqualToConstant:height];
  v24[1] = v12;
  v13 = [(UIView *)v10 topAnchor];
  v21 = v9;
  v14 = [v9 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:y];
  v24[2] = v15;
  v16 = [(UIView *)v10 leftAnchor];
  v17 = [v9 leftAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:x];
  v24[3] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [v20 activateConstraints:v19];
}

- (void)_setupBackgroundInContainer:(id)a3
{
  v45[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHStackConfigurationViewController *)self traitCollection];
  v6 = [v5 userInterfaceStyle] == 1;

  v7 = SBHBundle();
  v8 = [MEMORY[0x1E69DC888] systemBlueColor];
  v9 = self->_configuration;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__SBHStackConfigurationViewController__setupBackgroundInContainer___block_invoke;
  aBlock[3] = &unk_1E808C7C8;
  v39 = v9;
  v40 = v7;
  v43 = v6;
  v41 = v8;
  v42 = self;
  v37 = v8;
  v36 = v7;
  v35 = v9;
  v34 = _Block_copy(aBlock);
  v10 = v34[2](v34, 1);
  v11 = v34[2](v34, 0);
  smartRotateButtonViewController = self->_smartRotateButtonViewController;
  self->_smartRotateButtonViewController = v10;
  v33 = v10;

  suggestionsButtonViewController = self->_suggestionsButtonViewController;
  self->_suggestionsButtonViewController = v11;
  v32 = v11;

  [(SBHStackConfigurationViewController *)self _updateButtonSubtitleForSmartRotate:1 animated:0];
  [(SBHStackConfigurationViewController *)self _updateButtonSubtitleForSmartRotate:0 animated:0];
  v31 = [[SBHStackConfigurationBackgroundViewController alloc] initWithNibName:0 bundle:0];
  [(SBHStackConfigurationViewController *)self bs_addChildViewController:v31 withSuperview:v4];
  v45[0] = v33;
  v45[1] = v32;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  [(SBHStackConfigurationBackgroundViewController *)v31 setFooterButtons:v14];

  v15 = [(SBHStackConfigurationBackgroundViewController *)v31 view];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = MEMORY[0x1E696ACD8];
  v30 = [v15 topAnchor];
  v29 = [v4 topAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v44[0] = v28;
  v27 = [v15 bottomAnchor];
  v26 = [v4 bottomAnchor];
  v16 = [v27 constraintEqualToAnchor:v26];
  v44[1] = v16;
  v17 = [v15 leadingAnchor];
  v18 = [v4 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v44[2] = v19;
  v20 = [v15 trailingAnchor];
  v21 = [v4 trailingAnchor];

  v22 = [v20 constraintEqualToAnchor:v21];
  v44[3] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];
  [v25 activateConstraints:v23];

  backgroundViewController = self->_backgroundViewController;
  self->_backgroundViewController = v31;
}

id __67__SBHStackConfigurationViewController__setupBackgroundInContainer___block_invoke(uint64_t a1, int a2)
{
  v4 = @"suggestion-icon";
  if (a2)
  {
    v4 = @"ranking-icon";
    v5 = @"STACK_CONFIGURATION_ALLOW_SUGGESTIONS";
  }

  else
  {
    v5 = @"STACK_CONFIGURATION_ALLOW_EXTERNAL_SUGGESTIONS";
  }

  v6 = v4;
  v7 = v5;
  v8 = *(a1 + 32);
  if (a2)
  {
    v9 = [v8 allowsSuggestions];
  }

  else
  {
    v9 = [v8 allowsExternalSuggestions];
  }

  v10 = v9;
  v11 = &selRef__didToggleSmartRotate_;
  if (!a2)
  {
    v11 = &selRef__didToggleSuggestions_;
  }

  v12 = *v11;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v13 = getCCUICAPackageDescriptionClass_softClass;
  v32 = getCCUICAPackageDescriptionClass_softClass;
  if (!getCCUICAPackageDescriptionClass_softClass)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getCCUICAPackageDescriptionClass_block_invoke;
    v27 = &unk_1E8089848;
    v28 = &v29;
    __getCCUICAPackageDescriptionClass_block_invoke(&v24);
    v13 = v30[3];
  }

  v14 = v13;
  _Block_object_dispose(&v29, 8);
  v15 = [v13 descriptionForPackageNamed:v6 inBundle:*(a1 + 40)];
  [v15 setFlipsForRightToLeftLayoutDirection:1];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v16 = getCCUILabeledRoundButtonViewControllerClass_softClass;
  v32 = getCCUILabeledRoundButtonViewControllerClass_softClass;
  if (!getCCUILabeledRoundButtonViewControllerClass_softClass)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getCCUILabeledRoundButtonViewControllerClass_block_invoke;
    v27 = &unk_1E8089848;
    v28 = &v29;
    __getCCUILabeledRoundButtonViewControllerClass_block_invoke(&v24);
    v16 = v30[3];
  }

  v17 = v16;
  _Block_object_dispose(&v29, 8);
  v18 = [[v16 alloc] initWithGlyphPackageDescription:v15 highlightColor:*(a1 + 48) useLightStyle:*(a1 + 64)];
  v19 = [v18 button];
  [v19 addTarget:*(a1 + 56) action:v12 forControlEvents:64];

  [v18 setGlyphState:@"State 1"];
  v20 = SBHBundle();
  v21 = [v20 localizedStringForKey:v7 value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  [v18 setTitle:v21];

  [v18 setLabelsVisible:1];
  [v18 setEnabled:v10];
  if (objc_opt_respondsToSelector())
  {
    [v18 setUseTintedGlassAppearance:1];
  }

  v22 = [v18 button];
  [v22 layoutIfNeeded];

  return v18;
}

- (int64_t)_iconViewComponentBackgroundViewType
{
  v3 = [(SBHStackConfigurationViewController *)self delegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 stackConfigurationViewControllerIconViewComponentBackgroundViewType:self];
  }

  else
  {
    v4 = 4;
  }

  return v4;
}

- (void)_setupApertureViewInContainer:(id)a3
{
  v35[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHStackConfigurationViewController *)self _iconViewComponentBackgroundViewType];
  v6 = [SBHStackConfigurationApertureView alloc];
  v7 = [(SBHStackConfigurationApertureView *)v6 initWithFrame:v5 iconViewBackgroundType:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(SBHStackConfigurationApertureView *)v7 setUsesConcentricCorners:[(SBHStackConfigurationViewController *)self _shouldUseConcentricCornersWhenExpanded]];
  [(SBHStackConfigurationApertureView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SBHStackConfigurationApertureView *)v7 setClipsToBounds:1];
  [(SBHStackConfigurationViewController *)self contentBoundingFrame];
  if (v8 <= v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10 * 0.744 / v8;
  v12 = [(SBHStackConfigurationApertureView *)v7 widthAnchor];
  v13 = [v4 widthAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 multiplier:v11];

  v15 = [(SBHStackConfigurationApertureView *)v7 heightAnchor];
  v16 = [(SBHStackConfigurationApertureView *)v7 widthAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 multiplier:1.0];

  v18 = [(SBHStackConfigurationApertureView *)v7 centerXAnchor];
  v19 = [v4 centerXAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  v21 = [(SBHStackConfigurationApertureView *)v7 centerYAnchor];
  v22 = [v4 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  [v4 addSubview:v7];
  v24 = MEMORY[0x1E696ACD8];
  v35[0] = v20;
  v35[1] = v23;
  v35[2] = v17;
  v35[3] = v14;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
  [v24 activateConstraints:v25];

  apertureCenterXConstraint = self->_apertureCenterXConstraint;
  self->_apertureCenterXConstraint = v20;
  v27 = v20;

  apertureCenterYConstraint = self->_apertureCenterYConstraint;
  self->_apertureCenterYConstraint = v23;
  v29 = v23;

  apertureHeightConstraint = self->_apertureHeightConstraint;
  self->_apertureHeightConstraint = v17;
  v31 = v17;

  apertureSizeConstraint = self->_apertureSizeConstraint;
  self->_apertureSizeConstraint = v14;
  v33 = v14;

  apertureView = self->_apertureView;
  self->_apertureView = v7;
}

- (void)_setupScrollViewInContainer:(id)a3
{
  v24[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E698E808];
  v5 = a3;
  v6 = [v4 alloc];
  [v5 bounds];
  v7 = [v6 initWithFrame:?];
  [(BSUIScrollView *)v7 setContentInsetAdjustmentBehavior:2];
  [(BSUIScrollView *)v7 setDecelerationRate:*MEMORY[0x1E69DE3A0]];
  [(BSUIScrollView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BSUIScrollView *)v7 setShowsHorizontalScrollIndicator:0];
  [(BSUIScrollView *)v7 setShowsVerticalScrollIndicator:0];
  [(BSUIScrollView *)v7 setAlwaysBounceVertical:1];
  [(BSUIScrollView *)v7 setClipsToBounds:0];
  [(BSUIScrollView *)v7 setDelegate:self];
  [v5 addSubview:v7];
  v18 = MEMORY[0x1E696ACD8];
  v22 = [v5 topAnchor];
  v21 = [(BSUIScrollView *)v7 topAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v24[0] = v20;
  v19 = [v5 bottomAnchor];
  v8 = [(BSUIScrollView *)v7 bottomAnchor];
  v9 = [v19 constraintEqualToAnchor:v8];
  v24[1] = v9;
  v10 = [v5 leadingAnchor];
  v11 = [(BSUIScrollView *)v7 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v24[2] = v12;
  v13 = [v5 trailingAnchor];

  v14 = [(BSUIScrollView *)v7 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v24[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [v18 activateConstraints:v16];

  scrollView = self->_scrollView;
  self->_scrollView = v7;
}

- (void)_setupIconListViewCenteredInScrollView:(id)a3
{
  v116 = *MEMORY[0x1E69E9840];
  v98 = a3;
  v4 = [(SBIconView *)self->_stackIconView icon];
  v5 = [v4 gridSizeClass];

  v6 = [(SBHStackConfiguration *)self->_configuration dataSources];
  v7 = [(SBIconView *)self->_stackIconView location];
  v8 = [(SBIconListLayoutProvider *)self->_listLayoutProvider layoutForIconLocation:v7];
  [v8 iconImageInfoForGridSizeClass:v5];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = SBHIconListLayoutEditingAnimationStrengthForGridSizeClass(v8, v5);
  [(SBHStackConfigurationViewController *)self _iconContentScale];
  v19 = v18;
  v20 = MEMORY[0x1E695F060];
  v21 = [MEMORY[0x1E69DC938] currentDevice];
  v22 = [v21 userInterfaceIdiom];

  v97 = v8;
  v94 = v7;
  v92 = v14;
  v93 = v12;
  v91 = v16;
  v23 = v10;
  if ((v22 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v24 = SBHIconListLayoutIconImageInfoForGridSizeClass(v8, @"SBHIconGridSizeClassSmall");
    v25 = SBHIconListLayoutIconImageInfoForGridSizeClass(v8, @"SBHIconGridSizeClassMedium") + v24 * -2.0;
    if (objc_opt_respondsToSelector())
    {
      if (([(SBIconViewDelegate *)self->_defaultIconViewDelegate iconViewDisplaysLabel:self->_stackIconView]& 1) != 0)
      {
        v26 = v25 + v25;
      }

      else
      {
        v26 = v25;
      }
    }

    else
    {
      v26 = v25 + v25;
    }
  }

  else
  {
    v27 = [(SBIconListLayoutProvider *)self->_listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];
    SBHIconListLayoutListIconSpacing(v27, 1);
    v26 = v28;
  }

  v29 = *v20;
  v30 = v17 / v19;
  [(SBHStackConfigurationViewController *)self _iconContentScale];
  v32 = v26 * v31;
  v96 = objc_alloc_init(SBHIconGridSizeClassSizeMap);
  v33 = [(SBHIconGridSizeClassSizeMap *)v96 gridSizeForGridSizeClass:v5];
  columns = v33.columns;
  v35 = HIWORD(*&v33);
  v36 = [(SBHWidgetSettings *)self->_widgetSettings maximumWidgetsInAStack];
  v37 = columns;
  v38 = v36 * v35;
  v39 = [[SBIconListModel alloc] initWithFolder:0 gridSize:columns | (v36 << 16)];
  [(SBIconListModel *)v39 setDelegate:self];
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  v108 = 0u;
  v40 = v6;
  v41 = [v40 countByEnumeratingWithState:&v108 objects:v115 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v109;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v109 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [(SBHStackConfigurationViewController *)self _unraveledWidgetIconForDataSource:*(*(&v108 + 1) + 8 * i) withGridSizeClass:v5];
        v46 = [(SBIconListModel *)v39 addIcon:v45];
      }

      v42 = [v40 countByEnumeratingWithState:&v108 objects:v115 count:16];
    }

    while (v42);
  }

  [(SBIconListModel *)v39 addListObserver:self];
  v47 = [(SBIconView *)self->_stackIconView icon];
  [v47 addObserver:self];

  v48 = *MEMORY[0x1E69DDCE0];
  v49 = *(MEMORY[0x1E69DDCE0] + 8);
  v50 = *(MEMORY[0x1E69DDCE0] + 16);
  v51 = *(MEMORY[0x1E69DDCE0] + 24);
  v52 = objc_alloc_init(SBIconListGridLayoutConfiguration);
  [(SBIconListGridLayoutConfiguration *)v52 setNumberOfPortraitRows:v38];
  [(SBIconListGridLayoutConfiguration *)v52 setNumberOfPortraitColumns:v37];
  [(SBIconListGridLayoutConfiguration *)v52 setPortraitLayoutInsets:v48, v49, v50, v51];
  [(SBIconListGridLayoutConfiguration *)v52 setIconGridSizeClassSizes:v96];
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __78__SBHStackConfigurationViewController__setupIconListViewCenteredInScrollView___block_invoke;
  v102[3] = &unk_1E808C7F0;
  v53 = v52;
  v103 = v53;
  v104 = v23;
  v105 = v93;
  v106 = v92;
  v107 = v91;
  SBHEnumerateIconGridSizeClasses(v102);
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __78__SBHStackConfigurationViewController__setupIconListViewCenteredInScrollView___block_invoke_2;
  v99[3] = &unk_1E808C818;
  v54 = v53;
  v100 = v54;
  v101 = v30;
  SBHEnumerateIconGridSizeClasses(v99);
  v89 = [[SBHIconGridSizeClassSet alloc] initWithGridSizeClass:v5];
  [(SBIconListGridLayoutConfiguration *)v54 setSupportedIconGridSizeClasses:?];
  v55 = [[SBIconListGridLayout alloc] initWithLayoutConfiguration:v54];
  v56 = [v97 iconAccessoryVisualConfiguration];
  v57 = [(SBIconListGridLayout *)v55 layoutConfiguration];
  v87 = v56;
  [v57 setIconAccessoryVisualConfiguration:v56];

  v58 = [SBHCustomIconListLayoutProvider alloc];
  v113 = @"SBIconLocationStackConfiguration";
  v114 = v55;
  v88 = v55;
  v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
  v60 = [(SBHCustomIconListLayoutProvider *)v58 initWithListLayouts:v59];

  v86 = v60;
  v61 = [(SBIconListView *)[SBHStackConfigurationIconListView alloc] initWithModel:v39 layoutProvider:v60 iconLocation:@"SBIconLocationStackConfiguration" orientation:1 iconViewProvider:self->_iconViewProvider];
  [(SBHStackConfigurationIconListView *)v61 setIconViewDelegate:self];
  [(SBIconListView *)v61 hideAllIcons];
  [(SBHStackConfigurationViewController *)self _iconContentScale];
  [(SBIconListView *)v61 setIconContentScale:?];
  [(SBIconListView *)v61 setAutomaticallyAdjustsLayoutMetricsToFit:0];
  [(SBIconListView *)v61 setIconSpacing:v29, v32];
  v62 = [(SBIconView *)self->_stackIconView legibilitySettings];
  [(SBIconListView *)v61 setLegibilitySettings:v62];

  v63 = [(SBHStackConfigurationViewController *)self delegate];
  v90 = v54;
  v95 = v63;
  if (objc_opt_respondsToSelector())
  {
    if ([v63 stackConfigurationViewControllerShouldDisallowLabelArea:self])
    {
      v64 = 18;
    }

    else
    {
      v64 = 16;
    }
  }

  else
  {
    v64 = 16;
  }

  [(SBIconListView *)v61 setIconViewConfigurationOptions:v64];
  [(SBIconListView *)v61 setBoundsSizeTracksContentSize:1];
  [(SBIconListView *)v61 setDragDelegate:self->_iconDragManager];
  [(SBHStackConfigurationIconListView *)v61 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v98 addSubview:v61];
  v79 = MEMORY[0x1E696ACD8];
  v85 = [(SBHStackConfigurationIconListView *)v61 topAnchor];
  v84 = [v98 topAnchor];
  v83 = [v85 constraintEqualToAnchor:v84];
  v112[0] = v83;
  v82 = [(SBHStackConfigurationIconListView *)v61 bottomAnchor];
  v81 = [v98 bottomAnchor];
  v80 = [v82 constraintEqualToAnchor:v81];
  v112[1] = v80;
  v78 = [(SBHStackConfigurationIconListView *)v61 centerXAnchor];
  v77 = [v98 centerXAnchor];
  v76 = [v78 constraintEqualToAnchor:v77];
  v112[2] = v76;
  v75 = [(SBHStackConfigurationIconListView *)v61 trailingAnchor];
  v74 = [v98 trailingAnchor];
  v73 = [v75 constraintLessThanOrEqualToAnchor:v74];
  v112[3] = v73;
  v65 = [(SBHStackConfigurationIconListView *)v61 leadingAnchor];
  v66 = [v98 leadingAnchor];
  v67 = [v65 constraintGreaterThanOrEqualToAnchor:v66];
  v112[4] = v67;
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:5];
  [v79 activateConstraints:v68];

  [(SBIconListView *)v61 intrinsicContentSize];
  [v98 setContentSize:?];
  self->_iconImageInfo.size.width = v23;
  self->_iconImageInfo.size.height = v93;
  self->_iconImageInfo.scale = v92;
  self->_iconImageInfo.continuousCornerRadius = v91;
  self->_scaledIconSpacing.width = v29;
  self->_scaledIconSpacing.height = v32;
  objc_storeStrong(&self->_iconListView, v61);
  if ([v97 conformsToProtocol:&unk_1F3DF74A0])
  {
    v69 = [[SBHCustomIconListLayout alloc] initWithBaseListLayout:v97];
    customLayout = self->_customLayout;
    self->_customLayout = v69;

    [(SBIconListView *)self->_iconListView setLayoutDelegate:self->_customLayout];
  }

  rootListModel = self->_rootListModel;
  self->_rootListModel = v39;
  v72 = v39;
}

- (void)_setupPageControlInContainer:(id)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCD10];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [(UIPageControl *)v6 addTarget:self action:sel__didChangePageControlPage_ forControlEvents:4096];
  [(UIPageControl *)v6 setAllowsContinuousInteraction:0];
  [(UIPageControl *)v6 setHidesForSinglePage:1];
  [(UIPageControl *)v6 setDirection:3];
  v7 = [(SBIconView *)self->_stackIconView legibilitySettings];
  v8 = [v7 primaryColor];
  [(UIPageControl *)v6 setCurrentPageIndicatorTintColor:v8];

  v9 = [v7 secondaryColor];
  [(UIPageControl *)v6 setPageIndicatorTintColor:v9];

  v10 = [(SBHStackConfiguration *)self->_configuration dataSources];
  v11 = [v10 count];

  [(UIPageControl *)v6 setNumberOfPages:v11];
  [(UIPageControl *)v6 _setPreferredNumberOfVisibleIndicators:[(SBHWidgetSettings *)self->_widgetSettings maximumWidgetsInAStack]];
  CGAffineTransformMakeScale(&v25, 1.0, 1.0);
  [(UIPageControl *)v6 setTransform:&v25];
  [(UIPageControl *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addSubview:v6];

  v12 = self->_apertureView;
  v13 = [(UIPageControl *)v6 centerXAnchor];
  v14 = [(SBHStackConfigurationApertureView *)v12 trailingAnchor];
  [(SBHStackConfigurationViewController *)self _expandedPageControlOutset];
  v15 = [v13 constraintEqualToAnchor:v14 constant:?];

  v16 = MEMORY[0x1E696ACD8];
  v17 = [(UIPageControl *)v6 centerYAnchor];
  v18 = [(SBHStackConfigurationApertureView *)v12 centerYAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v26[0] = v19;
  v26[1] = v15;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  [v16 activateConstraints:v20];

  pageControlOutsetConstraint = self->_pageControlOutsetConstraint;
  self->_pageControlOutsetConstraint = v15;
  v22 = v15;

  pageControl = self->_pageControl;
  self->_pageControl = v6;
  v24 = v6;
}

- (id)_unraveledWidgetIconForDataSource:(id)a3 withGridSizeClass:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_respondsToSelector();
  v9 = [SBWidgetIcon alloc];
  v10 = v9;
  if (v8)
  {
    v11 = [v7 uniqueIdentifier];
    v12 = [(SBWidgetIcon *)v10 initWithLeafIdentifier:v11 applicationBundleID:0];
  }

  else
  {
    v12 = [(SBLeafIcon *)v9 initWithUniqueLeafIdentifier];
  }

  [(SBLeafIcon *)v12 addIconDataSource:v7];

  [(SBIcon *)v12 setGridSizeClass:v6];
  [(SBLeafIcon *)v12 addObserver:self];

  return v12;
}

- (void)_setupTapToDismissGestureInView:(id)a3
{
  v4 = MEMORY[0x1E69DD060];
  v5 = a3;
  v6 = [[v4 alloc] initWithTarget:self action:sel__didTapBackgroundView_];
  [v6 setDelegate:self];
  [v6 setDelaysTouchesBegan:0];
  [v6 setDelaysTouchesEnded:0];
  [v5 addGestureRecognizer:v6];
}

- (void)_setupLargeSizeLayoutAdjustmentsIfNecessary
{
  v3 = [(SBIconView *)self->_stackIconView icon];
  v24 = [v3 gridSizeClass];

  stackSizeIsSmall = self->_stackSizeIsSmall;
  if (v24 == @"SBHIconGridSizeClassMedium")
  {
    v5 = 0;
    if (self->_stackSizeIsSmall)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = [(__CFString *)v24 isEqualToString:?]^ 1;
    if (stackSizeIsSmall)
    {
      goto LABEL_14;
    }
  }

  v6 = self->_apertureView;
  width = self->_iconImageInfo.size.width;
  height = self->_iconImageInfo.size.height;
  [(SBHStackConfigurationViewController *)self contentBoundingFrame];
  v10 = v9;
  [(SBHStackConfigurationViewController *)self _iconContentScale];
  v12 = v11;
  v13 = (width + v10) * 0.5;
  if (v12 < 0.9)
  {
    v13 = width;
  }

  v14 = v13 / v10;
  [(NSLayoutConstraint *)self->_apertureSizeConstraint setActive:0];
  v15 = [(SBHStackConfigurationApertureView *)v6 widthAnchor];
  v16 = [(SBHStackConfigurationApertureView *)v6 superview];
  v17 = [v16 widthAnchor];
  v18 = [v15 constraintEqualToAnchor:v17 multiplier:v14];

  [v18 setActive:1];
  objc_storeStrong(&self->_apertureSizeConstraint, v18);
  if (v5)
  {
    [(NSLayoutConstraint *)self->_apertureHeightConstraint setActive:0];
    if (v24 == @"SBHIconGridSizeClassExtraLarge" || [(__CFString *)v24 isEqualToString:?])
    {
      v19 = (v10 * v14 - width * v12 + height * v12) / (v10 * v14);
    }

    else
    {
      v19 = height / width;
    }

    v20 = [(SBHStackConfigurationApertureView *)v6 heightAnchor];
    v21 = [(SBHStackConfigurationApertureView *)v6 widthAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 multiplier:v19];

    [(NSLayoutConstraint *)v22 setActive:1];
    apertureHeightConstraint = self->_apertureHeightConstraint;
    self->_apertureHeightConstraint = v22;
  }

LABEL_14:
}

- (void)_setupEditingButtons
{
  if (self->_needsAddButton)
  {
    v3 = objc_opt_class();
    v4 = [(SBHStackConfigurationViewController *)self makeTitledButtonOfClass:v3];
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    [v6 addTarget:self action:sel__didTapAddWidgetButton_ forControlEvents:0x2000];
    [v6 setAccessibilityIdentifier:@"stack-configuration-widget-add-button"];
    [(SBHStackConfigurationViewController *)self setAddButton:v6];
  }

  if (self->_needsDoneButton)
  {
    v7 = objc_opt_class();
    v8 = [(SBHStackConfigurationViewController *)self makeTitledButtonOfClass:v7];
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    [v10 addTarget:self action:sel__didTapDoneButton_ forControlEvents:0x2000];
    [v10 setAccessibilityIdentifier:@"stack-configuration-done-button"];
    [(SBHStackConfigurationViewController *)self setDoneButton:v10];
  }

  [(SBHStackConfigurationViewController *)self _updateAddWidgetButtonOperabilityForDataSourceCount];

  [(SBHStackConfigurationViewController *)self _updateLayoutForEditButtons];
}

- (id)makeTitledButtonOfClass:(Class)a3
{
  v4 = [a3 alloc];
  v5 = [v4 initWithFrame:3 material:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v6 = [v5 configuration];
  [(SBHRootFolderVisualConfiguration *)self->_rootFolderVisualConfiguration editModeButtonContentEdgeInsets];
  [v6 setContentInsets:?];
  [v5 setConfiguration:v6];
  [(SBHRootFolderVisualConfiguration *)self->_rootFolderVisualConfiguration editModeButtonSize];
  [v5 setPreferredContentFittingSize:?];
  v7 = [(SBIconView *)self->_stackIconView legibilitySettings];
  [v5 setLegibilitySettings:v7];

  v8 = [v5 materialView];
  v9 = [(SBIconView *)self->_stackIconView legibilitySettings];
  [v8 setLegibilityStyle:{objc_msgSend(v9, "style")}];

  v10 = [(SBIconView *)self->_stackIconView legibilitySettings];
  [v5 setLegibilitySettings:v10];

  return v5;
}

- (void)_updateLayoutForEditButtons
{
  v3 = [(SBHStackConfigurationViewController *)self view];
  [(UIView *)v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SBHStackConfigurationViewController *)self contentBoundingFrame];
  v14 = v13 == v9 && v12 == v11;
  scalingView = v3;
  if (v14)
  {
    scalingView = self->_scalingView;
  }

  v16 = scalingView;
  if ([(UIView *)v16 isEqual:v3])
  {
    [(UIView *)v3 sbh_createGlassGroupInForeground:1];
  }

  v17 = [(SBHStackConfigurationViewController *)self doneButton];
  v18 = [(SBHStackConfigurationViewController *)self addButton];
  v19 = [v17 superview];

  if (v19 != v16)
  {
    [(UIView *)v16 addSubview:v17];
  }

  v20 = [v18 superview];

  if (v20 != v16)
  {
    [(UIView *)v16 addSubview:v18];
  }

  v21 = *(MEMORY[0x1E695F058] + 16);
  v24 = *MEMORY[0x1E695F058];
  v25 = v21;
  v22 = v24;
  v23 = v21;
  +[SBRootFolderView _editButtonLayoutFramesInBounds:forVisualConfiguration:withTranslationOffset:inRTL:doneButton:addWidgetButton:doneButtonFrame:addWidgetButtonFrame:](SBRootFolderView, "_editButtonLayoutFramesInBounds:forVisualConfiguration:withTranslationOffset:inRTL:doneButton:addWidgetButton:doneButtonFrame:addWidgetButtonFrame:", self->_rootFolderVisualConfiguration, [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1, v17, v18, &v22, &v24, v5, v7, v9, v11, 0.0);
  [v17 setFrame:{v22, v23}];
  [v18 setFrame:{v24, v25}];
}

- (void)iconTapped:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 supportsConfigurationCard])
  {
    v4 = SBLogIcon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "Starting configuration of icon within stack configuration due to tap: %@", &v5, 0xCu);
    }

    [v3 presentConfigurationCard];
  }
}

- (void)iconCloseBoxTapped:(id)a3
{
  v3 = a3;
  v4 = [v3 icon];
  v5 = [v4 displayName];

  v6 = MEMORY[0x1E69DC650];
  v7 = MEMORY[0x1E696AEC0];
  v8 = SBHBundle();
  v9 = [v8 localizedStringForKey:@"REMOVE_WIDGET_TITLE_REMOVE_WITH_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v28 = v5;
  v10 = [v7 stringWithFormat:v9, v5];
  v11 = MEMORY[0x1E696AEC0];
  v12 = SBHBundle();
  v13 = [v12 localizedStringForKey:@"REMOVE_WIDGET_BODY_REMOVE_DATA" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v14 = [v11 stringWithFormat:v13, v5];
  v15 = [v6 alertControllerWithTitle:v10 message:v14 preferredStyle:1];

  v16 = self->_iconListView;
  v17 = MEMORY[0x1E69DC648];
  v18 = SBHBundle();
  v19 = [v18 localizedStringForKey:@"REMOVE_WIDGET_BUTTON_REMOVE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __58__SBHStackConfigurationViewController_iconCloseBoxTapped___block_invoke;
  v29[3] = &unk_1E808C840;
  v30 = v3;
  v31 = v16;
  v32 = self;
  v20 = v16;
  v21 = v3;
  v22 = [v17 actionWithTitle:v19 style:2 handler:v29];

  [v15 addAction:v22];
  v23 = MEMORY[0x1E69DC648];
  v24 = [v21 icon];
  v25 = [v24 uninstallAlertCancelTitle];
  v26 = [v23 actionWithTitle:v25 style:1 handler:0];

  [v15 addAction:v26];
  [v15 setPreferredAction:v22];
  [(SBHStackConfigurationViewController *)self presentViewController:v15 animated:1 completion:0];
}

void __58__SBHStackConfigurationViewController_iconCloseBoxTapped___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v6 = [v2 icon];
    v3 = [*(a1 + 40) model];
    [v3 removeIcon:v6];
    v4 = [v6 activeDataSource];
    if ([*(a1 + 48) _widgetDataSourceIsSuggestion:v4])
    {
      v5 = [*(a1 + 48) delegate];
      [v5 stackConfigurationViewController:*(a1 + 48) didRemoveSuggestedWidgetIcon:v6];
    }

    [*(a1 + 40) layoutIconsIfNeededWithAnimationType:0 options:1];
  }
}

- (void)iconAccessoryViewTapped:(id)a3
{
  v4 = [a3 icon];
  if ([v4 isWidgetIcon])
  {
    [(SBHStackConfigurationViewController *)self _promoteWidgetIcon:v4];
    [(SBIconListView *)self->_iconListView layoutIconsIfNeededWithAnimationType:0 options:0];
  }
}

- (void)_promoteWidgetIcon:(id)a3
{
  v8 = a3;
  v4 = [v8 activeDataSource];
  v5 = [(SBHStackConfigurationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(SBIconView *)self->_stackIconView icon];
    v7 = [v5 stackConfigurationViewController:self promoteSuggestedWidget:v4 withinStack:v6];
    if (v7)
    {
      [v8 replaceIconDataSource:v4 withIconDataSource:v7];
    }
  }
}

- (BOOL)iconViewDisplaysLabel:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(SBIconViewDelegate *)self->_defaultIconViewDelegate iconViewDisplaysLabel:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)iconViewDisplaysAccessories:(id)a3
{
  v4 = [a3 icon];
  if ([v4 isWidgetIcon])
  {
    v5 = [v4 activeDataSource];
    v6 = [(SBHStackConfigurationViewController *)self _widgetDataSourceIsSuggestion:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)iconViewDisplaysCloseBox:(id)a3
{
  v4 = [a3 icon];
  if ([v4 isWidgetIcon])
  {
    v5 = [v4 activeDataSource];
    if ([(SBHStackConfigurationViewController *)self _widgetDataSourceIsSuggestion:v5])
    {
      v6 = 0;
    }

    else
    {
      v7 = [(SBHStackConfigurationViewController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v6 = [v7 stackConfigurationViewController:self allowsRemovalOfIconDataSource:v5];
      }

      else
      {
        v6 = 1;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)iconView:(id)a3 accessoryTypeWithProposedAccessoryType:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 icon];
  v8 = [v6 isEditing];

  if (!v8 || ![v7 isWidgetIcon])
  {
    if (a4 != 3)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = [v7 activeDataSource];
  v10 = [(SBHStackConfigurationViewController *)self _widgetDataSourceIsSuggestion:v9];

  if (a4 == 3 || v10)
  {
LABEL_7:
    if ([(SBHStackConfigurationViewController *)self _canAddAdditionalWidgets])
    {
      a4 = 3;
    }

    else
    {
      a4 = 0;
    }
  }

LABEL_10:

  return a4;
}

- (id)customImageViewControllerForIconView:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(SBIconViewDelegate *)self->_defaultIconViewDelegate customImageViewControllerForIconView:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)iconView:(id)a3 supportsConfigurationForDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = [(SBIconViewDelegate *)self->_defaultIconViewDelegate iconView:v6 supportsConfigurationForDataSource:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)iconView:(id)a3 configurationInteractionForDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = [(SBIconViewDelegate *)self->_defaultIconViewDelegate iconView:v6 configurationInteractionForDataSource:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)iconView:(id)a3 userInterfaceStyleForConfigurationInteraction:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = [(SBIconViewDelegate *)self->_defaultIconViewDelegate iconView:v6 userInterfaceStyleForConfigurationInteraction:v7];
  }

  else
  {
    v9 = [(SBHStackConfigurationViewController *)self traitCollection];
    v8 = [v9 userInterfaceStyle];
  }

  return v8;
}

- (void)iconView:(id)a3 configurationDidUpdateWithInteraction:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [(SBIconViewDelegate *)self->_defaultIconViewDelegate iconView:v7 configurationDidUpdateWithInteraction:v6];
  }
}

- (void)iconView:(id)a3 configurationWillBeginWithInteraction:(id)a4
{
  v6 = a3;
  v5 = [(SBHStackConfigurationViewController *)self currentConfiguringIconView];
  if (v5 != v6)
  {
    [v5 dismissConfigurationCardImmediately];
    [(SBHStackConfigurationViewController *)self setCurrentConfiguringIconView:v6];
  }
}

- (void)iconView:(id)a3 configurationWillEndWithInteraction:(id)a4
{
  iconListView = self->_iconListView;
  v6 = a3;
  v7 = [(SBIconListView *)iconListView icons];
  v8 = [v6 icon];

  v9 = [v7 indexOfObject:v8];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(SBHStackConfigurationViewController *)self _scrollToWidgetIndex:v9 animated:1];
  }
}

- (void)iconView:(id)a3 configurationDidEndWithInteraction:(id)a4
{
  v5 = a3;
  v6 = [(SBHStackConfigurationViewController *)self currentConfiguringIconView];

  if (v6 == v5)
  {

    [(SBHStackConfigurationViewController *)self setCurrentConfiguringIconView:0];
  }
}

- (double)verticalMarginPercentageForConfigurationOfIconView:(id)a3
{
  v4 = a3;
  v5 = -1.0;
  if (objc_opt_respondsToSelector())
  {
    [(SBIconViewDelegate *)self->_defaultIconViewDelegate verticalMarginPercentageForConfigurationOfIconView:v4];
    v5 = v6;
  }

  return v5;
}

- (void)leafIcon:(id)a3 didChangeActiveDataSource:(id)a4
{
  stackIconView = self->_stackIconView;
  v6 = a3;
  v7 = [(SBIconView *)stackIconView icon];

  if (v7 != v6)
  {

    [(SBHStackConfigurationViewController *)self _iconListDidChangeWidgetIcons];
  }
}

- (void)leafIcon:(id)a3 didAddIconDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBIconView *)self->_stackIconView icon];

  if (v8 == v6)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v9 = self->_rootListModel;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __69__SBHStackConfigurationViewController_leafIcon_didAddIconDataSource___block_invoke;
    v19 = &unk_1E808C868;
    v21 = &v22;
    v10 = v7;
    v20 = v10;
    [(SBIconListModel *)v9 enumerateIconsUsingBlock:&v16];
    if ((v23[3] & 1) == 0)
    {
      v11 = [v6 iconDataSources];
      v12 = [v11 indexOfObject:v10];

      v13 = [v6 gridSizeClass];
      v14 = [(SBHStackConfigurationViewController *)self _unraveledWidgetIconForDataSource:v10 withGridSizeClass:v13];
      v15 = [(SBIconListModel *)v9 insertIcon:v14 atIndex:v12];
      [(SBIconListView *)self->_iconListView layoutIconsIfNeededWithAnimationType:0 options:1];
    }

    _Block_object_dispose(&v22, 8);
  }
}

void __69__SBHStackConfigurationViewController_leafIcon_didAddIconDataSource___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([v10 isWidgetIcon])
  {
    v6 = [v10 activeDataSource];
    v8 = *(a1 + 40);
    v7 = a1 + 40;
    *(*(v8 + 8) + 24) = v6 == *(v7 - 8);
  }

  else
  {
    v9 = *(a1 + 40);
    v7 = a1 + 40;
    *(*(v9 + 8) + 24) = 0;
  }

  *a4 = *(*(*v7 + 8) + 24);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  [(SBHStackConfigurationViewController *)self _updateCurrentPageControlPage];
  [(SBHStackConfigurationViewController *)self _updatePresentationModeForIconViews];
  [(SBHScrollableIconViewInteraction *)self->_scrollingInteraction clippingScrollViewDidScroll:v4];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  [a3 contentOffset];
  v8 = [(SBHStackConfigurationViewController *)self _widgetIndexForContentOffset:?];
  v9 = [(SBHStackConfigurationViewController *)self _widgetIndexForContentOffset:a5->x, a5->y];
  v10 = [(SBIconListView *)self->_iconListView icons];
  v11 = [v10 count];

  if (fabs(y) >= 0.05 && v9 == v8)
  {
    v13 = v8 - 1;
    if (y >= 0.0)
    {
      v13 = v8 + 1;
    }

    v14 = v13 & ~(v13 >> 63);
    if (v11 - 1 >= v14)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11 - 1;
    }
  }

  [(SBHStackConfigurationViewController *)self _targetContentOffsetForWidgetIndex:v9];
  a5->x = v15;
  a5->y = v16;
}

- (UIEdgeInsets)visibleContainerInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)coronaAnimationController:(id)a3 willAnimateCoronaTransitionWithAnimator:(id)a4
{
  v6 = self->_backgroundMaterialView;
  v7 = self->_apertureView;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __105__SBHStackConfigurationViewController_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke;
  v10[3] = &unk_1E8088F18;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [a4 addAnimations:v10];
}

void __105__SBHStackConfigurationViewController_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v3 = MEMORY[0x1E69E9820];
  v4 = 3221225472;
  v5 = __105__SBHStackConfigurationViewController_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke_2;
  v6 = &unk_1E8088F18;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  [v2 performWithoutAnimation:&v3];
  [*(a1 + 32) pl_performCrossFadeIfNecessary];
  [*(a1 + 40) pl_performCrossFadeIfNecessary];
}

uint64_t __105__SBHStackConfigurationViewController_coronaAnimationController_willAnimateCoronaTransitionWithAnimator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  [*(a1 + 40) setNeedsLayout];
  v2 = *(a1 + 40);

  return [v2 layoutIfNeeded];
}

- (double)_iconContentScale
{
  v3 = 1.0;
  if ([(SBHWidgetSettings *)self->_widgetSettings stackConfigurationShouldScaleWidgets])
  {
    v4 = [(SBIconView *)self->_stackIconView icon];
    v5 = [v4 gridSizeClass];

    v6 = [(SBHStackConfigurationViewController *)self delegate];
    [v6 stackConfigurationViewController:self iconContentScaleForGridSizeClass:v5];
    v3 = v7;

    if (v3 <= 0.0)
    {
      if (v5 == @"SBHIconGridSizeClassMedium" || [(__CFString *)v5 isEqualToString:?])
      {
        [(SBHWidgetSettings *)self->_widgetSettings stackConfigurationMediumIconScale];
      }

      else if (v5 == @"SBHIconGridSizeClassLarge" || ([(__CFString *)v5 isEqualToString:?]& 1) != 0 || v5 == @"SBHIconGridSizeClassNewsLargeTall" || [(__CFString *)v5 isEqualToString:?])
      {
        [(SBHWidgetSettings *)self->_widgetSettings stackConfigurationLargeIconScale];
      }

      else
      {
        if (v5 != @"SBHIconGridSizeClassExtraLarge")
        {
          v3 = 1.0;
          if (![(__CFString *)v5 isEqualToString:?])
          {
            goto LABEL_12;
          }
        }

        [(SBHWidgetSettings *)self->_widgetSettings stackConfigurationExtraLargeIconScale];
      }

      v3 = v8;
    }

LABEL_12:
  }

  return v3;
}

- (CGSize)_stableApertureSize
{
  [(SBHStackConfigurationViewController *)self contentBoundingFrame];
  v4 = v3;
  [(NSLayoutConstraint *)self->_apertureSizeConstraint multiplier];
  v6 = v4 * v5;
  [(NSLayoutConstraint *)self->_apertureHeightConstraint multiplier];
  v8 = v6 * v7;
  v9 = v6;
  result.height = v8;
  result.width = v9;
  return result;
}

- (double)_expandedPageControlOutset
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  result = 14.0;
  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    result = 10.0;
    if (self->_stackSizeIsSmall)
    {
      return 17.0;
    }
  }

  return result;
}

- (unint64_t)_sourceActiveWidgetIndex
{
  v3 = [(SBIconView *)self->_stackIconView icon];
  v4 = [(SBHStackConfiguration *)self->_configuration dataSources];
  v5 = [v3 activeDataSource];
  v6 = [v4 indexOfObject:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (unint64_t)_widgetIndexForContentOffset:(CGPoint)a3
{
  y = a3.y;
  [(SBHStackConfigurationApertureView *)self->_apertureView bounds];
  v6 = v5 * 0.5;
  [(SBIconListView *)self->_iconListView iconSpacing];
  v8 = v7;
  [(SBIconListView *)self->_iconListView additionalLayoutInsets];
  v10 = v9;
  height = self->_iconImageInfo.size.height;
  [(SBIconListView *)self->_iconListView iconContentScale];
  v13 = vcvtmd_u64_f64((v6 + v8 * 0.5 + y - v10) / (v8 + height * v12));
  v14 = [(SBIconListView *)self->_iconListView icons];
  v15 = [v14 count] - 1;

  if (v15 >= v13)
  {
    return v13;
  }

  else
  {
    return v15;
  }
}

- (CGPoint)_targetContentOffsetForWidgetIndex:(unint64_t)a3
{
  [(SBIconListView *)self->_iconListView iconContentScale];
  v6 = v5;
  height = self->_iconImageInfo.size.height;
  [(SBIconListView *)self->_iconListView iconSpacing];
  v9 = (v6 * height + v8) * a3;
  v10 = 0.0;
  result.y = v9;
  result.x = v10;
  return result;
}

- (void)_scrollToWidgetIndex:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v19 = a5;
  v8 = [(SBIconListView *)self->_iconListView icons];
  v9 = [v8 count];

  if (v9 <= a3)
  {
    v18 = v19;
    if (!v19)
    {
      goto LABEL_12;
    }

    (*(v19 + 2))(v19, 0);
  }

  else
  {
    [(SBHStackConfigurationApertureView *)self->_apertureView layoutIfNeeded];
    v10 = 0.0;
    if (self->_scrollPositionNeed == 2)
    {
      v11 = [(SBIconView *)self->_stackIconView customIconImageViewController];
      v12 = -1.0;
      if (objc_opt_respondsToSelector())
      {
        if ([v11 imageViewAlignment] == 1)
        {
          v12 = 1.0;
        }

        else
        {
          v12 = -1.0;
        }
      }

      [(SBIconView *)self->_stackIconView iconImageFrame];
      Height = CGRectGetHeight(v21);
      v14 = self->_iconImageInfo.size.height;
      [(SBIconListView *)self->_iconListView iconContentScale];
      v10 = v12 * (v14 * v15 - Height) * 0.5;
    }

    [(SBHStackConfigurationViewController *)self _targetContentOffsetForWidgetIndex:a3];
    [(BSUIScrollView *)self->_scrollView setContentOffset:v5 animated:v19 completion:v16 + 0.0, v10 + v17];
  }

  v18 = v19;
LABEL_12:
}

- (void)_setPageControlScale:(double)a3
{
  pageControl = self->_pageControl;
  CGAffineTransformMakeScale(&v4, a3, a3);
  [(UIPageControl *)pageControl setTransform:&v4];
}

- (void)_updateCurrentPageControlPage
{
  [(BSUIScrollView *)self->_scrollView contentOffset];
  v3 = [(SBHStackConfigurationViewController *)self _widgetIndexForContentOffset:?];
  if ([(UIPageControl *)self->_pageControl currentPage]!= v3)
  {
    pageControl = self->_pageControl;

    [(UIPageControl *)pageControl setCurrentPage:v3];
  }
}

- (void)_updateForWidgetIconCountChanged
{
  v3 = [(SBIconListView *)self->_iconListView icons];
  v4 = [v3 count];

  if ([(UIPageControl *)self->_pageControl numberOfPages]!= v4)
  {
    [(UIPageControl *)self->_pageControl setNumberOfPages:v4];
    [(SBHStackConfigurationViewController *)self _updateCurrentPageControlPage];
  }

  [(SBHStackConfigurationViewController *)self _updateAddWidgetButtonOperabilityForDataSourceCount];
  [(SBHStackConfigurationViewController *)self _updatePresentationModeForIconViews];
  v5 = v4 < 2;
  [(CCUILabeledRoundButtonViewController *)self->_smartRotateButtonViewController setInoperative:v5];
  suggestionsButtonViewController = self->_suggestionsButtonViewController;

  [(CCUILabeledRoundButtonViewController *)suggestionsButtonViewController setInoperative:v5];
}

- (void)_setupMatchMoveAnimationWithSourceView:(id)a3 targetView:(id)a4
{
  v5 = MEMORY[0x1E69D3FA0];
  v6 = a4;
  v7 = [v5 matchMoveAnimationForPinningToView:a3];
  [v6 addAnimation:v7 forKey:@"SBHStackConfigurationBackgroundMatchMoveKey"];
}

- (void)_updateButtonSubtitleForSmartRotate:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  configuration = self->_configuration;
  if (a3)
  {
    v8 = [(SBHStackConfiguration *)configuration allowsSuggestions];
    v9 = &OBJC_IVAR___SBHStackConfigurationViewController__smartRotateButtonViewController;
  }

  else
  {
    v8 = [(SBHStackConfiguration *)configuration allowsExternalSuggestions];
    v9 = &OBJC_IVAR___SBHStackConfigurationViewController__suggestionsButtonViewController;
  }

  v10 = *(&self->super.super.super.isa + *v9);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__SBHStackConfigurationViewController__updateButtonSubtitleForSmartRotate_animated___block_invoke;
  aBlock[3] = &unk_1E80897D8;
  v11 = v10;
  v25 = v11;
  v26 = v8;
  v12 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __84__SBHStackConfigurationViewController__updateButtonSubtitleForSmartRotate_animated___block_invoke_2;
  v19[3] = &unk_1E808C890;
  v21 = a3;
  v22 = v8;
  v23 = v4;
  v13 = v11;
  v20 = v13;
  v14 = _Block_copy(v19);
  if (v4)
  {
    v15 = MEMORY[0x1E69DD250];
    v16 = [v13 view];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __84__SBHStackConfigurationViewController__updateButtonSubtitleForSmartRotate_animated___block_invoke_6;
    v17[3] = &unk_1E8089600;
    v18 = v12;
    [v15 transitionWithView:v16 duration:5242886 options:v17 animations:0 completion:0.15];

    v14[2](v14);
  }

  else
  {
    v12[2](v12);
    v14[2](v14);
  }
}

void __84__SBHStackConfigurationViewController__updateButtonSubtitleForSmartRotate_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = SBHBundle();
  v6 = v3;
  if (*(a1 + 40))
  {
    v4 = @"ON";
  }

  else
  {
    v4 = @"OFF";
  }

  v5 = [v3 localizedStringForKey:v4 value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  [v2 setSubtitle:v5];
}

void __84__SBHStackConfigurationViewController__updateButtonSubtitleForSmartRotate_animated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 41);
  if (*(a1 + 40) == 1)
  {
    if (*(a1 + 41))
    {
      v3 = *(a1 + 42);
      v4 = *(a1 + 32);
      if (v3 == 1)
      {
        [v4 setGlyphState:@"State 2"];
        v5 = dispatch_time(0, 300000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __84__SBHStackConfigurationViewController__updateButtonSubtitleForSmartRotate_animated___block_invoke_3;
        block[3] = &unk_1E8088C90;
        v16 = *(a1 + 32);
        dispatch_after(v5, MEMORY[0x1E69E96A0], block);
        v6 = v16;
LABEL_11:

        return;
      }

      v9 = @"State 3";
    }

    else
    {
      v4 = *(a1 + 32);
      v9 = @"State 1";
    }
  }

  else
  {
    v7 = *(a1 + 42);
    v4 = *(a1 + 32);
    if (v2)
    {
      if (v7)
      {
        [v4 setGlyphState:@"State 3"];
        v8 = dispatch_time(0, 100000000);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __84__SBHStackConfigurationViewController__updateButtonSubtitleForSmartRotate_animated___block_invoke_4;
        v13[3] = &unk_1E8088C90;
        v14 = *(a1 + 32);
        dispatch_after(v8, MEMORY[0x1E69E96A0], v13);
        v6 = v14;
        goto LABEL_11;
      }

      v9 = @"State 4";
    }

    else
    {
      if (v7)
      {
        [v4 setGlyphState:@"State 1"];
        v10 = dispatch_time(0, 100000000);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __84__SBHStackConfigurationViewController__updateButtonSubtitleForSmartRotate_animated___block_invoke_5;
        v11[3] = &unk_1E8088C90;
        v12 = *(a1 + 32);
        dispatch_after(v10, MEMORY[0x1E69E96A0], v11);
        v6 = v12;
        goto LABEL_11;
      }

      v9 = @"State 2";
    }
  }

  [v4 setGlyphState:v9];
}

void __84__SBHStackConfigurationViewController__updateButtonSubtitleForSmartRotate_animated___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) glyphState];
  v3 = [v2 isEqualToString:@"State 2"];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 setGlyphState:@"State 3"];
  }
}

void __84__SBHStackConfigurationViewController__updateButtonSubtitleForSmartRotate_animated___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) glyphState];
  v3 = [v2 isEqualToString:@"State 3"];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 setGlyphState:@"State 4"];
  }
}

void __84__SBHStackConfigurationViewController__updateButtonSubtitleForSmartRotate_animated___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) glyphState];
  v3 = [v2 isEqualToString:@"State 1"];

  if (v3)
  {
    v4 = *(a1 + 32);

    [v4 setGlyphState:@"State 2"];
  }
}

- (void)_updateAddWidgetButtonOperabilityForDataSourceCount
{
  addButton = self->_addButton;
  v3 = [(SBHStackConfigurationViewController *)self _canAddAdditionalWidgets];

  [(SBHomeScreenButton *)addButton setEnabled:v3];
}

- (void)_iconListDidChangeWidgetIcons
{
  v3 = [(SBIconListView *)self->_iconListView model];
  v4 = [v3 icons];
  v5 = [v4 bs_compactMap:&__block_literal_global_40];

  [(SBHStackConfiguration *)self->_configuration setDataSources:v5];
  [(SBHStackConfigurationViewController *)self _saveConfiguration];
}

id __68__SBHStackConfigurationViewController__iconListDidChangeWidgetIcons__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isWidgetIcon])
  {
    v3 = [v2 activeDataSource];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_saveConfiguration
{
  v3 = [(SBHStackConfigurationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 stackConfigurationViewController:self didCommitStackConfiguration:self->_configuration];
  }
}

- (void)_updateEditingStateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = self->_editingIcons && !self->_suppressesEditingStateForListView;
  [(SBIconListView *)self->_iconListView setEditing:v5];
  iconListView = self->_iconListView;

  [(SBIconListView *)iconListView updateEditingStateAnimated:v3];
}

- (void)_requestDismissal
{
  v3 = [(SBHStackConfigurationViewController *)self delegate];
  [v3 stackConfigurationViewControllerRequestsDismissal:self];
}

- (BOOL)_widgetDataSourceIsSuggestion:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && [v3 suggestionSource] == 1;

  return v4;
}

- (BOOL)_canAddAdditionalWidgets
{
  v2 = self;
  v3 = [(SBHStackConfiguration *)self->_configuration dataSources];
  v4 = [v3 count];
  LOBYTE(v2) = v4 < [(SBHWidgetSettings *)v2->_widgetSettings maximumWidgetsInAStack];

  return v2;
}

- (void)setTitledButtonsEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBHStackConfigurationViewController *)self doneButton];
  [v5 setEnabled:v3];

  v6 = [(SBHStackConfigurationViewController *)self addButton];
  [v6 setEnabled:v3];
}

- (void)_didChangePageControlPage:(id)a3
{
  v4 = [a3 currentPage];
  [(SBHScrollableIconViewInteraction *)self->_scrollingInteraction updateScrolling:1];
  [(SBHStackConfigurationViewController *)self _scrollToWidgetIndex:v4 animated:0];
  scrollingInteraction = self->_scrollingInteraction;

  [(SBHScrollableIconViewInteraction *)scrollingInteraction updateScrolling:0];
}

- (void)_didToggleSmartRotate:(id)a3
{
  [(SBHStackConfiguration *)self->_configuration setAllowsSuggestions:[(SBHStackConfiguration *)self->_configuration allowsSuggestions]^ 1];
  [(SBHStackConfigurationViewController *)self _updateButtonSubtitleForSmartRotate:1 animated:1];

  [(SBHStackConfigurationViewController *)self _saveConfiguration];
}

- (void)_didToggleSuggestions:(id)a3
{
  v4 = [(SBHStackConfiguration *)self->_configuration allowsExternalSuggestions];
  if (v4)
  {
    v5 = self->_iconListView;
    v6 = [(SBIconListView *)v5 icons];
    v7 = [v6 bs_compactMap:&__block_literal_global_288];

    v8 = [(SBIconListView *)self->_iconListView model];
    [v8 removeIcons:v7 options:0];
    [(SBIconListView *)v5 layoutIconsIfNeededWithAnimationType:0 options:0];
  }

  [(SBHStackConfiguration *)self->_configuration setAllowsExternalSuggestions:!v4];
  [(SBHStackConfigurationViewController *)self _updateButtonSubtitleForSmartRotate:0 animated:1];

  [(SBHStackConfigurationViewController *)self _saveConfiguration];
}

id __61__SBHStackConfigurationViewController__didToggleSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isWidgetIcon])
  {
    v3 = [v2 firstSuggestedIconDataSource];
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_didTapAddWidgetButton:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [(SBHStackConfiguration *)self->_configuration dataSources];
  v5 = [v4 count];
  v6 = [(SBHWidgetSettings *)self->_widgetSettings maximumWidgetsInAStack];

  v7 = SBLogIcon();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v5 >= v6)
  {
    if (v8)
    {
      v9 = 138412290;
      v10 = self;
      _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_INFO, "'%@' ignoring tap to present Add Widget Sheet", &v9, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      v9 = 138412290;
      v10 = self;
      _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_INFO, "'%@' requesting presentation of Add Widget Sheet", &v9, 0xCu);
    }

    v7 = [(SBHStackConfigurationViewController *)self delegate];
    [v7 stackConfigurationViewControllerRequestsPresentAddWidgetSheet:self];
  }
}

- (void)_didTapDoneButton:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [(SBHStackConfigurationViewController *)self delegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 stackConfigurationViewControllerDoneButtonTapped:self];
  }

  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "'%@' requesting dismissal; Done button tapped", &v6, 0xCu);
  }

  [(SBHStackConfigurationViewController *)self _requestDismissal];
}

- (void)_didTapBackgroundView:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;
  v10 = [MEMORY[0x1E695DFA8] setWithObject:self->_apertureView];
  v11 = [(CCUILabeledRoundButtonViewController *)self->_smartRotateButtonViewController view];
  [v10 addObject:v11];

  v12 = [(CCUILabeledRoundButtonViewController *)self->_suggestionsButtonViewController view];
  [v10 addObject:v12];

  v13 = [(SBHStackConfigurationViewController *)self addButton];
  [v10 bs_safeAddObject:v13];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * i);
        [v19 bounds];
        [v19 convertRect:v5 toView:?];
        v29.x = v7;
        v29.y = v9;
        if (CGRectContainsPoint(v30, v29))
        {

          goto LABEL_13;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v20 = SBLogIcon();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = self;
    _os_log_impl(&dword_1BEB18000, v20, OS_LOG_TYPE_INFO, "'%@' requesting dismissal due to tap gesture", buf, 0xCu);
  }

  [(SBHStackConfigurationViewController *)self _requestDismissal];
LABEL_13:
}

- (void)_updatePresentationModeForIconViews
{
  v16 = [(SBHStackConfigurationViewController *)self _shouldKeepIconImageViewControllersStatic];
  [(BSUIScrollView *)self->_scrollView contentOffset];
  v3 = [(SBHStackConfigurationViewController *)self _widgetIndexForContentOffset:?];
  v4 = v3 - 1;
  if (!v3)
  {
    v4 = 0;
  }

  v15 = v4;
  v17 = [(SBIconListView *)self->_iconListView icons];
  if ([v17 count])
  {
    v5 = 0;
    v6 = v3 + 1;
    do
    {
      v7 = v5 < v15 || v5 > v6;
      v8 = v7;
      v9 = v7 || v16;
      v10 = [v17 objectAtIndexedSubscript:v5];
      v11 = [(SBIconListView *)self->_iconListView iconViewForIcon:v10];
      v12 = [v11 presentationModeFolderContext];
      v13 = [v12 mutableCopy];

      if (!v13)
      {
        v13 = objc_alloc_init(SBHMutablePresentationModeFolderContext);
      }

      [(SBHMutablePresentationModeFolderContext *)v13 setHasAssertionForLowResolutionSnapshotPresentationMode:v9];
      if (v8)
      {
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }

      [v11 setContentVisibility:v14];
      [v11 setPresentationModeFolderContext:v13];

      ++v5;
    }

    while (v5 < [v17 count]);
  }
}

- (void)_cancelCloseConfigurationTimer
{
  if (self->_closeConfigurationTimer)
  {
    v3 = SBLogIcon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(SBHStackConfigurationViewController *)v3 _cancelCloseConfigurationTimer];
    }

    [(NSTimer *)self->_closeConfigurationTimer invalidate];
    closeConfigurationTimer = self->_closeConfigurationTimer;
    self->_closeConfigurationTimer = 0;
  }
}

- (void)_closeConfigurationTimerFired
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = SBLogIcon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_INFO, "'%@' requesting dismissal; Close configuration timer fired", &v4, 0xCu);
  }

  [(SBHStackConfigurationViewController *)self _requestDismissal];
}

- (void)_setCloseFolderTimerIfNecessary
{
  if (!self->_closeConfigurationTimer && self->_grabbedIconHasEverEnteredStackConfigurationView && [(SBHStackConfigurationViewController *)self closesAfterDragExits]&& ![(NSMutableSet *)self->_draggingEnteredIconListViews count])
  {
    v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__closeConfigurationTimerFired selector:0 userInfo:0 repeats:0.5];
    closeConfigurationTimer = self->_closeConfigurationTimer;
    self->_closeConfigurationTimer = v3;

    MEMORY[0x1EEE66BB8](v3, closeConfigurationTimer);
  }
}

- (void)willDismiss
{
  v15 = *MEMORY[0x1E69E9840];
  [(SBHStackConfigurationViewController *)self _cancelCloseConfigurationTimer];
  if ([(SBIconDragManager *)self->_iconDragManager isTrackingUserActiveIconDrags])
  {
    v3 = [(SBIconListView *)self->_iconListView model];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [v3 icons];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          if ([(SBIconDragManager *)self->_iconDragManager isTrackingDragOfIcon:v9])
          {
            [v3 removeIcon:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(SBHStackConfigurationViewController *)self setDidRemoveDraggedIconsForDismissal:1];
  }
}

- (void)noteIconDrag:(id)a3 didEnterIconListView:(id)a4
{
  v15 = a3;
  v6 = a4;
  draggingEnteredIconListViews = self->_draggingEnteredIconListViews;
  if (!draggingEnteredIconListViews)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = self->_draggingEnteredIconListViews;
    self->_draggingEnteredIconListViews = v8;

    draggingEnteredIconListViews = self->_draggingEnteredIconListViews;
  }

  [(NSMutableSet *)draggingEnteredIconListViews addObject:v6];
  [v15 locationInView:v6];
  v11 = v10;
  v13 = v12;
  [v6 bounds];
  v17.x = v11;
  v17.y = v13;
  if (CGRectContainsPoint(v18, v17))
  {
    [(SBHStackConfigurationViewController *)self _cancelAllInteractionTimers];
    self->_grabbedIconHasEverEnteredStackConfigurationView = 1;
  }

  v14 = [(SBHStackConfigurationViewController *)self delegate];
  [v14 stackConfigurationViewController:self isConsumingDropSession:v15];
}

- (void)noteIconDrag:(id)a3 didChangeInIconListView:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (![(SBHStackConfigurationViewController *)self _allowUserInteraction])
  {
    [(SBHStackConfigurationViewController *)self _cancelAllInteractionTimers];
  }

  if ([(NSMutableSet *)self->_draggingEnteredIconListViews containsObject:v6])
  {
    [v11 locationInView:v6];
    v8 = v7;
    v10 = v9;
    [v6 bounds];
    v13.x = v8;
    v13.y = v10;
    if (CGRectContainsPoint(v14, v13))
    {
      self->_grabbedIconHasEverEnteredStackConfigurationView = 1;
    }

    else
    {
      [(NSMutableSet *)self->_draggingEnteredIconListViews removeObject:v6];
      [(SBHStackConfigurationViewController *)self _setCloseFolderTimerIfNecessary];
    }
  }
}

- (void)noteIconDrag:(id)a3 didExitIconListView:(id)a4
{
  v5 = a4;
  if ([(NSMutableSet *)self->_draggingEnteredIconListViews containsObject:?])
  {
    [(NSMutableSet *)self->_draggingEnteredIconListViews removeObject:v5];
    if (![(SBHStackConfigurationViewController *)self didPerformDrop])
    {
      [(SBHStackConfigurationViewController *)self _setCloseFolderTimerIfNecessary];
    }
  }
}

- (void)noteIconDragDidEnd
{
  [(SBHStackConfigurationViewController *)self _cancelAllInteractionTimers];
  self->_grabbedIconHasEverEnteredStackConfigurationView = 0;
  draggingEnteredIconListViews = self->_draggingEnteredIconListViews;
  self->_draggingEnteredIconListViews = 0;
}

- (void)iconDragManager:(id)a3 iconView:(id)a4 willBeginDragSession:(id)a5
{
  [(SBHStackConfigurationViewController *)self setCurrentDraggingIconView:a4];
  if (![(SBHStackConfigurationViewController *)self canDismissWhileDragging])
  {
    [(SBHStackConfigurationViewController *)self setTitledButtonsEnabled:0];
  }

  [(SBHStackConfigurationViewController *)self setDidPerformDrop:0];
}

- (void)iconDragManager:(id)a3 iconView:(id)a4 willAnimateDragLiftWithAnimator:(id)a5 session:(id)a6
{
  v12 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [(SBHStackConfigurationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v11 stackConfigurationViewController:self iconView:v12 willAnimateDragLiftWithAnimator:v9 session:v10];
  }
}

- (void)iconDragManager:(id)a3 iconView:(id)a4 dragLiftAnimationDidChangeDirection:(int64_t)a5
{
  v8 = a4;
  v7 = [(SBHStackConfigurationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 stackConfigurationViewController:self iconView:v8 dragLiftAnimationDidChangeDirection:a5];
  }
}

- (void)iconDragManager:(id)a3 iconView:(id)a4 item:(id)a5 willAnimateDragCancelWithAnimator:(id)a6
{
  v13 = a5;
  if ([(SBHStackConfigurationViewController *)self didRemoveDraggedIconsForDismissal])
  {
    v7 = [v13 sbh_appDragLocalContext];
    iconDragManager = self->_iconDragManager;
    v9 = [v7 uniqueIdentifier];
    v10 = [(SBIconDragManager *)iconDragManager draggedIconForIdentifier:v9];

    v11 = [(SBIconListView *)self->_iconListView model];
    v12 = [v11 addIcon:v10];
  }
}

- (void)iconDragManager:(id)a3 iconView:(id)a4 didEndDragSession:(id)a5 withOperation:(unint64_t)a6
{
  v7 = a4;
  v8 = [(SBHStackConfigurationViewController *)self currentDraggingIconView];

  if (v8 == v7)
  {
    [(SBHStackConfigurationViewController *)self setCurrentDraggingIconView:0];
  }

  if (![(SBHStackConfigurationViewController *)self canDismissWhileDragging])
  {

    [(SBHStackConfigurationViewController *)self setTitledButtonsEnabled:1];
  }
}

- (BOOL)iconDragManager:(id)a3 dragsSupportSystemDragsForIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBHStackConfigurationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 stackConfigurationViewController:self dragsSupportSystemDragsForIconView:v5];
  }

  else
  {
    v7 = [v5 dragsSupportSystemDragsByDefault];
  }

  v8 = v7;

  return v8;
}

- (id)iconDragManager:(id)a3 iconDropSessionDidUpdate:(id)a4 inIconListView:(id)a5 draggedIcons:(id)a6 proposedDropProposal:(id)a7
{
  v10 = a7;
  [(SBHStackConfigurationViewController *)self noteIconDrag:a4 didChangeInIconListView:a5];

  return v10;
}

- (void)iconDragManagerIconDraggingDidChange:(id)a3
{
  if (([a3 isIconDragging] & 1) == 0)
  {

    [(SBHStackConfigurationViewController *)self noteIconDragDidEnd];
  }
}

- (void)iconDragManager:(id)a3 didPerformIconDrop:(id)a4 withIcons:(id)a5 inIconListView:(id)a6
{
  [(SBHStackConfigurationViewController *)self _cancelCloseConfigurationTimer:a3];

  [(SBHStackConfigurationViewController *)self setDidPerformDrop:1];
}

- (void)iconDragManager:(id)a3 iconListView:(id)a4 item:(id)a5 willAnimateDropWithAnimator:(id)a6
{
  v8 = a4;
  v20 = [a5 sbh_appDragLocalContext];
  iconDragManager = self->_iconDragManager;
  v10 = [v20 uniqueIdentifier];
  v11 = [(SBIconDragManager *)iconDragManager draggedIconForIdentifier:v10];

  [v8 rectForIcon:v11];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v22.origin.x = v13;
  v22.origin.y = v15;
  v22.size.width = v17;
  v22.size.height = v19;
  v23 = CGRectInset(v22, 0.0, -8.0);
  [(BSUIScrollView *)self->_scrollView scrollRectToVisible:1 animated:v23.origin.x, v23.origin.y, v23.size.width, v23.size.height];
}

- (id)iconDragManager:(id)a3 draggedIconForIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(SBHStackConfigurationViewController *)self delegate];
  v7 = [v6 stackConfigurationViewController:self draggedIconForIdentifier:v5];

  return v7;
}

- (id)widgetInsertionRippleIconAnimatorForIcon:(id)a3 iconListView:(id)a4 withReferenceIconView:(id)a5
{
  listLayoutProvider = self->_listLayoutProvider;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(SBIconListLayoutProvider *)listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];
  v13 = [SBHWidgetInsertionRippleIconAnimator alloc];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __115__SBHStackConfigurationViewController_widgetInsertionRippleIconAnimatorForIcon_iconListView_withReferenceIconView___block_invoke;
  v16[3] = &unk_1E8088C90;
  v16[4] = self;
  v14 = [(SBHWidgetInsertionRippleIconAnimator *)v13 initWithIconListView:v10 widgetIcon:v11 referenceLayout:v12 referenceIconView:v9 additionalIconListView:0 preludeBlock:v16];

  return v14;
}

void __115__SBHStackConfigurationViewController_widgetInsertionRippleIconAnimatorForIcon_iconListView_withReferenceIconView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 stackConfigurationViewControllerWillAnimateWidgetInsertion:*(a1 + 32)];
}

- (id)iconDragManager:(id)a3 dragPreviewForIconView:(id)a4
{
  v5 = a4;
  v6 = [(SBHStackConfigurationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 stackConfigurationViewController:self dragPreviewForIconView:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)iconDragManager:(id)a3 targetedDragPreviewForIconView:(id)a4 item:(id)a5 session:(id)a6 previewParameters:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [(SBHStackConfigurationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v16 = [v15 stackConfigurationViewController:self targetedDragPreviewForIconView:v11 item:v12 session:v13 previewParameters:v14];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)windowForIconDragPreviewsForIconDragManager:(id)a3 forWindowScene:(id)a4
{
  v5 = a4;
  v6 = [(SBHStackConfigurationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 windowForIconDragPreviewsForStackConfigurationViewController:self forWindowScene:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)iconListModel:(id)a3 isAllowedToContainIcon:(id)a4
{
  v5 = a4;
  v6 = [v5 gridSizeClass];
  v7 = [(SBIconView *)self->_stackIconView icon];
  v8 = [v7 gridSizeClass];
  if (v6 == v8)
  {
    v12 = 1;
  }

  else
  {
    v9 = [v5 gridSizeClass];
    v10 = [(SBIconView *)self->_stackIconView icon];
    v11 = [v10 gridSizeClass];
    v12 = [v9 isEqualToString:v11];
  }

  return v12;
}

- (void)iconList:(id)a3 didAddIcon:(id)a4
{
  v5 = a4;
  if ([v5 isWidgetIcon])
  {
    [v5 addObserver:self];
    [(SBHStackConfigurationViewController *)self _iconListDidChangeWidgetIcons];
  }

  [(SBHStackConfigurationViewController *)self _updateForWidgetIconCountChanged];
}

- (void)iconList:(id)a3 didReplaceIcon:(id)a4 withIcon:(id)a5
{
  v8 = a4;
  v7 = a5;
  if (([v8 isWidgetIcon] & 1) != 0 || objc_msgSend(v7, "isWidgetIcon"))
  {
    [v8 removeObserver:self];
    [v7 addObserver:self];
    [(SBHStackConfigurationViewController *)self _iconListDidChangeWidgetIcons];
  }

  [(SBHStackConfigurationViewController *)self _updateForWidgetIconCountChanged];
}

- (void)iconList:(id)a3 didRemoveIcon:(id)a4
{
  v8 = a4;
  v5 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v8 referencedIcon];
  }

  else
  {
    v6 = v8;
  }

  v7 = v6;

  if (v7)
  {
    [v7 removeObserver:self];
    [(SBHStackConfigurationViewController *)self _iconListDidChangeWidgetIcons];
  }

  [(SBHStackConfigurationViewController *)self _updateForWidgetIconCountChanged];
}

- (void)iconList:(id)a3 didMoveIcon:(id)a4
{
  v10 = a4;
  v5 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v10 referencedIcon];
  }

  else
  {
    v6 = v10;
  }

  v7 = v6;

  if (v7)
  {
    v8 = v7;
    v9 = [v8 activeDataSource];
    if ([(SBHStackConfigurationViewController *)self _widgetDataSourceIsSuggestion:v9])
    {
      [(SBHStackConfigurationViewController *)self _promoteWidgetIcon:v8];
    }

    [(SBHStackConfigurationViewController *)self _iconListDidChangeWidgetIcons];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if ([(SBHStackConfigurationViewController *)self canDismissWhileDragging])
  {
    return 1;
  }

  v5 = [(SBHStackConfigurationViewController *)self currentDraggingIconView];
  v4 = v5 == 0;

  return v4;
}

- (void)stackConfigurationView:(id)a3 didHitTestView:(id)a4 atPoint:(CGPoint)a5 withEvent:(id)a6
{
  v7 = MEMORY[0x1E695DF70];
  v8 = a4;
  v12 = [v7 array];
  v9 = [(SBHStackConfigurationViewController *)self addButton];
  [v12 bs_safeAddObject:v9];

  v10 = [(SBHStackConfigurationViewController *)self doneButton];
  [v12 bs_safeAddObject:v10];

  LOBYTE(v10) = [v12 containsObject:v8];
  if ((v10 & 1) == 0)
  {
    v11 = [(SBHStackConfigurationViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v11 stackConfigurationViewControllerDidReceiveUserTouch:self];
    }
  }
}

- (SBHStackConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBHWidgetSheetViewControllerPresenter)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (CGRect)contentBoundingFrame
{
  x = self->_contentBoundingFrame.origin.x;
  y = self->_contentBoundingFrame.origin.y;
  width = self->_contentBoundingFrame.size.width;
  height = self->_contentBoundingFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)animationCoordinator
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(aSelector);
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1BEB18000, a3, OS_LOG_TYPE_ERROR, "'%@' forcefully loading view in order to provide a valid animation coordinator. %@ was probably queried outside of a view controller transition animator.", &v6, 0x16u);
}

@end