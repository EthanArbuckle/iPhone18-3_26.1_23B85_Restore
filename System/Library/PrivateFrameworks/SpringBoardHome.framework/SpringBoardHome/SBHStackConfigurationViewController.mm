@interface SBHStackConfigurationViewController
- (BOOL)_canAddAdditionalWidgets;
- (BOOL)_widgetDataSourceIsSuggestion:(id)suggestion;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)iconDragManager:(id)manager dragsSupportSystemDragsForIconView:(id)view;
- (BOOL)iconListModel:(id)model isAllowedToContainIcon:(id)icon;
- (BOOL)iconView:(id)view supportsConfigurationForDataSource:(id)source;
- (BOOL)iconViewDisplaysAccessories:(id)accessories;
- (BOOL)iconViewDisplaysCloseBox:(id)box;
- (BOOL)iconViewDisplaysLabel:(id)label;
- (CGPoint)_targetContentOffsetForWidgetIndex:(unint64_t)index;
- (CGRect)contentBoundingFrame;
- (CGSize)_stableApertureSize;
- (NSMutableDictionary)userInfo;
- (NSSet)fadingViews;
- (NSSet)materialViews;
- (NSSet)widgetBackgroundViews;
- (SBHStackConfigurationViewController)initWithConfiguration:(id)configuration iconView:(id)view iconViewProvider:(id)provider listLayoutProvider:(id)layoutProvider showsAddButton:(BOOL)button showsDoneButton:(BOOL)doneButton;
- (SBHStackConfigurationViewControllerDelegate)delegate;
- (SBHWidgetSheetViewControllerPresenter)presenter;
- (SBLeafIconDataSource)visiblyActiveDataSource;
- (UIEdgeInsets)visibleContainerInsets;
- (UIView)visiblyActiveDataSourceSnapshotView;
- (double)_expandedPageControlOutset;
- (double)_iconContentScale;
- (double)verticalMarginPercentageForConfigurationOfIconView:(id)view;
- (id)_unraveledWidgetIconForDataSource:(id)source withGridSizeClass:(id)class;
- (id)animationCoordinator;
- (id)customImageViewControllerForIconView:(id)view;
- (id)iconDragManager:(id)manager dragPreviewForIconView:(id)view;
- (id)iconDragManager:(id)manager draggedIconForIdentifier:(id)identifier;
- (id)iconDragManager:(id)manager iconDropSessionDidUpdate:(id)update inIconListView:(id)view draggedIcons:(id)icons proposedDropProposal:(id)proposal;
- (id)iconDragManager:(id)manager targetedDragPreviewForIconView:(id)view item:(id)item session:(id)session previewParameters:(id)parameters;
- (id)iconView:(id)view configurationInteractionForDataSource:(id)source;
- (id)keepIconImageViewControllersStaticForReason:(id)reason;
- (id)makeTitledButtonOfClass:(Class)class;
- (id)widgetInsertionRippleIconAnimatorForIcon:(id)icon iconListView:(id)view withReferenceIconView:(id)iconView;
- (id)windowForIconDragPreviewsForIconDragManager:(id)manager forWindowScene:(id)scene;
- (int64_t)_iconViewComponentBackgroundViewType;
- (int64_t)iconView:(id)view accessoryTypeWithProposedAccessoryType:(int64_t)type;
- (int64_t)iconView:(id)view userInterfaceStyleForConfigurationInteraction:(id)interaction;
- (unint64_t)_sourceActiveWidgetIndex;
- (unint64_t)_widgetIndexForContentOffset:(CGPoint)offset;
- (unint64_t)supportedInterfaceOrientations;
- (void)_cancelCloseConfigurationTimer;
- (void)_closeConfigurationTimerFired;
- (void)_didChangePageControlPage:(id)page;
- (void)_didTapAddWidgetButton:(id)button;
- (void)_didTapBackgroundView:(id)view;
- (void)_didTapDoneButton:(id)button;
- (void)_didToggleSmartRotate:(id)rotate;
- (void)_didToggleSuggestions:(id)suggestions;
- (void)_iconListDidChangeWidgetIcons;
- (void)_promoteWidgetIcon:(id)icon;
- (void)_requestDismissal;
- (void)_saveConfiguration;
- (void)_scrollToWidgetIndex:(unint64_t)index animated:(BOOL)animated completion:(id)completion;
- (void)_setCloseFolderTimerIfNecessary;
- (void)_setPageControlScale:(double)scale;
- (void)_setupApertureViewInContainer:(id)container;
- (void)_setupBackgroundInContainer:(id)container;
- (void)_setupContentViewWithContentFrame:(CGRect)frame;
- (void)_setupEditingButtons;
- (void)_setupIconListViewCenteredInScrollView:(id)view;
- (void)_setupLargeSizeLayoutAdjustmentsIfNecessary;
- (void)_setupMatchMoveAnimationWithSourceView:(id)view targetView:(id)targetView;
- (void)_setupPageControlInContainer:(id)container;
- (void)_setupScrollViewInContainer:(id)container;
- (void)_setupTapToDismissGestureInView:(id)view;
- (void)_updateAddWidgetButtonOperabilityForDataSourceCount;
- (void)_updateButtonSubtitleForSmartRotate:(BOOL)rotate animated:(BOOL)animated;
- (void)_updateCurrentPageControlPage;
- (void)_updateEditingStateAnimated:(BOOL)animated;
- (void)_updateForWidgetIconCountChanged;
- (void)_updateLayoutForEditButtons;
- (void)_updatePresentationModeForIconViews;
- (void)animationCoordinator;
- (void)configureWithStackLayoutMetrics:(SBHStackLayoutMetrics *)metrics;
- (void)coronaAnimationController:(id)controller willAnimateCoronaTransitionWithAnimator:(id)animator;
- (void)didMoveToParentViewController:(id)controller;
- (void)iconAccessoryViewTapped:(id)tapped;
- (void)iconCloseBoxTapped:(id)tapped;
- (void)iconDragManager:(id)manager didPerformIconDrop:(id)drop withIcons:(id)icons inIconListView:(id)view;
- (void)iconDragManager:(id)manager iconListView:(id)view item:(id)item willAnimateDropWithAnimator:(id)animator;
- (void)iconDragManager:(id)manager iconView:(id)view didEndDragSession:(id)session withOperation:(unint64_t)operation;
- (void)iconDragManager:(id)manager iconView:(id)view dragLiftAnimationDidChangeDirection:(int64_t)direction;
- (void)iconDragManager:(id)manager iconView:(id)view item:(id)item willAnimateDragCancelWithAnimator:(id)animator;
- (void)iconDragManager:(id)manager iconView:(id)view willAnimateDragLiftWithAnimator:(id)animator session:(id)session;
- (void)iconDragManager:(id)manager iconView:(id)view willBeginDragSession:(id)session;
- (void)iconDragManagerIconDraggingDidChange:(id)change;
- (void)iconList:(id)list didAddIcon:(id)icon;
- (void)iconList:(id)list didMoveIcon:(id)icon;
- (void)iconList:(id)list didRemoveIcon:(id)icon;
- (void)iconList:(id)list didReplaceIcon:(id)icon withIcon:(id)withIcon;
- (void)iconTapped:(id)tapped;
- (void)iconView:(id)view configurationDidEndWithInteraction:(id)interaction;
- (void)iconView:(id)view configurationDidUpdateWithInteraction:(id)interaction;
- (void)iconView:(id)view configurationWillBeginWithInteraction:(id)interaction;
- (void)iconView:(id)view configurationWillEndWithInteraction:(id)interaction;
- (void)leafIcon:(id)icon didAddIconDataSource:(id)source;
- (void)leafIcon:(id)icon didChangeActiveDataSource:(id)source;
- (void)loadView;
- (void)noteIconDrag:(id)drag didChangeInIconListView:(id)view;
- (void)noteIconDrag:(id)drag didEnterIconListView:(id)view;
- (void)noteIconDrag:(id)drag didExitIconListView:(id)view;
- (void)noteIconDragDidEnd;
- (void)scrollIconToVisible:(id)visible animated:(BOOL)animated completion:(id)completion;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setEditingIcons:(BOOL)icons;
- (void)setScrollPosition:(unint64_t)position;
- (void)setSuppressesEditingStateForListView:(BOOL)view;
- (void)setTitledButtonsAlpha:(double)alpha;
- (void)setTitledButtonsEnabled:(BOOL)enabled;
- (void)stackConfigurationView:(id)view didHitTestView:(id)testView atPoint:(CGPoint)point withEvent:(id)event;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willDismiss;
@end

@implementation SBHStackConfigurationViewController

- (SBHStackConfigurationViewController)initWithConfiguration:(id)configuration iconView:(id)view iconViewProvider:(id)provider listLayoutProvider:(id)layoutProvider showsAddButton:(BOOL)button showsDoneButton:(BOOL)doneButton
{
  configurationCopy = configuration;
  viewCopy = view;
  providerCopy = provider;
  layoutProviderCopy = layoutProvider;
  v39.receiver = self;
  v39.super_class = SBHStackConfigurationViewController;
  v18 = [(SBHStackConfigurationViewController *)&v39 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_listLayoutProvider, layoutProvider);
    objc_storeStrong(&v19->_iconViewProvider, provider);
    objc_storeStrong(&v19->_configuration, configuration);
    objc_storeStrong(&v19->_stackIconView, view);
    v19->_titledButtonsAlpha = 1.0;
    v19->_needsAddButton = button;
    v19->_needsDoneButton = doneButton;
    v19->_canDismissWhileDragging = 1;
    delegate = [viewCopy delegate];
    defaultIconViewDelegate = v19->_defaultIconViewDelegate;
    v19->_defaultIconViewDelegate = delegate;

    v22 = +[SBHHomeScreenDomain rootSettings];
    widgetSettings = [v22 widgetSettings];
    widgetSettings = v19->_widgetSettings;
    v19->_widgetSettings = widgetSettings;

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
      rootFolderVisualConfiguration = [v29 rootFolderVisualConfiguration];
    }

    else
    {
      rootFolderVisualConfiguration = objc_alloc_init(SBHRootFolderVisualConfiguration);
    }

    rootFolderVisualConfiguration = v19->_rootFolderVisualConfiguration;
    v19->_rootFolderVisualConfiguration = rootFolderVisualConfiguration;

    v32 = v29;
    v33 = SBHIconListLayoutIconGridSizeClassSizes(v32, [viewCopy orientation]);

    icon = [viewCopy icon];
    gridSizeClass = [icon gridSizeClass];
    v36 = [v33 gridSizeForGridSizeClass:gridSizeClass];

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
  view = [(SBHStackConfigurationViewController *)self view];
  [view frame];
  v5 = [(SBHStackConfigurationView *)v3 initWithFrame:?];

  [(SBHStackConfigurationView *)v5 setDelegate:self];
  [(SBHStackConfigurationViewController *)self setView:v5];
  view2 = [(SBHStackConfigurationViewController *)self view];
  stackConfigurationBlursBackground = [(SBHWidgetSettings *)self->_widgetSettings stackConfigurationBlursBackground];
  widgetSettings = self->_widgetSettings;
  if (stackConfigurationBlursBackground)
  {
    if ([(SBHWidgetSettings *)widgetSettings stackConfigurationUsesFolderBlur])
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      sbf_animatedBlurRadiusGraphicsQuality = [currentDevice sbf_animatedBlurRadiusGraphicsQuality];

      v11 = @"folderExpandedBackgroundHomeSimplified";
      if (sbf_animatedBlurRadiusGraphicsQuality == 100)
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

    [view2 bounds];
    [v15 setFrame:?];
    [v15 setAutoresizingMask:18];
    v19 = SBHHomeScreenMaterialViewBackdropScaleAdjustmentHandlerForCurrentDevice();
    [v15 setBackdropScaleAdjustment:v19];

    [v15 setGroupNameBase:@"Widget-Stack-Configuration"];
    [view2 addSubview:v15];
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
  [view2 bounds];
  v24 = [(SBHStackConfigurationBackgroundDimmingView *)v23 initWithFrame:?];
  [(SBHStackConfigurationBackgroundDimmingView *)v24 setAutoresizingMask:18];
  v25 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:v17];
  [(SBHStackConfigurationBackgroundDimmingView *)v24 setBackgroundColor:v25];

  [view2 addSubview:v24];
  backgroundDimmingView = self->_backgroundDimmingView;
  self->_backgroundDimmingView = v24;
  v27 = v24;

  v28 = [SBHTouchPassThroughView alloc];
  [view2 bounds];
  v29 = [(SBHTouchPassThroughView *)v28 initWithFrame:?];
  [(UIView *)v29 setAutoresizingMask:18];
  [view2 addSubview:v29];
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
  presenter = [(SBHStackConfigurationViewController *)self presenter];
  if (objc_opt_respondsToSelector())
  {
    -[SBHStackConfigurationViewController setOverrideUserInterfaceStyle:](self, "setOverrideUserInterfaceStyle:", [presenter overrideUserInterfaceStyleForPresentingWidgetSheet]);
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
  view = [(SBHStackConfigurationViewController *)self view];
  [(SBHStackConfigurationViewController *)self _setupTapToDismissGestureInView:view];
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
  button = [(CCUILabeledRoundButtonViewController *)self->_smartRotateButtonViewController button];
  [button setAccessibilityIdentifier:@"stack-configuration-smart-rotate-button"];

  button2 = [(CCUILabeledRoundButtonViewController *)self->_suggestionsButtonViewController button];

  [button2 setAccessibilityIdentifier:@"stack-configuration-suggestions-button"];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBHStackConfigurationViewController;
  [(SBHStackConfigurationViewController *)&v4 viewWillAppear:appear];
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

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = SBHStackConfigurationViewController;
  [(SBHStackConfigurationViewController *)&v7 viewDidAppear:appear];
  view = [(SBHStackConfigurationViewController *)self view];
  window = [view window];
  sb_coronaAnimationController = [window sb_coronaAnimationController];

  [sb_coronaAnimationController addParticipant:self];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = SBHStackConfigurationViewController;
  [(SBHStackConfigurationViewController *)&v7 viewDidDisappear:disappear];
  view = [(SBHStackConfigurationViewController *)self view];
  window = [view window];
  sb_coronaAnimationController = [window sb_coronaAnimationController];

  [sb_coronaAnimationController removeParticipant:self];
}

- (void)didMoveToParentViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = SBHStackConfigurationViewController;
  [(SBHStackConfigurationViewController *)&v7 didMoveToParentViewController:?];
  if (controller)
  {
    view = [(SBHStackConfigurationViewController *)self view];
    window = [view window];

    [(SBHStackConfigurationViewController *)self _setupMatchMoveAnimationWithSourceView:window targetView:self->_backgroundDimmingView];
    [(SBHStackConfigurationViewController *)self _setupMatchMoveAnimationWithSourceView:window targetView:self->_backgroundMaterialView];
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
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v2 = [currentDevice userInterfaceIdiom] == 1;
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

- (void)setEditingIcons:(BOOL)icons
{
  if (self->_editingIcons != icons)
  {
    self->_editingIcons = icons;
    [(SBHStackConfigurationViewController *)self _updateEditingStateAnimated:1];
  }
}

- (SBLeafIconDataSource)visiblyActiveDataSource
{
  icon = [(SBIconView *)self->_stackIconView icon];
  if ([icon iconDataSourceCount])
  {
    [(BSUIScrollView *)self->_scrollView contentOffset];
    v4 = [(SBHStackConfigurationViewController *)self _widgetIndexForContentOffset:?];
    iconDataSourceCount = [icon iconDataSourceCount];
    if (iconDataSourceCount - 1 < v4)
    {
      v4 = iconDataSourceCount - 1;
    }

    iconDataSources = [icon iconDataSources];
    v7 = [iconDataSources objectAtIndex:v4];
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

- (id)keepIconImageViewControllersStaticForReason:(id)reason
{
  reasonCopy = reason;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E698E778]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __83__SBHStackConfigurationViewController_keepIconImageViewControllersStaticForReason___block_invoke;
  v14 = &unk_1E808A7B8;
  objc_copyWeak(&v15, &location);
  v6 = [v5 initWithIdentifier:@"KeepStackIconImagesStatic" forReason:reasonCopy invalidationBlock:&v11];
  keepStaticAssertions = self->_keepStaticAssertions;
  if (!keepStaticAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v9 = self->_keepStaticAssertions;
    self->_keepStaticAssertions = weakObjectsHashTable;

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

- (void)scrollIconToVisible:(id)visible animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  iconListView = self->_iconListView;
  visibleCopy = visible;
  icons = [(SBIconListView *)iconListView icons];
  v12 = [icons indexOfObject:visibleCopy];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__SBHStackConfigurationViewController_scrollIconToVisible_animated_completion___block_invoke;
    aBlock[3] = &unk_1E808A0B8;
    v15 = completionCopy;
    v13 = _Block_copy(aBlock);
    [(SBHStackConfigurationViewController *)self _scrollToWidgetIndex:v12 animated:animatedCopy completion:v13];
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

- (void)setSuppressesEditingStateForListView:(BOOL)view
{
  if (self->_suppressesEditingStateForListView != view)
  {
    self->_suppressesEditingStateForListView = view;
    [(SBHStackConfigurationViewController *)self _updateEditingStateAnimated:1];
  }
}

- (void)setTitledButtonsAlpha:(double)alpha
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_titledButtonsAlpha != alpha)
  {
    self->_titledButtonsAlpha = alpha;
    v5 = SBLogIcon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134349056;
      alphaCopy = alpha;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "SBHStackConfigurationViewController setTitledButtonsAlpha: %{public}f", &v6, 0xCu);
    }

    [(SBTitledHomeScreenButton *)self->_doneButton setAlpha:alpha];
    [(SBTitledHomeScreenButton *)self->_addButton setAlpha:alpha];
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
  view = [(CCUILabeledRoundButtonViewController *)self->_smartRotateButtonViewController view];
  [v3 addObject:view];

  view2 = [(CCUILabeledRoundButtonViewController *)self->_suggestionsButtonViewController view];
  [v3 addObject:view2];

  doneButton = [(SBHStackConfigurationViewController *)self doneButton];
  [v3 bs_safeAddObject:doneButton];

  addButton = [(SBHStackConfigurationViewController *)self addButton];
  [v3 bs_safeAddObject:addButton];

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
  visiblyActiveDataSource = [(SBHStackConfigurationViewController *)self visiblyActiveDataSource];
  v4 = visiblyActiveDataSource;
  if (!visiblyActiveDataSource)
  {
    goto LABEL_5;
  }

  iconImageSnapshotView = &v15;
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
  v13 = visiblyActiveDataSource;
  v14 = &v15;
  [(SBIconListView *)iconListView enumerateDisplayedIconViewsUsingBlock:&v9];
  v7 = v16[5];
  if (v7)
  {
    iconImageSnapshotView = [v16[5] iconImageSnapshotView];
    [iconImageSnapshotView setClipsToBounds:1];
  }

  _Block_object_dispose(&v15, 8);
  if (!v7)
  {
LABEL_5:
    iconImageSnapshotView = 0;
  }

  return iconImageSnapshotView;
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

- (void)configureWithStackLayoutMetrics:(SBHStackLayoutMetrics *)metrics
{
  v5 = *&metrics->var1.height;
  v34[0] = *&metrics->var0;
  v34[1] = v5;
  v6 = *&metrics->var4;
  v34[2] = *&metrics->var2.y;
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
    var3 = metrics->var3;
    var5 = metrics->var5;
  }

  [(NSLayoutConstraint *)self->_pageControlOutsetConstraint setConstant:var5];
  var4 = 1.0;
  if (!v7)
  {
    var4 = metrics->var4;
  }

  [(UIPageControl *)self->_pageControl setAlpha:var4];
  [(SBHStackConfigurationViewController *)self _setPageControlScale:var3];
  var0 = metrics->var0;
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
    _shouldUseConcentricCornersWhenExpanded = [(SBHStackConfigurationViewController *)self _shouldUseConcentricCornersWhenExpanded];
  }

  else
  {
    [(SBIconListView *)self->_iconListView setIconContentScale:metrics->var0];
    _shouldUseConcentricCornersWhenExpanded = 1;
  }

  [(SBHStackConfigurationApertureView *)self->_apertureView setUsesConcentricCorners:_shouldUseConcentricCornersWhenExpanded];
  [(SBHStackConfigurationViewController *)self _stableApertureSize];
  v32 = v17;
  v19 = v18;
  v21 = metrics->var1.width;
  v20 = metrics->var1.height;
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
    x = metrics->var2.x;
    [(SBHStackConfigurationApertureView *)self->_apertureView center];
    v24 = x - v29;
    y = metrics->var2.y;
    [(SBHStackConfigurationApertureView *)self->_apertureView center];
    v27 = y - v31;
  }

  [(NSLayoutConstraint *)self->_apertureSizeConstraint setConstant:v25];
  [(NSLayoutConstraint *)self->_apertureHeightConstraint setConstant:v26 - v25 * v23];
  [(NSLayoutConstraint *)self->_apertureCenterXConstraint setConstant:v24];
  [(NSLayoutConstraint *)self->_apertureCenterYConstraint setConstant:v27];
  [(SBHStackConfigurationApertureView *)self->_apertureView layoutIfNeeded];
}

- (void)setScrollPosition:(unint64_t)position
{
  if (self->_scrollPositionNeed != position)
  {
    self->_scrollPositionNeed = position;
    view = [(SBHStackConfigurationViewController *)self view];
    [view setNeedsLayout];
  }
}

- (void)_setupContentViewWithContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v24[4] = *MEMORY[0x1E69E9840];
  if (frame.size.width == *MEMORY[0x1E695F060] && frame.size.height == *(MEMORY[0x1E695F060] + 8))
  {
    NSLog(&cfstr_CanTSetupWithA.isa, a2);
  }

  superview = [(UIView *)self->_contentView superview];
  v10 = self->_contentView;
  [(UIView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = MEMORY[0x1E696ACD8];
  widthAnchor = [(UIView *)v10 widthAnchor];
  v22 = [widthAnchor constraintEqualToConstant:width];
  v24[0] = v22;
  heightAnchor = [(UIView *)v10 heightAnchor];
  v12 = [heightAnchor constraintEqualToConstant:height];
  v24[1] = v12;
  topAnchor = [(UIView *)v10 topAnchor];
  v21 = superview;
  topAnchor2 = [superview topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:y];
  v24[2] = v15;
  leftAnchor = [(UIView *)v10 leftAnchor];
  leftAnchor2 = [superview leftAnchor];
  v18 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:x];
  v24[3] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [v20 activateConstraints:v19];
}

- (void)_setupBackgroundInContainer:(id)container
{
  v45[2] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  traitCollection = [(SBHStackConfigurationViewController *)self traitCollection];
  v6 = [traitCollection userInterfaceStyle] == 1;

  v7 = SBHBundle();
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v9 = self->_configuration;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__SBHStackConfigurationViewController__setupBackgroundInContainer___block_invoke;
  aBlock[3] = &unk_1E808C7C8;
  v39 = v9;
  v40 = v7;
  v43 = v6;
  v41 = systemBlueColor;
  selfCopy = self;
  v37 = systemBlueColor;
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
  [(SBHStackConfigurationViewController *)self bs_addChildViewController:v31 withSuperview:containerCopy];
  v45[0] = v33;
  v45[1] = v32;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  [(SBHStackConfigurationBackgroundViewController *)v31 setFooterButtons:v14];

  view = [(SBHStackConfigurationBackgroundViewController *)v31 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = MEMORY[0x1E696ACD8];
  topAnchor = [view topAnchor];
  topAnchor2 = [containerCopy topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v44[0] = v28;
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [containerCopy bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v44[1] = v16;
  leadingAnchor = [view leadingAnchor];
  leadingAnchor2 = [containerCopy leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v44[2] = v19;
  trailingAnchor = [view trailingAnchor];
  trailingAnchor2 = [containerCopy trailingAnchor];

  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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
  delegate = [(SBHStackConfigurationViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [delegate stackConfigurationViewControllerIconViewComponentBackgroundViewType:self];
  }

  else
  {
    v4 = 4;
  }

  return v4;
}

- (void)_setupApertureViewInContainer:(id)container
{
  v35[4] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  _iconViewComponentBackgroundViewType = [(SBHStackConfigurationViewController *)self _iconViewComponentBackgroundViewType];
  v6 = [SBHStackConfigurationApertureView alloc];
  v7 = [(SBHStackConfigurationApertureView *)v6 initWithFrame:_iconViewComponentBackgroundViewType iconViewBackgroundType:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
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
  widthAnchor = [(SBHStackConfigurationApertureView *)v7 widthAnchor];
  widthAnchor2 = [containerCopy widthAnchor];
  v14 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:v11];

  heightAnchor = [(SBHStackConfigurationApertureView *)v7 heightAnchor];
  widthAnchor3 = [(SBHStackConfigurationApertureView *)v7 widthAnchor];
  v17 = [heightAnchor constraintEqualToAnchor:widthAnchor3 multiplier:1.0];

  centerXAnchor = [(SBHStackConfigurationApertureView *)v7 centerXAnchor];
  centerXAnchor2 = [containerCopy centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

  centerYAnchor = [(SBHStackConfigurationApertureView *)v7 centerYAnchor];
  centerYAnchor2 = [containerCopy centerYAnchor];
  v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

  [containerCopy addSubview:v7];
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

- (void)_setupScrollViewInContainer:(id)container
{
  v24[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E698E808];
  containerCopy = container;
  v6 = [v4 alloc];
  [containerCopy bounds];
  v7 = [v6 initWithFrame:?];
  [(BSUIScrollView *)v7 setContentInsetAdjustmentBehavior:2];
  [(BSUIScrollView *)v7 setDecelerationRate:*MEMORY[0x1E69DE3A0]];
  [(BSUIScrollView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BSUIScrollView *)v7 setShowsHorizontalScrollIndicator:0];
  [(BSUIScrollView *)v7 setShowsVerticalScrollIndicator:0];
  [(BSUIScrollView *)v7 setAlwaysBounceVertical:1];
  [(BSUIScrollView *)v7 setClipsToBounds:0];
  [(BSUIScrollView *)v7 setDelegate:self];
  [containerCopy addSubview:v7];
  v18 = MEMORY[0x1E696ACD8];
  topAnchor = [containerCopy topAnchor];
  topAnchor2 = [(BSUIScrollView *)v7 topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[0] = v20;
  bottomAnchor = [containerCopy bottomAnchor];
  bottomAnchor2 = [(BSUIScrollView *)v7 bottomAnchor];
  v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[1] = v9;
  leadingAnchor = [containerCopy leadingAnchor];
  leadingAnchor2 = [(BSUIScrollView *)v7 leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[2] = v12;
  trailingAnchor = [containerCopy trailingAnchor];

  trailingAnchor2 = [(BSUIScrollView *)v7 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [v18 activateConstraints:v16];

  scrollView = self->_scrollView;
  self->_scrollView = v7;
}

- (void)_setupIconListViewCenteredInScrollView:(id)view
{
  v116 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  icon = [(SBIconView *)self->_stackIconView icon];
  gridSizeClass = [icon gridSizeClass];

  dataSources = [(SBHStackConfiguration *)self->_configuration dataSources];
  location = [(SBIconView *)self->_stackIconView location];
  v8 = [(SBIconListLayoutProvider *)self->_listLayoutProvider layoutForIconLocation:location];
  [v8 iconImageInfoForGridSizeClass:gridSizeClass];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = SBHIconListLayoutEditingAnimationStrengthForGridSizeClass(v8, gridSizeClass);
  [(SBHStackConfigurationViewController *)self _iconContentScale];
  v19 = v18;
  v20 = MEMORY[0x1E695F060];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v97 = v8;
  v94 = location;
  v92 = v14;
  v93 = v12;
  v91 = v16;
  v23 = v10;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  v33 = [(SBHIconGridSizeClassSizeMap *)v96 gridSizeForGridSizeClass:gridSizeClass];
  columns = v33.columns;
  v35 = HIWORD(*&v33);
  maximumWidgetsInAStack = [(SBHWidgetSettings *)self->_widgetSettings maximumWidgetsInAStack];
  v37 = columns;
  v38 = maximumWidgetsInAStack * v35;
  v39 = [[SBIconListModel alloc] initWithFolder:0 gridSize:columns | (maximumWidgetsInAStack << 16)];
  [(SBIconListModel *)v39 setDelegate:self];
  v110 = 0u;
  v111 = 0u;
  v109 = 0u;
  v108 = 0u;
  v40 = dataSources;
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

        v45 = [(SBHStackConfigurationViewController *)self _unraveledWidgetIconForDataSource:*(*(&v108 + 1) + 8 * i) withGridSizeClass:gridSizeClass];
        v46 = [(SBIconListModel *)v39 addIcon:v45];
      }

      v42 = [v40 countByEnumeratingWithState:&v108 objects:v115 count:16];
    }

    while (v42);
  }

  [(SBIconListModel *)v39 addListObserver:self];
  icon2 = [(SBIconView *)self->_stackIconView icon];
  [icon2 addObserver:self];

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
  v89 = [[SBHIconGridSizeClassSet alloc] initWithGridSizeClass:gridSizeClass];
  [(SBIconListGridLayoutConfiguration *)v54 setSupportedIconGridSizeClasses:?];
  v55 = [[SBIconListGridLayout alloc] initWithLayoutConfiguration:v54];
  iconAccessoryVisualConfiguration = [v97 iconAccessoryVisualConfiguration];
  layoutConfiguration = [(SBIconListGridLayout *)v55 layoutConfiguration];
  v87 = iconAccessoryVisualConfiguration;
  [layoutConfiguration setIconAccessoryVisualConfiguration:iconAccessoryVisualConfiguration];

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
  legibilitySettings = [(SBIconView *)self->_stackIconView legibilitySettings];
  [(SBIconListView *)v61 setLegibilitySettings:legibilitySettings];

  delegate = [(SBHStackConfigurationViewController *)self delegate];
  v90 = v54;
  v95 = delegate;
  if (objc_opt_respondsToSelector())
  {
    if ([delegate stackConfigurationViewControllerShouldDisallowLabelArea:self])
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
  [viewCopy addSubview:v61];
  v79 = MEMORY[0x1E696ACD8];
  topAnchor = [(SBHStackConfigurationIconListView *)v61 topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v83 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v112[0] = v83;
  bottomAnchor = [(SBHStackConfigurationIconListView *)v61 bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];
  v80 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v112[1] = v80;
  centerXAnchor = [(SBHStackConfigurationIconListView *)v61 centerXAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];
  v76 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v112[2] = v76;
  trailingAnchor = [(SBHStackConfigurationIconListView *)v61 trailingAnchor];
  trailingAnchor2 = [viewCopy trailingAnchor];
  v73 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v112[3] = v73;
  leadingAnchor = [(SBHStackConfigurationIconListView *)v61 leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v67 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  v112[4] = v67;
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:5];
  [v79 activateConstraints:v68];

  [(SBIconListView *)v61 intrinsicContentSize];
  [viewCopy setContentSize:?];
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

- (void)_setupPageControlInContainer:(id)container
{
  v26[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DCD10];
  containerCopy = container;
  v6 = objc_alloc_init(v4);
  [(UIPageControl *)v6 addTarget:self action:sel__didChangePageControlPage_ forControlEvents:4096];
  [(UIPageControl *)v6 setAllowsContinuousInteraction:0];
  [(UIPageControl *)v6 setHidesForSinglePage:1];
  [(UIPageControl *)v6 setDirection:3];
  legibilitySettings = [(SBIconView *)self->_stackIconView legibilitySettings];
  primaryColor = [legibilitySettings primaryColor];
  [(UIPageControl *)v6 setCurrentPageIndicatorTintColor:primaryColor];

  secondaryColor = [legibilitySettings secondaryColor];
  [(UIPageControl *)v6 setPageIndicatorTintColor:secondaryColor];

  dataSources = [(SBHStackConfiguration *)self->_configuration dataSources];
  v11 = [dataSources count];

  [(UIPageControl *)v6 setNumberOfPages:v11];
  [(UIPageControl *)v6 _setPreferredNumberOfVisibleIndicators:[(SBHWidgetSettings *)self->_widgetSettings maximumWidgetsInAStack]];
  CGAffineTransformMakeScale(&v25, 1.0, 1.0);
  [(UIPageControl *)v6 setTransform:&v25];
  [(UIPageControl *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [containerCopy addSubview:v6];

  v12 = self->_apertureView;
  centerXAnchor = [(UIPageControl *)v6 centerXAnchor];
  trailingAnchor = [(SBHStackConfigurationApertureView *)v12 trailingAnchor];
  [(SBHStackConfigurationViewController *)self _expandedPageControlOutset];
  v15 = [centerXAnchor constraintEqualToAnchor:trailingAnchor constant:?];

  v16 = MEMORY[0x1E696ACD8];
  centerYAnchor = [(UIPageControl *)v6 centerYAnchor];
  centerYAnchor2 = [(SBHStackConfigurationApertureView *)v12 centerYAnchor];
  v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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

- (id)_unraveledWidgetIconForDataSource:(id)source withGridSizeClass:(id)class
{
  classCopy = class;
  sourceCopy = source;
  v8 = objc_opt_respondsToSelector();
  v9 = [SBWidgetIcon alloc];
  v10 = v9;
  if (v8)
  {
    uniqueIdentifier = [sourceCopy uniqueIdentifier];
    initWithUniqueLeafIdentifier = [(SBWidgetIcon *)v10 initWithLeafIdentifier:uniqueIdentifier applicationBundleID:0];
  }

  else
  {
    initWithUniqueLeafIdentifier = [(SBLeafIcon *)v9 initWithUniqueLeafIdentifier];
  }

  [(SBLeafIcon *)initWithUniqueLeafIdentifier addIconDataSource:sourceCopy];

  [(SBIcon *)initWithUniqueLeafIdentifier setGridSizeClass:classCopy];
  [(SBLeafIcon *)initWithUniqueLeafIdentifier addObserver:self];

  return initWithUniqueLeafIdentifier;
}

- (void)_setupTapToDismissGestureInView:(id)view
{
  v4 = MEMORY[0x1E69DD060];
  viewCopy = view;
  v6 = [[v4 alloc] initWithTarget:self action:sel__didTapBackgroundView_];
  [v6 setDelegate:self];
  [v6 setDelaysTouchesBegan:0];
  [v6 setDelaysTouchesEnded:0];
  [viewCopy addGestureRecognizer:v6];
}

- (void)_setupLargeSizeLayoutAdjustmentsIfNecessary
{
  icon = [(SBIconView *)self->_stackIconView icon];
  gridSizeClass = [icon gridSizeClass];

  stackSizeIsSmall = self->_stackSizeIsSmall;
  if (gridSizeClass == @"SBHIconGridSizeClassMedium")
  {
    v5 = 0;
    if (self->_stackSizeIsSmall)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = [(__CFString *)gridSizeClass isEqualToString:?]^ 1;
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
  widthAnchor = [(SBHStackConfigurationApertureView *)v6 widthAnchor];
  superview = [(SBHStackConfigurationApertureView *)v6 superview];
  widthAnchor2 = [superview widthAnchor];
  v18 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:v14];

  [v18 setActive:1];
  objc_storeStrong(&self->_apertureSizeConstraint, v18);
  if (v5)
  {
    [(NSLayoutConstraint *)self->_apertureHeightConstraint setActive:0];
    if (gridSizeClass == @"SBHIconGridSizeClassExtraLarge" || [(__CFString *)gridSizeClass isEqualToString:?])
    {
      v19 = (v10 * v14 - width * v12 + height * v12) / (v10 * v14);
    }

    else
    {
      v19 = height / width;
    }

    heightAnchor = [(SBHStackConfigurationApertureView *)v6 heightAnchor];
    widthAnchor3 = [(SBHStackConfigurationApertureView *)v6 widthAnchor];
    v22 = [heightAnchor constraintEqualToAnchor:widthAnchor3 multiplier:v19];

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

- (id)makeTitledButtonOfClass:(Class)class
{
  v4 = [class alloc];
  v5 = [v4 initWithFrame:3 material:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  configuration = [v5 configuration];
  [(SBHRootFolderVisualConfiguration *)self->_rootFolderVisualConfiguration editModeButtonContentEdgeInsets];
  [configuration setContentInsets:?];
  [v5 setConfiguration:configuration];
  [(SBHRootFolderVisualConfiguration *)self->_rootFolderVisualConfiguration editModeButtonSize];
  [v5 setPreferredContentFittingSize:?];
  legibilitySettings = [(SBIconView *)self->_stackIconView legibilitySettings];
  [v5 setLegibilitySettings:legibilitySettings];

  materialView = [v5 materialView];
  legibilitySettings2 = [(SBIconView *)self->_stackIconView legibilitySettings];
  [materialView setLegibilityStyle:{objc_msgSend(legibilitySettings2, "style")}];

  legibilitySettings3 = [(SBIconView *)self->_stackIconView legibilitySettings];
  [v5 setLegibilitySettings:legibilitySettings3];

  return v5;
}

- (void)_updateLayoutForEditButtons
{
  view = [(SBHStackConfigurationViewController *)self view];
  [(UIView *)view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SBHStackConfigurationViewController *)self contentBoundingFrame];
  v14 = v13 == v9 && v12 == v11;
  scalingView = view;
  if (v14)
  {
    scalingView = self->_scalingView;
  }

  v16 = scalingView;
  if ([(UIView *)v16 isEqual:view])
  {
    [(UIView *)view sbh_createGlassGroupInForeground:1];
  }

  doneButton = [(SBHStackConfigurationViewController *)self doneButton];
  addButton = [(SBHStackConfigurationViewController *)self addButton];
  superview = [doneButton superview];

  if (superview != v16)
  {
    [(UIView *)v16 addSubview:doneButton];
  }

  superview2 = [addButton superview];

  if (superview2 != v16)
  {
    [(UIView *)v16 addSubview:addButton];
  }

  v21 = *(MEMORY[0x1E695F058] + 16);
  v24 = *MEMORY[0x1E695F058];
  v25 = v21;
  v22 = v24;
  v23 = v21;
  +[SBRootFolderView _editButtonLayoutFramesInBounds:forVisualConfiguration:withTranslationOffset:inRTL:doneButton:addWidgetButton:doneButtonFrame:addWidgetButtonFrame:](SBRootFolderView, "_editButtonLayoutFramesInBounds:forVisualConfiguration:withTranslationOffset:inRTL:doneButton:addWidgetButton:doneButtonFrame:addWidgetButtonFrame:", self->_rootFolderVisualConfiguration, [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1, doneButton, addButton, &v22, &v24, v5, v7, v9, v11, 0.0);
  [doneButton setFrame:{v22, v23}];
  [addButton setFrame:{v24, v25}];
}

- (void)iconTapped:(id)tapped
{
  v7 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  if ([tappedCopy supportsConfigurationCard])
  {
    v4 = SBLogIcon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = tappedCopy;
      _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "Starting configuration of icon within stack configuration due to tap: %@", &v5, 0xCu);
    }

    [tappedCopy presentConfigurationCard];
  }
}

- (void)iconCloseBoxTapped:(id)tapped
{
  tappedCopy = tapped;
  icon = [tappedCopy icon];
  displayName = [icon displayName];

  v6 = MEMORY[0x1E69DC650];
  v7 = MEMORY[0x1E696AEC0];
  v8 = SBHBundle();
  v9 = [v8 localizedStringForKey:@"REMOVE_WIDGET_TITLE_REMOVE_WITH_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v28 = displayName;
  v10 = [v7 stringWithFormat:v9, displayName];
  v11 = MEMORY[0x1E696AEC0];
  v12 = SBHBundle();
  v13 = [v12 localizedStringForKey:@"REMOVE_WIDGET_BODY_REMOVE_DATA" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v14 = [v11 stringWithFormat:v13, displayName];
  v15 = [v6 alertControllerWithTitle:v10 message:v14 preferredStyle:1];

  v16 = self->_iconListView;
  v17 = MEMORY[0x1E69DC648];
  v18 = SBHBundle();
  v19 = [v18 localizedStringForKey:@"REMOVE_WIDGET_BUTTON_REMOVE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __58__SBHStackConfigurationViewController_iconCloseBoxTapped___block_invoke;
  v29[3] = &unk_1E808C840;
  v30 = tappedCopy;
  v31 = v16;
  selfCopy = self;
  v20 = v16;
  v21 = tappedCopy;
  v22 = [v17 actionWithTitle:v19 style:2 handler:v29];

  [v15 addAction:v22];
  v23 = MEMORY[0x1E69DC648];
  icon2 = [v21 icon];
  uninstallAlertCancelTitle = [icon2 uninstallAlertCancelTitle];
  v26 = [v23 actionWithTitle:uninstallAlertCancelTitle style:1 handler:0];

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

- (void)iconAccessoryViewTapped:(id)tapped
{
  icon = [tapped icon];
  if ([icon isWidgetIcon])
  {
    [(SBHStackConfigurationViewController *)self _promoteWidgetIcon:icon];
    [(SBIconListView *)self->_iconListView layoutIconsIfNeededWithAnimationType:0 options:0];
  }
}

- (void)_promoteWidgetIcon:(id)icon
{
  iconCopy = icon;
  activeDataSource = [iconCopy activeDataSource];
  delegate = [(SBHStackConfigurationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    icon = [(SBIconView *)self->_stackIconView icon];
    v7 = [delegate stackConfigurationViewController:self promoteSuggestedWidget:activeDataSource withinStack:icon];
    if (v7)
    {
      [iconCopy replaceIconDataSource:activeDataSource withIconDataSource:v7];
    }
  }
}

- (BOOL)iconViewDisplaysLabel:(id)label
{
  labelCopy = label;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(SBIconViewDelegate *)self->_defaultIconViewDelegate iconViewDisplaysLabel:labelCopy];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)iconViewDisplaysAccessories:(id)accessories
{
  icon = [accessories icon];
  if ([icon isWidgetIcon])
  {
    activeDataSource = [icon activeDataSource];
    v6 = [(SBHStackConfigurationViewController *)self _widgetDataSourceIsSuggestion:activeDataSource];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)iconViewDisplaysCloseBox:(id)box
{
  icon = [box icon];
  if ([icon isWidgetIcon])
  {
    activeDataSource = [icon activeDataSource];
    if ([(SBHStackConfigurationViewController *)self _widgetDataSourceIsSuggestion:activeDataSource])
    {
      v6 = 0;
    }

    else
    {
      delegate = [(SBHStackConfigurationViewController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v6 = [delegate stackConfigurationViewController:self allowsRemovalOfIconDataSource:activeDataSource];
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

- (int64_t)iconView:(id)view accessoryTypeWithProposedAccessoryType:(int64_t)type
{
  viewCopy = view;
  icon = [viewCopy icon];
  isEditing = [viewCopy isEditing];

  if (!isEditing || ![icon isWidgetIcon])
  {
    if (type != 3)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  activeDataSource = [icon activeDataSource];
  v10 = [(SBHStackConfigurationViewController *)self _widgetDataSourceIsSuggestion:activeDataSource];

  if (type == 3 || v10)
  {
LABEL_7:
    if ([(SBHStackConfigurationViewController *)self _canAddAdditionalWidgets])
    {
      type = 3;
    }

    else
    {
      type = 0;
    }
  }

LABEL_10:

  return type;
}

- (id)customImageViewControllerForIconView:(id)view
{
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(SBIconViewDelegate *)self->_defaultIconViewDelegate customImageViewControllerForIconView:viewCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)iconView:(id)view supportsConfigurationForDataSource:(id)source
{
  viewCopy = view;
  sourceCopy = source;
  if (objc_opt_respondsToSelector())
  {
    v8 = [(SBIconViewDelegate *)self->_defaultIconViewDelegate iconView:viewCopy supportsConfigurationForDataSource:sourceCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)iconView:(id)view configurationInteractionForDataSource:(id)source
{
  viewCopy = view;
  sourceCopy = source;
  if (objc_opt_respondsToSelector())
  {
    v8 = [(SBIconViewDelegate *)self->_defaultIconViewDelegate iconView:viewCopy configurationInteractionForDataSource:sourceCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)iconView:(id)view userInterfaceStyleForConfigurationInteraction:(id)interaction
{
  viewCopy = view;
  interactionCopy = interaction;
  if (objc_opt_respondsToSelector())
  {
    userInterfaceStyle = [(SBIconViewDelegate *)self->_defaultIconViewDelegate iconView:viewCopy userInterfaceStyleForConfigurationInteraction:interactionCopy];
  }

  else
  {
    traitCollection = [(SBHStackConfigurationViewController *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
  }

  return userInterfaceStyle;
}

- (void)iconView:(id)view configurationDidUpdateWithInteraction:(id)interaction
{
  viewCopy = view;
  interactionCopy = interaction;
  if (objc_opt_respondsToSelector())
  {
    [(SBIconViewDelegate *)self->_defaultIconViewDelegate iconView:viewCopy configurationDidUpdateWithInteraction:interactionCopy];
  }
}

- (void)iconView:(id)view configurationWillBeginWithInteraction:(id)interaction
{
  viewCopy = view;
  currentConfiguringIconView = [(SBHStackConfigurationViewController *)self currentConfiguringIconView];
  if (currentConfiguringIconView != viewCopy)
  {
    [currentConfiguringIconView dismissConfigurationCardImmediately];
    [(SBHStackConfigurationViewController *)self setCurrentConfiguringIconView:viewCopy];
  }
}

- (void)iconView:(id)view configurationWillEndWithInteraction:(id)interaction
{
  iconListView = self->_iconListView;
  viewCopy = view;
  icons = [(SBIconListView *)iconListView icons];
  icon = [viewCopy icon];

  v9 = [icons indexOfObject:icon];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(SBHStackConfigurationViewController *)self _scrollToWidgetIndex:v9 animated:1];
  }
}

- (void)iconView:(id)view configurationDidEndWithInteraction:(id)interaction
{
  viewCopy = view;
  currentConfiguringIconView = [(SBHStackConfigurationViewController *)self currentConfiguringIconView];

  if (currentConfiguringIconView == viewCopy)
  {

    [(SBHStackConfigurationViewController *)self setCurrentConfiguringIconView:0];
  }
}

- (double)verticalMarginPercentageForConfigurationOfIconView:(id)view
{
  viewCopy = view;
  v5 = -1.0;
  if (objc_opt_respondsToSelector())
  {
    [(SBIconViewDelegate *)self->_defaultIconViewDelegate verticalMarginPercentageForConfigurationOfIconView:viewCopy];
    v5 = v6;
  }

  return v5;
}

- (void)leafIcon:(id)icon didChangeActiveDataSource:(id)source
{
  stackIconView = self->_stackIconView;
  iconCopy = icon;
  icon = [(SBIconView *)stackIconView icon];

  if (icon != iconCopy)
  {

    [(SBHStackConfigurationViewController *)self _iconListDidChangeWidgetIcons];
  }
}

- (void)leafIcon:(id)icon didAddIconDataSource:(id)source
{
  iconCopy = icon;
  sourceCopy = source;
  icon = [(SBIconView *)self->_stackIconView icon];

  if (icon == iconCopy)
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
    v10 = sourceCopy;
    v20 = v10;
    [(SBIconListModel *)v9 enumerateIconsUsingBlock:&v16];
    if ((v23[3] & 1) == 0)
    {
      iconDataSources = [iconCopy iconDataSources];
      v12 = [iconDataSources indexOfObject:v10];

      gridSizeClass = [iconCopy gridSizeClass];
      v14 = [(SBHStackConfigurationViewController *)self _unraveledWidgetIconForDataSource:v10 withGridSizeClass:gridSizeClass];
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

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [(SBHStackConfigurationViewController *)self _updateCurrentPageControlPage];
  [(SBHStackConfigurationViewController *)self _updatePresentationModeForIconViews];
  [(SBHScrollableIconViewInteraction *)self->_scrollingInteraction clippingScrollViewDidScroll:scrollCopy];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  [dragging contentOffset];
  v8 = [(SBHStackConfigurationViewController *)self _widgetIndexForContentOffset:?];
  v9 = [(SBHStackConfigurationViewController *)self _widgetIndexForContentOffset:offset->x, offset->y];
  icons = [(SBIconListView *)self->_iconListView icons];
  v11 = [icons count];

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
  offset->x = v15;
  offset->y = v16;
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

- (void)coronaAnimationController:(id)controller willAnimateCoronaTransitionWithAnimator:(id)animator
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
  [animator addAnimations:v10];
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
    icon = [(SBIconView *)self->_stackIconView icon];
    gridSizeClass = [icon gridSizeClass];

    delegate = [(SBHStackConfigurationViewController *)self delegate];
    [delegate stackConfigurationViewController:self iconContentScaleForGridSizeClass:gridSizeClass];
    v3 = v7;

    if (v3 <= 0.0)
    {
      if (gridSizeClass == @"SBHIconGridSizeClassMedium" || [(__CFString *)gridSizeClass isEqualToString:?])
      {
        [(SBHWidgetSettings *)self->_widgetSettings stackConfigurationMediumIconScale];
      }

      else if (gridSizeClass == @"SBHIconGridSizeClassLarge" || ([(__CFString *)gridSizeClass isEqualToString:?]& 1) != 0 || gridSizeClass == @"SBHIconGridSizeClassNewsLargeTall" || [(__CFString *)gridSizeClass isEqualToString:?])
      {
        [(SBHWidgetSettings *)self->_widgetSettings stackConfigurationLargeIconScale];
      }

      else
      {
        if (gridSizeClass != @"SBHIconGridSizeClassExtraLarge")
        {
          v3 = 1.0;
          if (![(__CFString *)gridSizeClass isEqualToString:?])
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  result = 14.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
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
  icon = [(SBIconView *)self->_stackIconView icon];
  dataSources = [(SBHStackConfiguration *)self->_configuration dataSources];
  activeDataSource = [icon activeDataSource];
  v6 = [dataSources indexOfObject:activeDataSource];

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

- (unint64_t)_widgetIndexForContentOffset:(CGPoint)offset
{
  y = offset.y;
  [(SBHStackConfigurationApertureView *)self->_apertureView bounds];
  v6 = v5 * 0.5;
  [(SBIconListView *)self->_iconListView iconSpacing];
  v8 = v7;
  [(SBIconListView *)self->_iconListView additionalLayoutInsets];
  v10 = v9;
  height = self->_iconImageInfo.size.height;
  [(SBIconListView *)self->_iconListView iconContentScale];
  v13 = vcvtmd_u64_f64((v6 + v8 * 0.5 + y - v10) / (v8 + height * v12));
  icons = [(SBIconListView *)self->_iconListView icons];
  v15 = [icons count] - 1;

  if (v15 >= v13)
  {
    return v13;
  }

  else
  {
    return v15;
  }
}

- (CGPoint)_targetContentOffsetForWidgetIndex:(unint64_t)index
{
  [(SBIconListView *)self->_iconListView iconContentScale];
  v6 = v5;
  height = self->_iconImageInfo.size.height;
  [(SBIconListView *)self->_iconListView iconSpacing];
  v9 = (v6 * height + v8) * index;
  v10 = 0.0;
  result.y = v9;
  result.x = v10;
  return result;
}

- (void)_scrollToWidgetIndex:(unint64_t)index animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  icons = [(SBIconListView *)self->_iconListView icons];
  v9 = [icons count];

  if (v9 <= index)
  {
    v18 = completionCopy;
    if (!completionCopy)
    {
      goto LABEL_12;
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

  else
  {
    [(SBHStackConfigurationApertureView *)self->_apertureView layoutIfNeeded];
    v10 = 0.0;
    if (self->_scrollPositionNeed == 2)
    {
      customIconImageViewController = [(SBIconView *)self->_stackIconView customIconImageViewController];
      v12 = -1.0;
      if (objc_opt_respondsToSelector())
      {
        if ([customIconImageViewController imageViewAlignment] == 1)
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

    [(SBHStackConfigurationViewController *)self _targetContentOffsetForWidgetIndex:index];
    [(BSUIScrollView *)self->_scrollView setContentOffset:animatedCopy animated:completionCopy completion:v16 + 0.0, v10 + v17];
  }

  v18 = completionCopy;
LABEL_12:
}

- (void)_setPageControlScale:(double)scale
{
  pageControl = self->_pageControl;
  CGAffineTransformMakeScale(&v4, scale, scale);
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
  icons = [(SBIconListView *)self->_iconListView icons];
  v4 = [icons count];

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

- (void)_setupMatchMoveAnimationWithSourceView:(id)view targetView:(id)targetView
{
  v5 = MEMORY[0x1E69D3FA0];
  targetViewCopy = targetView;
  v7 = [v5 matchMoveAnimationForPinningToView:view];
  [targetViewCopy addAnimation:v7 forKey:@"SBHStackConfigurationBackgroundMatchMoveKey"];
}

- (void)_updateButtonSubtitleForSmartRotate:(BOOL)rotate animated:(BOOL)animated
{
  animatedCopy = animated;
  configuration = self->_configuration;
  if (rotate)
  {
    allowsSuggestions = [(SBHStackConfiguration *)configuration allowsSuggestions];
    v9 = &OBJC_IVAR___SBHStackConfigurationViewController__smartRotateButtonViewController;
  }

  else
  {
    allowsSuggestions = [(SBHStackConfiguration *)configuration allowsExternalSuggestions];
    v9 = &OBJC_IVAR___SBHStackConfigurationViewController__suggestionsButtonViewController;
  }

  v10 = *(&self->super.super.super.isa + *v9);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__SBHStackConfigurationViewController__updateButtonSubtitleForSmartRotate_animated___block_invoke;
  aBlock[3] = &unk_1E80897D8;
  v11 = v10;
  v25 = v11;
  v26 = allowsSuggestions;
  v12 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __84__SBHStackConfigurationViewController__updateButtonSubtitleForSmartRotate_animated___block_invoke_2;
  v19[3] = &unk_1E808C890;
  rotateCopy = rotate;
  v22 = allowsSuggestions;
  v23 = animatedCopy;
  v13 = v11;
  v20 = v13;
  v14 = _Block_copy(v19);
  if (animatedCopy)
  {
    v15 = MEMORY[0x1E69DD250];
    view = [v13 view];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __84__SBHStackConfigurationViewController__updateButtonSubtitleForSmartRotate_animated___block_invoke_6;
    v17[3] = &unk_1E8089600;
    v18 = v12;
    [v15 transitionWithView:view duration:5242886 options:v17 animations:0 completion:0.15];

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
  _canAddAdditionalWidgets = [(SBHStackConfigurationViewController *)self _canAddAdditionalWidgets];

  [(SBHomeScreenButton *)addButton setEnabled:_canAddAdditionalWidgets];
}

- (void)_iconListDidChangeWidgetIcons
{
  model = [(SBIconListView *)self->_iconListView model];
  icons = [model icons];
  v5 = [icons bs_compactMap:&__block_literal_global_40];

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
  delegate = [(SBHStackConfigurationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate stackConfigurationViewController:self didCommitStackConfiguration:self->_configuration];
  }
}

- (void)_updateEditingStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = self->_editingIcons && !self->_suppressesEditingStateForListView;
  [(SBIconListView *)self->_iconListView setEditing:v5];
  iconListView = self->_iconListView;

  [(SBIconListView *)iconListView updateEditingStateAnimated:animatedCopy];
}

- (void)_requestDismissal
{
  delegate = [(SBHStackConfigurationViewController *)self delegate];
  [delegate stackConfigurationViewControllerRequestsDismissal:self];
}

- (BOOL)_widgetDataSourceIsSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  objc_opt_class();
  v4 = ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && [suggestionCopy suggestionSource] == 1;

  return v4;
}

- (BOOL)_canAddAdditionalWidgets
{
  selfCopy = self;
  dataSources = [(SBHStackConfiguration *)self->_configuration dataSources];
  v4 = [dataSources count];
  LOBYTE(selfCopy) = v4 < [(SBHWidgetSettings *)selfCopy->_widgetSettings maximumWidgetsInAStack];

  return selfCopy;
}

- (void)setTitledButtonsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  doneButton = [(SBHStackConfigurationViewController *)self doneButton];
  [doneButton setEnabled:enabledCopy];

  addButton = [(SBHStackConfigurationViewController *)self addButton];
  [addButton setEnabled:enabledCopy];
}

- (void)_didChangePageControlPage:(id)page
{
  currentPage = [page currentPage];
  [(SBHScrollableIconViewInteraction *)self->_scrollingInteraction updateScrolling:1];
  [(SBHStackConfigurationViewController *)self _scrollToWidgetIndex:currentPage animated:0];
  scrollingInteraction = self->_scrollingInteraction;

  [(SBHScrollableIconViewInteraction *)scrollingInteraction updateScrolling:0];
}

- (void)_didToggleSmartRotate:(id)rotate
{
  [(SBHStackConfiguration *)self->_configuration setAllowsSuggestions:[(SBHStackConfiguration *)self->_configuration allowsSuggestions]^ 1];
  [(SBHStackConfigurationViewController *)self _updateButtonSubtitleForSmartRotate:1 animated:1];

  [(SBHStackConfigurationViewController *)self _saveConfiguration];
}

- (void)_didToggleSuggestions:(id)suggestions
{
  allowsExternalSuggestions = [(SBHStackConfiguration *)self->_configuration allowsExternalSuggestions];
  if (allowsExternalSuggestions)
  {
    v5 = self->_iconListView;
    icons = [(SBIconListView *)v5 icons];
    v7 = [icons bs_compactMap:&__block_literal_global_288];

    model = [(SBIconListView *)self->_iconListView model];
    [model removeIcons:v7 options:0];
    [(SBIconListView *)v5 layoutIconsIfNeededWithAnimationType:0 options:0];
  }

  [(SBHStackConfiguration *)self->_configuration setAllowsExternalSuggestions:!allowsExternalSuggestions];
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

- (void)_didTapAddWidgetButton:(id)button
{
  v11 = *MEMORY[0x1E69E9840];
  dataSources = [(SBHStackConfiguration *)self->_configuration dataSources];
  v5 = [dataSources count];
  maximumWidgetsInAStack = [(SBHWidgetSettings *)self->_widgetSettings maximumWidgetsInAStack];

  delegate = SBLogIcon();
  v8 = os_log_type_enabled(delegate, OS_LOG_TYPE_INFO);
  if (v5 >= maximumWidgetsInAStack)
  {
    if (v8)
    {
      v9 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1BEB18000, delegate, OS_LOG_TYPE_INFO, "'%@' ignoring tap to present Add Widget Sheet", &v9, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      v9 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1BEB18000, delegate, OS_LOG_TYPE_INFO, "'%@' requesting presentation of Add Widget Sheet", &v9, 0xCu);
    }

    delegate = [(SBHStackConfigurationViewController *)self delegate];
    [delegate stackConfigurationViewControllerRequestsPresentAddWidgetSheet:self];
  }
}

- (void)_didTapDoneButton:(id)button
{
  v8 = *MEMORY[0x1E69E9840];
  delegate = [(SBHStackConfigurationViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate stackConfigurationViewControllerDoneButtonTapped:self];
  }

  v5 = SBLogIcon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_INFO, "'%@' requesting dismissal; Done button tapped", &v6, 0xCu);
  }

  [(SBHStackConfigurationViewController *)self _requestDismissal];
}

- (void)_didTapBackgroundView:(id)view
{
  v28 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  view = [viewCopy view];
  [viewCopy locationInView:view];
  v7 = v6;
  v9 = v8;
  v10 = [MEMORY[0x1E695DFA8] setWithObject:self->_apertureView];
  view2 = [(CCUILabeledRoundButtonViewController *)self->_smartRotateButtonViewController view];
  [v10 addObject:view2];

  view3 = [(CCUILabeledRoundButtonViewController *)self->_suggestionsButtonViewController view];
  [v10 addObject:view3];

  addButton = [(SBHStackConfigurationViewController *)self addButton];
  [v10 bs_safeAddObject:addButton];

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
        [v19 convertRect:view toView:?];
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
    selfCopy = self;
    _os_log_impl(&dword_1BEB18000, v20, OS_LOG_TYPE_INFO, "'%@' requesting dismissal due to tap gesture", buf, 0xCu);
  }

  [(SBHStackConfigurationViewController *)self _requestDismissal];
LABEL_13:
}

- (void)_updatePresentationModeForIconViews
{
  _shouldKeepIconImageViewControllersStatic = [(SBHStackConfigurationViewController *)self _shouldKeepIconImageViewControllersStatic];
  [(BSUIScrollView *)self->_scrollView contentOffset];
  v3 = [(SBHStackConfigurationViewController *)self _widgetIndexForContentOffset:?];
  v4 = v3 - 1;
  if (!v3)
  {
    v4 = 0;
  }

  v15 = v4;
  icons = [(SBIconListView *)self->_iconListView icons];
  if ([icons count])
  {
    v5 = 0;
    v6 = v3 + 1;
    do
    {
      v7 = v5 < v15 || v5 > v6;
      v8 = v7;
      v9 = v7 || _shouldKeepIconImageViewControllersStatic;
      v10 = [icons objectAtIndexedSubscript:v5];
      v11 = [(SBIconListView *)self->_iconListView iconViewForIcon:v10];
      presentationModeFolderContext = [v11 presentationModeFolderContext];
      v13 = [presentationModeFolderContext mutableCopy];

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

    while (v5 < [icons count]);
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
    selfCopy = self;
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
    model = [(SBIconListView *)self->_iconListView model];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    icons = [model icons];
    v5 = [icons countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(icons);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          if ([(SBIconDragManager *)self->_iconDragManager isTrackingDragOfIcon:v9])
          {
            [model removeIcon:v9];
          }
        }

        v6 = [icons countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(SBHStackConfigurationViewController *)self setDidRemoveDraggedIconsForDismissal:1];
  }
}

- (void)noteIconDrag:(id)drag didEnterIconListView:(id)view
{
  dragCopy = drag;
  viewCopy = view;
  draggingEnteredIconListViews = self->_draggingEnteredIconListViews;
  if (!draggingEnteredIconListViews)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = self->_draggingEnteredIconListViews;
    self->_draggingEnteredIconListViews = v8;

    draggingEnteredIconListViews = self->_draggingEnteredIconListViews;
  }

  [(NSMutableSet *)draggingEnteredIconListViews addObject:viewCopy];
  [dragCopy locationInView:viewCopy];
  v11 = v10;
  v13 = v12;
  [viewCopy bounds];
  v17.x = v11;
  v17.y = v13;
  if (CGRectContainsPoint(v18, v17))
  {
    [(SBHStackConfigurationViewController *)self _cancelAllInteractionTimers];
    self->_grabbedIconHasEverEnteredStackConfigurationView = 1;
  }

  delegate = [(SBHStackConfigurationViewController *)self delegate];
  [delegate stackConfigurationViewController:self isConsumingDropSession:dragCopy];
}

- (void)noteIconDrag:(id)drag didChangeInIconListView:(id)view
{
  dragCopy = drag;
  viewCopy = view;
  if (![(SBHStackConfigurationViewController *)self _allowUserInteraction])
  {
    [(SBHStackConfigurationViewController *)self _cancelAllInteractionTimers];
  }

  if ([(NSMutableSet *)self->_draggingEnteredIconListViews containsObject:viewCopy])
  {
    [dragCopy locationInView:viewCopy];
    v8 = v7;
    v10 = v9;
    [viewCopy bounds];
    v13.x = v8;
    v13.y = v10;
    if (CGRectContainsPoint(v14, v13))
    {
      self->_grabbedIconHasEverEnteredStackConfigurationView = 1;
    }

    else
    {
      [(NSMutableSet *)self->_draggingEnteredIconListViews removeObject:viewCopy];
      [(SBHStackConfigurationViewController *)self _setCloseFolderTimerIfNecessary];
    }
  }
}

- (void)noteIconDrag:(id)drag didExitIconListView:(id)view
{
  viewCopy = view;
  if ([(NSMutableSet *)self->_draggingEnteredIconListViews containsObject:?])
  {
    [(NSMutableSet *)self->_draggingEnteredIconListViews removeObject:viewCopy];
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

- (void)iconDragManager:(id)manager iconView:(id)view willBeginDragSession:(id)session
{
  [(SBHStackConfigurationViewController *)self setCurrentDraggingIconView:view];
  if (![(SBHStackConfigurationViewController *)self canDismissWhileDragging])
  {
    [(SBHStackConfigurationViewController *)self setTitledButtonsEnabled:0];
  }

  [(SBHStackConfigurationViewController *)self setDidPerformDrop:0];
}

- (void)iconDragManager:(id)manager iconView:(id)view willAnimateDragLiftWithAnimator:(id)animator session:(id)session
{
  viewCopy = view;
  animatorCopy = animator;
  sessionCopy = session;
  delegate = [(SBHStackConfigurationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate stackConfigurationViewController:self iconView:viewCopy willAnimateDragLiftWithAnimator:animatorCopy session:sessionCopy];
  }
}

- (void)iconDragManager:(id)manager iconView:(id)view dragLiftAnimationDidChangeDirection:(int64_t)direction
{
  viewCopy = view;
  delegate = [(SBHStackConfigurationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate stackConfigurationViewController:self iconView:viewCopy dragLiftAnimationDidChangeDirection:direction];
  }
}

- (void)iconDragManager:(id)manager iconView:(id)view item:(id)item willAnimateDragCancelWithAnimator:(id)animator
{
  itemCopy = item;
  if ([(SBHStackConfigurationViewController *)self didRemoveDraggedIconsForDismissal])
  {
    sbh_appDragLocalContext = [itemCopy sbh_appDragLocalContext];
    iconDragManager = self->_iconDragManager;
    uniqueIdentifier = [sbh_appDragLocalContext uniqueIdentifier];
    v10 = [(SBIconDragManager *)iconDragManager draggedIconForIdentifier:uniqueIdentifier];

    model = [(SBIconListView *)self->_iconListView model];
    v12 = [model addIcon:v10];
  }
}

- (void)iconDragManager:(id)manager iconView:(id)view didEndDragSession:(id)session withOperation:(unint64_t)operation
{
  viewCopy = view;
  currentDraggingIconView = [(SBHStackConfigurationViewController *)self currentDraggingIconView];

  if (currentDraggingIconView == viewCopy)
  {
    [(SBHStackConfigurationViewController *)self setCurrentDraggingIconView:0];
  }

  if (![(SBHStackConfigurationViewController *)self canDismissWhileDragging])
  {

    [(SBHStackConfigurationViewController *)self setTitledButtonsEnabled:1];
  }
}

- (BOOL)iconDragManager:(id)manager dragsSupportSystemDragsForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHStackConfigurationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    dragsSupportSystemDragsByDefault = [delegate stackConfigurationViewController:self dragsSupportSystemDragsForIconView:viewCopy];
  }

  else
  {
    dragsSupportSystemDragsByDefault = [viewCopy dragsSupportSystemDragsByDefault];
  }

  v8 = dragsSupportSystemDragsByDefault;

  return v8;
}

- (id)iconDragManager:(id)manager iconDropSessionDidUpdate:(id)update inIconListView:(id)view draggedIcons:(id)icons proposedDropProposal:(id)proposal
{
  proposalCopy = proposal;
  [(SBHStackConfigurationViewController *)self noteIconDrag:update didChangeInIconListView:view];

  return proposalCopy;
}

- (void)iconDragManagerIconDraggingDidChange:(id)change
{
  if (([change isIconDragging] & 1) == 0)
  {

    [(SBHStackConfigurationViewController *)self noteIconDragDidEnd];
  }
}

- (void)iconDragManager:(id)manager didPerformIconDrop:(id)drop withIcons:(id)icons inIconListView:(id)view
{
  [(SBHStackConfigurationViewController *)self _cancelCloseConfigurationTimer:manager];

  [(SBHStackConfigurationViewController *)self setDidPerformDrop:1];
}

- (void)iconDragManager:(id)manager iconListView:(id)view item:(id)item willAnimateDropWithAnimator:(id)animator
{
  viewCopy = view;
  sbh_appDragLocalContext = [item sbh_appDragLocalContext];
  iconDragManager = self->_iconDragManager;
  uniqueIdentifier = [sbh_appDragLocalContext uniqueIdentifier];
  v11 = [(SBIconDragManager *)iconDragManager draggedIconForIdentifier:uniqueIdentifier];

  [viewCopy rectForIcon:v11];
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

- (id)iconDragManager:(id)manager draggedIconForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(SBHStackConfigurationViewController *)self delegate];
  v7 = [delegate stackConfigurationViewController:self draggedIconForIdentifier:identifierCopy];

  return v7;
}

- (id)widgetInsertionRippleIconAnimatorForIcon:(id)icon iconListView:(id)view withReferenceIconView:(id)iconView
{
  listLayoutProvider = self->_listLayoutProvider;
  iconViewCopy = iconView;
  viewCopy = view;
  iconCopy = icon;
  v12 = [(SBIconListLayoutProvider *)listLayoutProvider layoutForIconLocation:@"SBIconLocationRoot"];
  v13 = [SBHWidgetInsertionRippleIconAnimator alloc];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __115__SBHStackConfigurationViewController_widgetInsertionRippleIconAnimatorForIcon_iconListView_withReferenceIconView___block_invoke;
  v16[3] = &unk_1E8088C90;
  v16[4] = self;
  v14 = [(SBHWidgetInsertionRippleIconAnimator *)v13 initWithIconListView:viewCopy widgetIcon:iconCopy referenceLayout:v12 referenceIconView:iconViewCopy additionalIconListView:0 preludeBlock:v16];

  return v14;
}

void __115__SBHStackConfigurationViewController_widgetInsertionRippleIconAnimatorForIcon_iconListView_withReferenceIconView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 stackConfigurationViewControllerWillAnimateWidgetInsertion:*(a1 + 32)];
}

- (id)iconDragManager:(id)manager dragPreviewForIconView:(id)view
{
  viewCopy = view;
  delegate = [(SBHStackConfigurationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate stackConfigurationViewController:self dragPreviewForIconView:viewCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)iconDragManager:(id)manager targetedDragPreviewForIconView:(id)view item:(id)item session:(id)session previewParameters:(id)parameters
{
  viewCopy = view;
  itemCopy = item;
  sessionCopy = session;
  parametersCopy = parameters;
  delegate = [(SBHStackConfigurationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v16 = [delegate stackConfigurationViewController:self targetedDragPreviewForIconView:viewCopy item:itemCopy session:sessionCopy previewParameters:parametersCopy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)windowForIconDragPreviewsForIconDragManager:(id)manager forWindowScene:(id)scene
{
  sceneCopy = scene;
  delegate = [(SBHStackConfigurationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate windowForIconDragPreviewsForStackConfigurationViewController:self forWindowScene:sceneCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)iconListModel:(id)model isAllowedToContainIcon:(id)icon
{
  iconCopy = icon;
  gridSizeClass = [iconCopy gridSizeClass];
  icon = [(SBIconView *)self->_stackIconView icon];
  gridSizeClass2 = [icon gridSizeClass];
  if (gridSizeClass == gridSizeClass2)
  {
    v12 = 1;
  }

  else
  {
    gridSizeClass3 = [iconCopy gridSizeClass];
    icon2 = [(SBIconView *)self->_stackIconView icon];
    gridSizeClass4 = [icon2 gridSizeClass];
    v12 = [gridSizeClass3 isEqualToString:gridSizeClass4];
  }

  return v12;
}

- (void)iconList:(id)list didAddIcon:(id)icon
{
  iconCopy = icon;
  if ([iconCopy isWidgetIcon])
  {
    [iconCopy addObserver:self];
    [(SBHStackConfigurationViewController *)self _iconListDidChangeWidgetIcons];
  }

  [(SBHStackConfigurationViewController *)self _updateForWidgetIconCountChanged];
}

- (void)iconList:(id)list didReplaceIcon:(id)icon withIcon:(id)withIcon
{
  iconCopy = icon;
  withIconCopy = withIcon;
  if (([iconCopy isWidgetIcon] & 1) != 0 || objc_msgSend(withIconCopy, "isWidgetIcon"))
  {
    [iconCopy removeObserver:self];
    [withIconCopy addObserver:self];
    [(SBHStackConfigurationViewController *)self _iconListDidChangeWidgetIcons];
  }

  [(SBHStackConfigurationViewController *)self _updateForWidgetIconCountChanged];
}

- (void)iconList:(id)list didRemoveIcon:(id)icon
{
  iconCopy = icon;
  v5 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    referencedIcon = [iconCopy referencedIcon];
  }

  else
  {
    referencedIcon = iconCopy;
  }

  v7 = referencedIcon;

  if (v7)
  {
    [v7 removeObserver:self];
    [(SBHStackConfigurationViewController *)self _iconListDidChangeWidgetIcons];
  }

  [(SBHStackConfigurationViewController *)self _updateForWidgetIconCountChanged];
}

- (void)iconList:(id)list didMoveIcon:(id)icon
{
  iconCopy = icon;
  v5 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    referencedIcon = [iconCopy referencedIcon];
  }

  else
  {
    referencedIcon = iconCopy;
  }

  v7 = referencedIcon;

  if (v7)
  {
    v8 = v7;
    activeDataSource = [v8 activeDataSource];
    if ([(SBHStackConfigurationViewController *)self _widgetDataSourceIsSuggestion:activeDataSource])
    {
      [(SBHStackConfigurationViewController *)self _promoteWidgetIcon:v8];
    }

    [(SBHStackConfigurationViewController *)self _iconListDidChangeWidgetIcons];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if ([(SBHStackConfigurationViewController *)self canDismissWhileDragging])
  {
    return 1;
  }

  currentDraggingIconView = [(SBHStackConfigurationViewController *)self currentDraggingIconView];
  v4 = currentDraggingIconView == 0;

  return v4;
}

- (void)stackConfigurationView:(id)view didHitTestView:(id)testView atPoint:(CGPoint)point withEvent:(id)event
{
  v7 = MEMORY[0x1E695DF70];
  testViewCopy = testView;
  array = [v7 array];
  addButton = [(SBHStackConfigurationViewController *)self addButton];
  [array bs_safeAddObject:addButton];

  doneButton = [(SBHStackConfigurationViewController *)self doneButton];
  [array bs_safeAddObject:doneButton];

  LOBYTE(doneButton) = [array containsObject:testViewCopy];
  if ((doneButton & 1) == 0)
  {
    delegate = [(SBHStackConfigurationViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate stackConfigurationViewControllerDidReceiveUserTouch:self];
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
  selfCopy = self;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1BEB18000, a3, OS_LOG_TYPE_ERROR, "'%@' forcefully loading view in order to provide a valid animation coordinator. %@ was probably queried outside of a view controller transition animator.", &v6, 0x16u);
}

@end