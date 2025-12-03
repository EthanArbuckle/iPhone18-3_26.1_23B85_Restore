@interface SKUIScrollingTabBarController
+ (BOOL)areScrollingTabsAllowed;
- ($175F26EC2B3A5A0892810A401BCEA849)_viewControllerContentScrollViewContentInsetDescriptor;
- (BOOL)_focusedContentScrollViewIsScrolledToOrPastBottom;
- (BOOL)dynamicBarAnimator:(id)animator canHideBarsByDraggingWithOffset:(double)offset;
- (CGRect)tabBarButtonsContainerFrame;
- (CGRect)tabBarPaletteFrame;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (SKUIScrollingTabBarController)initWithNibName:(id)name bundle:(id)bundle;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (UIOffset)_roundedOffsetFromOffset:(UIOffset)offset;
- (UIOffset)additionalTabBarButtonsContainerPositionOffset;
- (UIOffset)additionalTabBarPalettePositionOffset;
- (double)_effectiveBottomBarOffset;
- (double)_effectiveTopBarHeight;
- (double)contentViewControllerBottomInsetAdjustment;
- (id)_deepestFocusedViewControllerWithTopLevelFocusedViewController:(id)controller;
- (id)_parentCellForViewController:(id)controller;
- (id)_tabBarBackdropGroupName;
- (id)childViewControllerForStatusBarHidden;
- (id)childViewControllerForStatusBarStyle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)contentScrollView;
- (id)presentedViewController;
- (id)rotatingSnapshotViewForWindow:(id)window;
- (id)tabBarPaletteWithHeight:(double)height;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (unint64_t)selectedIndex;
- (unint64_t)supportedInterfaceOrientations;
- (void)_animatePaletteWithSetup:(id)setup animations:(id)animations completion:(id)completion;
- (void)_discardUndesirableLastSelectedPageIndexesWithHorizontalLayoutContext:(id *)context;
- (void)_invalidateContentCollectionViewLayoutForUpdatedContentSizeWithHorizontalLayoutContext:(id *)context indexOfViewControllerWithUpdatedContentSize:(unint64_t)size;
- (void)_notifyViewControllerAppearanceProgressUpdateWithHorizontalLayoutContext:(id *)context;
- (void)_popVisibleNavigationStacksToRootWithHorizontalLayoutContext:(id *)context;
- (void)_selectTabAtIndex:(unint64_t)index shouldFallbackToPoppingToTabRootContent:(BOOL)content;
- (void)_setFocusedViewController:(id)controller showBarsIfNeeded:(BOOL)needed animated:(BOOL)animated notifyDelegate:(BOOL)delegate;
- (void)_setViewControllers:(id)controllers collectionViewsUpdateHandler:(id)handler forFinalTearDown:(BOOL)down;
- (void)_tabBarButtonTapped:(id)tapped;
- (void)_updateAdditionalPositionOffsetsWithUpdateRecord:(id *)record;
- (void)_updateDynamicBarGeometry;
- (void)_updateFocusedViewControllerInsetsForVerticalLayoutChange;
- (void)_updateFocusedViewControllerWithHorizontalLayoutContext:(id *)context;
- (void)_updateForHorizontalLayoutChange;
- (void)_updateHidesBarsOnSwipeAvailability;
- (void)_updateHorizontalScrollingAvailability;
- (void)_updateLayoutOfCollectionViewCell:(id)cell;
- (void)_updateLayoutOfTabBar;
- (void)_updateLayoutOfVisibleCollectionViewCells;
- (void)_updateNavigationBarsForVerticalLayoutChange;
- (void)_updateScrollViewContentOffsetsToTargetContentOffsets;
- (void)_updateStatusBarPositionForcingVisible:(BOOL)visible;
- (void)_updateTabBarBackgroundsAndHairlines;
- (void)_updateTabBarButtons;
- (void)_updateTabBarButtonsSelectionProgressWithHorizontalLayoutContext:(id *)context;
- (void)_updateViewControllerContentScrollViewInset;
- (void)_viewControllerNeedsNestedPagingScrollViewUpdate:(id)update;
- (void)attachTabBarPalette:(id)palette animated:(BOOL)animated completion:(id)completion;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)coder;
- (void)detachTabBarPalette:(id)palette animated:(BOOL)animated completion:(id)completion;
- (void)didUpdateAdditionalTabBarComponentsPositionOffsets;
- (void)dynamicBarAnimatorDidUpdate:(id)update;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)hideBarWithTransition:(int)transition;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)observedScrollViewDidScroll:(id)scroll;
- (void)observedScrollViewWillBeginDragging:(id)dragging;
- (void)observedScrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint)offset;
- (void)scrollViewDidChangeContentInset:(id)inset;
- (void)scrollingTabBarContentCollectionViewDidLayoutSubviews:(id)subviews;
- (void)scrollingTabBarControllerItemContext:(id)context observedNavigationStackDidChange:(id)change;
- (void)scrollingTabBarControllerItemContextRequestsContentOffsetUpdate:(id)update;
- (void)scrollingTabBarControllerItemContextRequestsContentSizeUpdate:(id)update;
- (void)setAdditionalTabBarButtonsContainerPositionOffset:(UIOffset)offset;
- (void)setAdditionalTabBarPalettePositionOffset:(UIOffset)offset;
- (void)setChargeEnabledOnTabBarButtonsContainer:(BOOL)container;
- (void)setClientContext:(id)context;
- (void)setScrollEnabled:(BOOL)enabled;
- (void)setSelectedViewController:(id)controller;
- (void)setTransientViewController:(id)controller animated:(BOOL)animated;
- (void)setViewControllers:(id)controllers;
- (void)showBarWithTransition:(int)transition;
- (void)tabBarBackgroundExtendsBehindPaletteDidChangeForPalette:(id)palette;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTabBarComponentPositionOffsetsWithPresentationValues;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SKUIScrollingTabBarController

+ (BOOL)areScrollingTabsAllowed
{
  if (areScrollingTabsAllowed_sOnceToken != -1)
  {
    +[SKUIScrollingTabBarController areScrollingTabsAllowed];
  }

  return areScrollingTabsAllowed_sAreScrollingTabsAllowed;
}

void __56__SKUIScrollingTabBarController_areScrollingTabsAllowed__block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  areScrollingTabsAllowed_sAreScrollingTabsAllowed = [v0 BOOLForKey:@"AllowsScrollingTabs"];
}

- (SKUIScrollingTabBarController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIScrollingTabBarController initWithNibName:bundle:];
  }

  v11.receiver = self;
  v11.super_class = SKUIScrollingTabBarController;
  v8 = [(SKUIScrollingTabBarController *)&v11 initWithNibName:nameCopy bundle:bundleCopy];
  v9 = v8;
  if (v8)
  {
    v8->_chargeEnabledOnTabBarButtonsContainer = 1;
    v8->_indexOfViewControllerWithUpdatedContentSize = 0x7FFFFFFFFFFFFFFFLL;
    v8->_scrollEnabled = [objc_opt_class() areScrollingTabsAllowed];
  }

  return v9;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  [(SKUIScrollingTabBarController *)self _setViewControllers:0 collectionViewsUpdateHandler:0 forFinalTearDown:1];
  [(SKUIProxyScrollView *)self->_proxyScrollView setDelegate:0];
  [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setDataSource:0];
  [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setDelegate:0];
  tabBarButtons = [(SKUICrossFadingTabBar *)self->_tabBar tabBarButtons];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [tabBarButtons countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(tabBarButtons);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
      }

      while (v5 != v7);
      v5 = [tabBarButtons countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = SKUIScrollingTabBarController;
  [(SKUIViewController *)&v8 dealloc];
}

- (id)childViewControllerForStatusBarHidden
{
  v3 = self->_transientViewController;
  if (!v3)
  {
    v3 = self->_topLevelFocusedViewController;
  }

  return v3;
}

- (id)childViewControllerForStatusBarStyle
{
  v3 = self->_transientViewController;
  if (!v3)
  {
    v3 = self->_topLevelFocusedViewController;
  }

  return v3;
}

- (id)presentedViewController
{
  v5.receiver = self;
  v5.super_class = SKUIScrollingTabBarController;
  presentedViewController = [(SKUIScrollingTabBarController *)&v5 presentedViewController];
  if (!presentedViewController)
  {
    if (self->_isDelegatingPresentedViewControllerLogicToSelectedViewController)
    {
      presentedViewController = 0;
    }

    else
    {
      self->_isDelegatingPresentedViewControllerLogicToSelectedViewController = 1;
      presentedViewController = [(UIViewController *)self->_topLevelFocusedViewController presentedViewController];
      self->_isDelegatingPresentedViewControllerLogicToSelectedViewController = 0;
    }
  }

  return presentedViewController;
}

- (unint64_t)supportedInterfaceOrientations
{
  delegate = [(SKUIScrollingTabBarController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    supportedInterfaceOrientations = [delegate tabBarControllerSupportedInterfaceOrientations:self];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SKUIScrollingTabBarController;
    supportedInterfaceOrientations = [(SKUIViewController *)&v7 supportedInterfaceOrientations];
  }

  v5 = supportedInterfaceOrientations;

  return v5;
}

- (void)viewDidLoad
{
  v37[1] = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = SKUIScrollingTabBarController;
  [(SKUIScrollingTabBarController *)&v35 viewDidLoad];
  view = [(SKUIScrollingTabBarController *)self view];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [view setBackgroundColor:clearColor];

  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_alloc(MEMORY[0x277D75D18]);
  v14 = [v13 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v14 setHidden:1];
  [view addSubview:v14];
  self->_contentCollectionViewItemSize.width = v10;
  self->_contentCollectionViewItemSize.height = v12;
  v15 = objc_alloc_init(MEMORY[0x277D752F0]);
  [v15 setScrollDirection:1];
  [v15 setMinimumInteritemSpacing:0.0];
  [v15 setMinimumLineSpacing:0.0];
  v36 = *MEMORY[0x277D768E8];
  v37[0] = &unk_2828D2BB8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  [v15 _setRowAlignmentsOptions:v16];

  v38.origin.x = v6;
  v38.origin.y = v8;
  v38.size.width = v10;
  v38.size.height = v12;
  Width = CGRectGetWidth(v38);
  if (Width >= 2.0)
  {
    v18 = Width;
  }

  else
  {
    v18 = 2.0;
  }

  v39.origin.x = v6;
  v39.origin.y = v8;
  v39.size.width = v18;
  v39.size.height = v12;
  Height = CGRectGetHeight(v39);
  if (Height >= 2.0)
  {
    v20 = Height;
  }

  else
  {
    v20 = 2.0;
  }

  v21 = [[SKUIScrollingTabBarContentCollectionView alloc] initWithFrame:v15 collectionViewLayout:v6, v8, v18, v20];
  contentCollectionView = self->_contentCollectionView;
  self->_contentCollectionView = v21;

  panGestureRecognizer = [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView panGestureRecognizer];
  [panGestureRecognizer _setHysteresis:15.0];

  [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setAllowsSelection:0];
  v24 = self->_contentCollectionView;
  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [(SKUIScrollingTabBarContentCollectionView *)v24 setBackgroundColor:clearColor2];

  [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setDataSource:self];
  [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setDelegate:self];
  [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x282809408];
  [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setScrollsToTop:0];
  [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setShowsHorizontalScrollIndicator:0];
  [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setShowsVerticalScrollIndicator:0];
  [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setPagingEnabled:1];
  [view addSubview:self->_contentCollectionView];
  [(SKUIScrollingTabBarController *)self _updateHorizontalScrollingAvailability];
  _tabBarBackdropGroupName = [(SKUIScrollingTabBarController *)self _tabBarBackdropGroupName];
  v27 = objc_alloc_init(MEMORY[0x277D75D18]);
  tabBarContainerView = self->_tabBarContainerView;
  self->_tabBarContainerView = v27;

  [view addSubview:self->_tabBarContainerView];
  v29 = objc_alloc_init(SKUICrossFadingTabBar);
  tabBar = self->_tabBar;
  self->_tabBar = v29;

  [(SKUICrossFadingTabBar *)self->_tabBar _setChargeEnabled:self->_chargeEnabledOnTabBarButtonsContainer];
  backgroundView = [(SKUICrossFadingTabBar *)self->_tabBar backgroundView];
  [backgroundView setBackdropBarGroupName:_tabBarBackdropGroupName];
  [(UIView *)self->_tabBarContainerView addSubview:self->_tabBar];
  [(SKUIScrollingTabBarController *)self _updateTabBarButtons];
  v32 = objc_alloc_init(SKUIDynamicBarAnimator);
  dynamicBarAnimator = self->_dynamicBarAnimator;
  self->_dynamicBarAnimator = v32;

  [(SKUIDynamicBarAnimator *)self->_dynamicBarAnimator setDelegate:self];
  [(SKUIScrollingTabBarController *)self _updateDynamicBarGeometry];
  if (self->_transientViewController)
  {
    [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setHidden:1];
    view2 = [(UIViewController *)self->_transientViewController view];
    [view insertSubview:view2 belowSubview:self->_tabBarContainerView];
  }
}

- (void)viewDidLayoutSubviews
{
  v29.receiver = self;
  v29.super_class = SKUIScrollingTabBarController;
  [(SKUIScrollingTabBarController *)&v29 viewDidLayoutSubviews];
  view = [(SKUIScrollingTabBarController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  proxyScrollView = self->_proxyScrollView;
  if (proxyScrollView)
  {
    superview = [(SKUIProxyScrollView *)proxyScrollView superview];

    if (!superview)
    {
      [view addSubview:self->_proxyScrollView];
    }
  }

  v15 = *MEMORY[0x277CBF348];
  v14 = *(MEMORY[0x277CBF348] + 8);
  v16 = SKUIMPUFoundationFramework();
  v17 = SKUIWeakLinkedSymbolForString("MPUSizeEqualToSize", v16);
  p_contentCollectionViewItemSize = &self->_contentCollectionViewItemSize;
  if (v17(self->_contentCollectionViewItemSize.width, self->_contentCollectionViewItemSize.height, v9, v11))
  {
    v19 = 0;
  }

  else
  {
    if (self->_shouldPreserveFocusUponNextContentCollectionViewItemSizeChange)
    {
      v19 = p_contentCollectionViewItemSize->width > 0.00000011920929;
      if (p_contentCollectionViewItemSize->width > 0.00000011920929)
      {
        [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView contentOffset];
        v14 = v20;
        UIRoundToViewScale();
        v15 = v21;
      }

      self->_shouldPreserveFocusUponNextContentCollectionViewItemSizeChange = 0;
    }

    else
    {
      v19 = 0;
    }

    p_contentCollectionViewItemSize->width = v9;
    self->_contentCollectionViewItemSize.height = v11;
    collectionViewLayout = [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView collectionViewLayout];
    v23 = objc_alloc_init([objc_opt_class() invalidationContextClass]);

    [v23 setInvalidateFlowLayoutDelegateMetrics:1];
    collectionViewLayout2 = [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView collectionViewLayout];
    [collectionViewLayout2 invalidateLayoutWithContext:v23];
  }

  v30.origin.x = v5;
  v30.origin.y = v7;
  v30.size.width = v9;
  v30.size.height = v11;
  Width = CGRectGetWidth(v30);
  if (Width >= 2.0)
  {
    v26 = Width;
  }

  else
  {
    v26 = 2.0;
  }

  v31.origin.x = v5;
  v31.origin.y = v7;
  v31.size.width = v26;
  v31.size.height = v11;
  Height = CGRectGetHeight(v31);
  if (Height >= 2.0)
  {
    v28 = Height;
  }

  else
  {
    v28 = 2.0;
  }

  [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setFrame:v5, v7, v26, v28];
  if (v19)
  {
    [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setContentOffset:v15, v14];
  }

  [(SKUIScrollingTabBarController *)self _updateLayoutOfTabBar];
  [(SKUIScrollingTabBarController *)self _updateForHorizontalLayoutChange];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = SKUIScrollingTabBarController;
  [(SKUIViewController *)&v8 viewWillAppear:appear];
  transitionCoordinator = [(SKUIScrollingTabBarController *)self transitionCoordinator];
  v5 = transitionCoordinator;
  if (transitionCoordinator)
  {
    v6[4] = self;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__SKUIScrollingTabBarController_viewWillAppear___block_invoke;
    v7[3] = &unk_2781F8348;
    v7[4] = self;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__SKUIScrollingTabBarController_viewWillAppear___block_invoke_2;
    v6[3] = &unk_2781F8348;
    [transitionCoordinator animateAlongsideTransition:v7 completion:v6];
  }

  else
  {
    [(SKUIScrollingTabBarController *)self _updateStatusBarPositionForcingVisible:0];
  }
}

uint64_t __48__SKUIScrollingTabBarController_viewWillAppear___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 _updateStatusBarPositionForcingVisible:1];
  }

  return result;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = SKUIScrollingTabBarController;
  [(SKUIScrollingTabBarController *)&v8 viewWillDisappear:disappear];
  transitionCoordinator = [(SKUIScrollingTabBarController *)self transitionCoordinator];
  v5 = transitionCoordinator;
  if (transitionCoordinator)
  {
    v6[4] = self;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__SKUIScrollingTabBarController_viewWillDisappear___block_invoke;
    v7[3] = &unk_2781F8348;
    v7[4] = self;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__SKUIScrollingTabBarController_viewWillDisappear___block_invoke_2;
    v6[3] = &unk_2781F8348;
    [transitionCoordinator animateAlongsideTransition:v7 completion:v6];
  }

  else
  {
    [(SKUIScrollingTabBarController *)self _updateStatusBarPositionForcingVisible:1];
  }
}

uint64_t __51__SKUIScrollingTabBarController_viewWillDisappear___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 _updateStatusBarPositionForcingVisible:0];
  }

  return result;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  delegate = [(SKUIScrollingTabBarController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tabBarController:self willTransitionToSize:coordinatorCopy withTransitionCoordinator:{width, height}];
  }

  self->_shouldPreserveFocusUponNextContentCollectionViewItemSizeChange = 1;
  if (coordinatorCopy)
  {
    ++self->_referenceCountForIgnoringContentOffsetUpdateRequests;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __84__SKUIScrollingTabBarController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v10[3] = &unk_2781F8348;
    v10[4] = self;
    [coordinatorCopy animateAlongsideTransition:0 completion:v10];
  }

  v9.receiver = self;
  v9.super_class = SKUIScrollingTabBarController;
  [(SKUIScrollingTabBarController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (id)contentScrollView
{
  if (!self->_proxyScrollView && [(SKUIScrollingTabBarController *)self isViewLoaded])
  {
    v3 = [SKUIProxyScrollView alloc];
    v4 = [(SKUIProxyScrollView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    proxyScrollView = self->_proxyScrollView;
    self->_proxyScrollView = v4;

    [(SKUIProxyScrollView *)self->_proxyScrollView setHidden:1];
    [(SKUIProxyScrollView *)self->_proxyScrollView setDelegate:self];
    [(SKUIProxyScrollView *)self->_proxyScrollView setScrollEnabled:0];
    [(SKUIProxyScrollView *)self->_proxyScrollView setScrollsToTop:0];
    view = [(SKUIScrollingTabBarController *)self view];
    [view addSubview:self->_proxyScrollView];
  }

  v7 = self->_proxyScrollView;

  return v7;
}

- (id)rotatingSnapshotViewForWindow:(id)window
{
  v4 = self->_transientViewController;
  if (!v4)
  {
    v4 = self->_topLevelFocusedViewController;
  }

  view = [(UIViewController *)v4 view];

  return view;
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  v17.receiver = self;
  v17.super_class = SKUIScrollingTabBarController;
  [(SKUIScrollingTabBarController *)&v17 _edgeInsetsForChildViewController:controller insetsAreAbsolute:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SKUIScrollingTabBarController *)self contentViewControllerBottomInsetAdjustment];
  v13 = v12;
  if (absolute)
  {
    *absolute = 0;
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  result.right = v16;
  result.bottom = v13;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)setClientContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = SKUIScrollingTabBarController;
  [(SKUIViewController *)&v15 setClientContext:contextCopy];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_viewControllers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 conformsToProtocol:{&unk_2828EAAC0, v11}])
        {
          [v10 setClientContext:contextCopy];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (_SKUIScrollingTabFocusedContentScrollViewContentSizeObservationContext == context)
  {

    [(SKUIScrollingTabBarController *)self _updateHidesBarsOnSwipeAvailability:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = SKUIScrollingTabBarController;
    [(SKUIScrollingTabBarController *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (BOOL)dynamicBarAnimator:(id)animator canHideBarsByDraggingWithOffset:(double)offset
{
  [(UIScrollView *)self->_focusedContentScrollView contentSize];
  v7 = v6;
  [(UIScrollView *)self->_focusedContentScrollView contentInset];
  v9 = v7 + v8;
  [(UIScrollView *)self->_focusedContentScrollView bounds];
  return v9 - CGRectGetMaxY(v11) - offset > 49.0;
}

- (void)dynamicBarAnimatorDidUpdate:(id)update
{
  [(SKUIScrollingTabBarController *)self _updateNavigationBarsForVerticalLayoutChange];
  [(SKUIScrollingTabBarController *)self _updateLayoutOfTabBar];

  [(SKUIScrollingTabBarController *)self _updateFocusedViewControllerInsetsForVerticalLayoutChange];
}

- (void)scrollViewDidChangeContentInset:(id)inset
{
  if (self->_proxyScrollView == inset)
  {
    [inset contentInset];
    v8.f64[0] = v4;
    v8.f64[1] = v5;
    v9.f64[0] = v6;
    v9.f64[1] = v7;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_proxyScrollViewContentInsetAdjustment.top, v8), vceqq_f64(*&self->_proxyScrollViewContentInsetAdjustment.bottom, v9)))) & 1) == 0)
    {
      self->_proxyScrollViewContentInsetAdjustment.top = v4;
      self->_proxyScrollViewContentInsetAdjustment.left = v5;
      self->_proxyScrollViewContentInsetAdjustment.bottom = v6;
      self->_proxyScrollViewContentInsetAdjustment.right = v7;

      [(SKUIScrollingTabBarController *)self _updateViewControllerContentScrollViewInset];
    }
  }
}

- (void)scrollingTabBarContentCollectionViewDidLayoutSubviews:(id)subviews
{
  if (self->_contentCollectionView == subviews)
  {
    [(SKUIScrollingTabBarController *)self _updateForHorizontalLayoutChange];
  }
}

- (void)scrollingTabBarControllerItemContextRequestsContentOffsetUpdate:(id)update
{
  updateCopy = update;
  if (!self->_referenceCountForIgnoringContentOffsetUpdateRequests)
  {
    v14 = updateCopy;
    viewController = [updateCopy viewController];
    if ([viewController isViewLoaded])
    {
      view = [viewController view];
      window = [view window];

      if (window)
      {
        v8 = [(SKUIScrollingTabBarController *)self _parentCellForViewController:viewController];
        if (v8)
        {
          nestedPagingScrollView = [v14 nestedPagingScrollView];
          [nestedPagingScrollView contentOffset];
          v11 = v10;
          [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView contentOffset];
          v13 = v12;
          [v8 frame];
          [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setContentOffset:v11 + CGRectGetMinX(v16), v13];
        }
      }
    }

    updateCopy = v14;
  }
}

- (void)scrollingTabBarControllerItemContextRequestsContentSizeUpdate:(id)update
{
  viewControllers = self->_viewControllers;
  viewController = [update viewController];
  self->_indexOfViewControllerWithUpdatedContentSize = [(NSArray *)viewControllers indexOfObject:viewController];

  if (![(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView isPerformingLayout])
  {

    [(SKUIScrollingTabBarController *)self _updateForHorizontalLayoutChange];
  }
}

- (void)scrollingTabBarControllerItemContext:(id)context observedNavigationStackDidChange:(id)change
{
  if (self->_topLevelFocusedViewController == change)
  {
    [(SKUIScrollingTabBarController *)self _updateHorizontalScrollingAvailability];
  }
}

- (void)tabBarBackgroundExtendsBehindPaletteDidChangeForPalette:(id)palette
{
  tabBarPalette = self->_tabBarPalette;
  if (tabBarPalette == palette && [(SKUIScrollingTabBarPalette *)tabBarPalette isAttached])
  {

    [(SKUIScrollingTabBarController *)self _updateTabBarBackgroundsAndHairlines];
  }
}

- (void)observedScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [(SKUIScrollingTabBarController *)self _updateDynamicBarGeometry];
  if (self->_focusedScrollViewIsDragging)
  {
    if (self->_shouldShowBarsAfterDraggingDownward)
    {
      if ([(SKUIScrollingTabBarController *)self _focusedContentScrollViewIsScrolledToOrPastBottom])
      {
        [(SKUIDynamicBarAnimator *)self->_dynamicBarAnimator attemptTransitionToState:1 animated:1];
      }

      self->_shouldShowBarsAfterDraggingDownward = 0;
    }

    [scrollCopy contentOffset];
    [(SKUIDynamicBarAnimator *)self->_dynamicBarAnimator updateDraggingWithOffset:v4];
  }

  [(SKUIScrollingTabBarController *)self _updateNavigationBarsForVerticalLayoutChange];
  [(SKUIScrollingTabBarController *)self _updateFocusedViewControllerInsetsForVerticalLayoutChange];
}

- (void)observedScrollViewWillBeginDragging:(id)dragging
{
  self->_focusedScrollViewIsDragging = 1;
  [dragging contentOffset];
  [(SKUIDynamicBarAnimator *)self->_dynamicBarAnimator beginDraggingWithOffset:v4];
  self->_shouldShowBarsAfterDraggingDownward = [(SKUIScrollingTabBarController *)self _focusedContentScrollViewIsScrolledToOrPastBottom];
}

- (void)observedScrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint)offset
{
  if (self->_focusedScrollViewIsDragging)
  {
    self->_focusedScrollViewIsDragging = 0;
    [(SKUIDynamicBarAnimator *)self->_dynamicBarAnimator endDraggingWithTargetOffset:dragging velocity:offset.y, velocity.y * 1000.0, offset.x];
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if (self->_contentCollectionView == view)
  {
    return [(NSArray *)self->_viewControllers count];
  }

  else
  {
    return 0;
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = pathCopy;
  if (self->_contentCollectionView == viewCopy)
  {
    ++self->_referenceCountForIgnoringContentOffsetUpdateRequests;
    v10 = -[NSArray objectAtIndex:](self->_viewControllers, "objectAtIndex:", [pathCopy item]);
    v11 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:v10];
    collectionViewCell = [v11 collectionViewCell];
    if (collectionViewCell)
    {
      v13 = collectionViewCell;
      v14 = [(SKUIScrollingTabBarContentCollectionView *)viewCopy layoutAttributesForItemAtIndexPath:v8];
      v15 = MEMORY[0x277D75D18];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __71__SKUIScrollingTabBarController_collectionView_cellForItemAtIndexPath___block_invoke;
      v23[3] = &unk_2781F8680;
      v24 = viewCopy;
      v25 = v14;
      v9 = v13;
      v26 = v9;
      v16 = v14;
      [v15 performWithoutAnimation:v23];
    }

    else
    {
      v9 = [(SKUIScrollingTabBarContentCollectionView *)viewCopy dequeueReusableCellWithReuseIdentifier:0x282809408 forIndexPath:v8];
      [v11 setCollectionViewCell:v9];
    }

    view = [v10 view];
    if ([v11 viewControllerIsNavigationController])
    {
      viewControllers = [v10 viewControllers];
      firstObject = [viewControllers firstObject];

      view2 = [firstObject view];
    }

    [(SKUIScrollingTabBarController *)self _viewControllerContentScrollViewContentInsetDescriptor];
    [v11 applyNewContentInsetDescriptor:&v22];
    [v9 setManagesViewControllerContainerViewLayout:0];
    [v9 setViewController:v10];
    --self->_referenceCountForIgnoringContentOffsetUpdateRequests;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  [view bounds];
  v9 = v8;
  v11 = v10;
  viewControllerToItemContext = self->_viewControllerToItemContext;
  viewController = [cellCopy viewController];
  v14 = [(NSMapTable *)viewControllerToItemContext objectForKey:viewController];

  [v14 prepareViewControllerForDisplayWithSize:{v9, v11}];
  v15 = MEMORY[0x277D75D18];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __83__SKUIScrollingTabBarController_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke;
  v22 = &unk_2781F80C8;
  selfCopy = self;
  v16 = cellCopy;
  v24 = v16;
  [v15 performWithoutAnimation:&v19];
  v17 = [(SKUIScrollingTabBarController *)self delegate:v19];
  if (objc_opt_respondsToSelector())
  {
    viewController2 = [v16 viewController];
    [v17 tabBarController:self willDisplayViewController:viewController2];
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  viewController = [cell viewController];
  v6 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:?];
  [v6 notifyOfUpdatedAppearanceStatus:{0, 0}];
  delegate = [(SKUIScrollingTabBarController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate tabBarController:self didEndDisplayingViewController:viewController];
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  if (self->_contentCollectionView == view)
  {
    width = self->_contentCollectionViewItemSize.width;
    height = self->_contentCollectionViewItemSize.height;
    v10 = -[NSArray objectAtIndex:](self->_viewControllers, "objectAtIndex:", [path item]);
    v11 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:v10];
    [v11 nestedPagingScrollViewContentWidth];
    v13 = v12;
    if ([v10 isViewLoaded])
    {
      view = [v10 view];
      [view bounds];
      v15 = CGRectGetWidth(v21);

      if (v15 > 0.00000011920929)
      {
        UIRoundToViewScale();
        v13 = v16;
      }
    }

    if (v13 <= width)
    {
      v17 = width;
    }

    else
    {
      v17 = v13;
    }

    if (v17 >= 2.0)
    {
      v5 = v17;
    }

    else
    {
      v5 = 2.0;
    }

    if (height >= 2.0)
    {
      v6 = height;
    }

    else
    {
      v6 = 2.0;
    }
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A8];
    v6 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v18 = v5;
  v19 = v6;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)decodeRestorableStateWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"_SKUIScrollingTabStateRestorationSelectedViewController"];
  if (v5)
  {
    allViewControllers = [(SKUIScrollingTabBarController *)self allViewControllers];
    v7 = [allViewControllers containsObject:v5];

    if (v7)
    {
      [(SKUIScrollingTabBarController *)self setSelectedViewController:v5];
    }
  }

  v8.receiver = self;
  v8.super_class = SKUIScrollingTabBarController;
  [(SKUIScrollingTabBarController *)&v8 decodeRestorableStateWithCoder:coderCopy];
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  coderCopy = coder;
  selectedViewController = [(SKUIScrollingTabBarController *)self selectedViewController];
  if (selectedViewController)
  {
    [coderCopy encodeObject:selectedViewController forKey:@"_SKUIScrollingTabStateRestorationSelectedViewController"];
  }

  else
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] ignoreSnapshotOnNextApplicationLaunch];
  }

  v7.receiver = self;
  v7.super_class = SKUIScrollingTabBarController;
  [(SKUIScrollingTabBarController *)&v7 encodeRestorableStateWithCoder:coderCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = SKUIScrollingTabBarController;
  changeCopy = change;
  [(SKUIScrollingTabBarController *)&v11 traitCollectionDidChange:changeCopy];
  [changeCopy displayScale];
  v6 = v5;

  traitCollection = [(SKUIScrollingTabBarController *)self traitCollection];
  [traitCollection displayScale];
  v9 = vabdd_f64(v6, v8);

  if (v9 > 0.00000011920929)
  {
    if ([(SKUIScrollingTabBarController *)self isViewLoaded])
    {
      view = [(SKUIScrollingTabBarController *)self view];
      [view setNeedsLayout];
    }
  }
}

- (double)contentViewControllerBottomInsetAdjustment
{
  [(SKUIScrollingTabBarController *)self _viewControllerContentScrollViewContentInsetDescriptor:0];
  [(SKUIScrollingTabBarController *)self _effectiveBottomBarOffset];
  return 0.0 - v3;
}

- (unint64_t)selectedIndex
{
  if (self->_transientViewController)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  viewControllers = [(SKUIScrollingTabBarController *)self viewControllers];
  selectedViewController = [(SKUIScrollingTabBarController *)self selectedViewController];
  v6 = [viewControllers indexOfObject:selectedViewController];

  return v6;
}

- (void)setAdditionalTabBarButtonsContainerPositionOffset:(UIOffset)offset
{
  v15 = *MEMORY[0x277D85DE8];
  [(SKUIScrollingTabBarController *)self _roundedOffsetFromOffset:offset.horizontal, offset.vertical];
  p_additionalTabBarButtonsContainerPositionOffset = &self->_additionalTabBarButtonsContainerPositionOffset;
  if (self->_additionalTabBarButtonsContainerPositionOffset.horizontal != v4 || self->_additionalTabBarButtonsContainerPositionOffset.vertical != v5)
  {
    v12 = *p_additionalTabBarButtonsContainerPositionOffset;
    p_additionalTabBarButtonsContainerPositionOffset->horizontal = v4;
    self->_additionalTabBarButtonsContainerPositionOffset.vertical = v5;
    if ([(SKUIScrollingTabBarController *)self isViewLoaded])
    {
      if (self->_additionalPositionOffsetsAtomicUpdateRequestCount)
      {
        if (!self->_additionalPositionOffsetsUpdateRecord.didUpdateAdditionalTabBarButtonsContainerPositionOffset)
        {
          self->_additionalPositionOffsetsUpdateRecord.didUpdateAdditionalTabBarButtonsContainerPositionOffset = 1;
          self->_additionalPositionOffsetsUpdateRecord.oldAdditionalTabBarButtonsContainerPositionOffset = v12;
        }
      }

      else
      {
        *&v14[3] = 0;
        *v14 = 0;
        *&v13[3] = 0;
        *v13 = 0;
        *&v14[7] = v12;
        *&v13[7] = *MEMORY[0x277D76DA8];
        v8 = 1;
        *v9 = *v14;
        *&v9[15] = v12.vertical;
        v10 = 0;
        *v11 = *v13;
        *&v11[15] = *&v13[15];
        [(SKUIScrollingTabBarController *)self _updateAdditionalPositionOffsetsWithUpdateRecord:&v8];
      }
    }
  }
}

- (void)setAdditionalTabBarPalettePositionOffset:(UIOffset)offset
{
  v15 = *MEMORY[0x277D85DE8];
  [(SKUIScrollingTabBarController *)self _roundedOffsetFromOffset:offset.horizontal, offset.vertical];
  p_additionalTabBarPalettePositionOffset = &self->_additionalTabBarPalettePositionOffset;
  if (self->_additionalTabBarPalettePositionOffset.horizontal != v4 || self->_additionalTabBarPalettePositionOffset.vertical != v5)
  {
    v12 = *p_additionalTabBarPalettePositionOffset;
    p_additionalTabBarPalettePositionOffset->horizontal = v4;
    self->_additionalTabBarPalettePositionOffset.vertical = v5;
    if ([(SKUIScrollingTabBarController *)self isViewLoaded])
    {
      if (self->_additionalPositionOffsetsAtomicUpdateRequestCount)
      {
        if (!self->_additionalPositionOffsetsUpdateRecord.didUpdateAdditionalTabBarPalettePositionOffset)
        {
          self->_additionalPositionOffsetsUpdateRecord.didUpdateAdditionalTabBarPalettePositionOffset = 1;
          self->_additionalPositionOffsetsUpdateRecord.oldAdditionalTabBarPalettePositionOffset = v12;
        }
      }

      else
      {
        *&v14[3] = 0;
        *v14 = 0;
        *&v13[3] = 0;
        *v13 = 0;
        *&v14[7] = *MEMORY[0x277D76DA8];
        *&v13[7] = v12;
        v8 = 0;
        *v9 = *v14;
        *&v9[15] = *&v14[15];
        v10 = 1;
        *v11 = *v13;
        *&v11[15] = v12.vertical;
        [(SKUIScrollingTabBarController *)self _updateAdditionalPositionOffsetsWithUpdateRecord:&v8];
      }
    }
  }
}

- (void)setChargeEnabledOnTabBarButtonsContainer:(BOOL)container
{
  if (self->_chargeEnabledOnTabBarButtonsContainer != container)
  {
    containerCopy = container;
    self->_chargeEnabledOnTabBarButtonsContainer = container;
    if ([(SKUIScrollingTabBarController *)self isViewLoaded])
    {
      tabBar = self->_tabBar;

      [(SKUICrossFadingTabBar *)tabBar _setChargeEnabled:containerCopy];
    }
  }
}

- (void)setScrollEnabled:(BOOL)enabled
{
  if (enabled)
  {
    areScrollingTabsAllowed = [objc_opt_class() areScrollingTabsAllowed];
  }

  else
  {
    areScrollingTabsAllowed = 0;
  }

  if (self->_scrollEnabled != areScrollingTabsAllowed)
  {
    self->_scrollEnabled = areScrollingTabsAllowed;

    [(SKUIScrollingTabBarController *)self _updateHorizontalScrollingAvailability];
  }
}

- (void)setSelectedViewController:(id)controller
{
  controllerCopy = controller;
  viewControllers = [(SKUIScrollingTabBarController *)self viewControllers];
  v6 = [viewControllers indexOfObject:controllerCopy];

  [(SKUIScrollingTabBarController *)self setSelectedIndex:v6];
}

- (void)setTransientViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  transientViewController = self->_transientViewController;
  if (transientViewController != controllerCopy)
  {
    v8 = transientViewController;
    if (v8)
    {
      v9 = *(MEMORY[0x277D768C8] + 16);
      v25 = *MEMORY[0x277D768C8];
      v26 = v9;
      transientViewControllerItemContext = self->_transientViewControllerItemContext;
      v27 = 0;
      [(SKUIScrollingTabBarControllerItemContext *)transientViewControllerItemContext applyNewContentInsetDescriptor:&v25];
      v11 = self->_transientViewControllerItemContext;
      self->_transientViewControllerItemContext = 0;

      [(UIViewController *)v8 willMoveToParentViewController:0];
      if ([(UIViewController *)v8 isViewLoaded])
      {
        view = [(UIViewController *)v8 view];
        [view removeFromSuperview];
      }

      [(UIViewController *)v8 removeFromParentViewController];
    }

    objc_storeStrong(&self->_transientViewController, controller);
    if (self->_transientViewController)
    {
      [(SKUIScrollingTabBarController *)self addChildViewController:?];
      if ([(SKUIScrollingTabBarController *)self isViewLoaded])
      {
        view2 = [(SKUIScrollingTabBarController *)self view];
        view3 = [(UIViewController *)self->_transientViewController view];
        [view2 insertSubview:view3 belowSubview:self->_tabBarContainerView];
      }

      [(UIViewController *)self->_transientViewController didMoveToParentViewController:self];
    }

    v15 = self->_transientViewController;
    if (v8)
    {
      if (v15)
      {
LABEL_15:
        v16 = [[SKUIScrollingTabBarControllerItemContext alloc] initWithViewController:self->_transientViewController];
        v17 = self->_transientViewControllerItemContext;
        self->_transientViewControllerItemContext = v16;

        view4 = [(UIViewController *)self->_transientViewController view];
        if ([(SKUIScrollingTabBarControllerItemContext *)self->_transientViewControllerItemContext viewControllerIsNavigationController])
        {
          viewControllers = [(UIViewController *)self->_transientViewController viewControllers];
          firstObject = [viewControllers firstObject];

          view5 = [firstObject view];
        }

        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        [(SKUIScrollingTabBarController *)self _viewControllerContentScrollViewContentInsetDescriptor];
        v22 = self->_transientViewControllerItemContext;
        v23[0] = v25;
        v23[1] = v26;
        v24 = v27;
        [(SKUIScrollingTabBarControllerItemContext *)v22 applyNewContentInsetDescriptor:v23];
        goto LABEL_18;
      }
    }

    else if (!v15)
    {
      goto LABEL_18;
    }

    [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setHidden:v8 == 0];
    [(SKUIScrollingTabBarController *)self _updateForHorizontalLayoutChange];
    [(SKUIScrollingTabBarController *)self _updateHidesBarsOnSwipeAvailability];
    if (self->_transientViewController)
    {
      goto LABEL_15;
    }

LABEL_18:
    [(SKUIScrollingTabBarController *)self setNeedsStatusBarAppearanceUpdate];
  }
}

- (void)setViewControllers:(id)controllers
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__SKUIScrollingTabBarController_setViewControllers___block_invoke;
  v5[3] = &unk_2781F80F0;
  v5[4] = self;
  selfCopy = self;
  [(SKUIScrollingTabBarController *)selfCopy _setViewControllers:controllers collectionViewsUpdateHandler:v5 forFinalTearDown:0];
}

uint64_t __52__SKUIScrollingTabBarController_setViewControllers___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1152) reloadData];
  v2 = *(a1 + 32);

  return [v2 _updateScrollViewContentOffsetsToTargetContentOffsets];
}

- (CGRect)tabBarButtonsContainerFrame
{
  if ([(SKUIScrollingTabBarController *)self isViewLoaded])
  {
    view = [(SKUIScrollingTabBarController *)self view];
    [(SKUICrossFadingTabBar *)self->_tabBar bounds];
    [view convertRect:self->_tabBar fromView:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    traitCollection = [(SKUICrossFadingTabBar *)self->_tabBar traitCollection];
    [traitCollection displayScale];
    v14 = v13;

    if (v14 < 0.00000011920929)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v14 = v16;
    }

    v17 = v7 - 1.0 / v14;
    v18 = v11 + 1.0 / v14;
  }

  else
  {
    v5 = *MEMORY[0x277CBF398];
    v17 = *(MEMORY[0x277CBF398] + 8);
    v9 = *(MEMORY[0x277CBF398] + 16);
    v18 = *(MEMORY[0x277CBF398] + 24);
  }

  v19 = v5;
  v20 = v9;
  result.size.height = v18;
  result.size.width = v20;
  result.origin.y = v17;
  result.origin.x = v19;
  return result;
}

- (CGRect)tabBarPaletteFrame
{
  if ([(SKUIScrollingTabBarPalette *)self->_tabBarPalette isAttached])
  {
    view = [(SKUIScrollingTabBarController *)self view];
    [(SKUIScrollingTabBarPalette *)self->_tabBarPalette bounds];
    [view convertRect:self->_tabBarPalette fromView:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = *MEMORY[0x277CBF398];
    v7 = *(MEMORY[0x277CBF398] + 8);
    v9 = *(MEMORY[0x277CBF398] + 16);
    v11 = *(MEMORY[0x277CBF398] + 24);
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)tabBarPaletteWithHeight:(double)height
{
  tabBarPalette = self->_tabBarPalette;
  if (!tabBarPalette)
  {
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    view = [(SKUIScrollingTabBarController *)self view];
    [view bounds];
    Width = CGRectGetWidth(v16);

    height = [[SKUIScrollingTabBarPalette alloc] initWithFrame:v6, v7, Width, height];
    v11 = self->_tabBarPalette;
    self->_tabBarPalette = height;

    _backgroundView = [(SKUIScrollingTabBarPalette *)self->_tabBarPalette _backgroundView];
    _tabBarBackdropGroupName = [(SKUIScrollingTabBarController *)self _tabBarBackdropGroupName];
    [_backgroundView setBackdropBarGroupName:_tabBarBackdropGroupName];

    tabBarPalette = self->_tabBarPalette;
  }

  return tabBarPalette;
}

- (void)attachTabBarPalette:(id)palette animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  paletteCopy = palette;
  completionCopy = completion;
  if (paletteCopy && self->_tabBarPalette == paletteCopy)
  {
    view = [(SKUIScrollingTabBarController *)self view];
    [(SKUIScrollingTabBarPalette *)self->_tabBarPalette _setAttached:1];
    [(SKUIScrollingTabBarPalette *)self->_tabBarPalette _setDelegate:self];
    [(SKUIScrollingTabBarController *)self _updateViewControllerContentScrollViewInset];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__SKUIScrollingTabBarController_attachTabBarPalette_animated_completion___block_invoke;
    aBlock[3] = &unk_2781FC7C8;
    aBlock[4] = self;
    v11 = view;
    v26 = v11;
    v27 = completionCopy;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    if (animatedCopy)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __73__SKUIScrollingTabBarController_attachTabBarPalette_animated_completion___block_invoke_2;
      v22[3] = &unk_2781F80C8;
      v23 = v11;
      selfCopy = self;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __73__SKUIScrollingTabBarController_attachTabBarPalette_animated_completion___block_invoke_3;
      v21[3] = &unk_2781F80F0;
      v21[4] = self;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __73__SKUIScrollingTabBarController_attachTabBarPalette_animated_completion___block_invoke_4;
      v18 = &unk_2781F85E0;
      selfCopy2 = self;
      v20 = v13;
      [(SKUIScrollingTabBarController *)self _animatePaletteWithSetup:v22 animations:v21 completion:&v15];
    }

    else
    {
      (*(v12 + 2))(v12);
      [(SKUIScrollingTabBarController *)self _updateTabBarBackgroundsAndHairlines];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SKUIScrollingTabBarControllerPaletteWasAttached" object:self];
  }
}

uint64_t __73__SKUIScrollingTabBarController_attachTabBarPalette_animated_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1272) insertSubview:*(*(a1 + 32) + 1312) belowSubview:*(*(a1 + 32) + 1264)];
  [*(a1 + 40) setNeedsLayout];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __73__SKUIScrollingTabBarController_attachTabBarPalette_animated_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) layoutIfNeeded];
  [*(*(a1 + 40) + 1312) frame];
  v8.size.height = v2 + 5.0;
  v8.origin.y = v3 + -5.0;
  v4 = *(*(a1 + 40) + 1312);
  Height = CGRectGetHeight(v8);
  CGAffineTransformMakeTranslation(&v7, 0.0, Height);
  return [v4 setTransform:&v7];
}

uint64_t __73__SKUIScrollingTabBarController_attachTabBarPalette_animated_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1312);
  CGAffineTransformMakeTranslation(&v3, 0.0, 5.0);
  return [v1 setTransform:&v3];
}

uint64_t __73__SKUIScrollingTabBarController_attachTabBarPalette_animated_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1312);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];
  return (*(*(a1 + 40) + 16))();
}

- (void)detachTabBarPalette:(id)palette animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  paletteCopy = palette;
  completionCopy = completion;
  v10 = completionCopy;
  if (paletteCopy && self->_tabBarPalette == paletteCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__SKUIScrollingTabBarController_detachTabBarPalette_animated_completion___block_invoke;
    aBlock[3] = &unk_2781F98F0;
    aBlock[4] = self;
    v22 = completionCopy;
    v11 = _Block_copy(aBlock);
    v12 = v11;
    if (animatedCopy)
    {
      [(SKUIScrollingTabBarPalette *)self->_tabBarPalette frame];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __73__SKUIScrollingTabBarController_detachTabBarPalette_animated_completion___block_invoke_2;
      v20[3] = &unk_2781FB108;
      v20[4] = self;
      v20[5] = v13;
      v20[6] = v14;
      v20[7] = v15;
      v20[8] = v16;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __73__SKUIScrollingTabBarController_detachTabBarPalette_animated_completion___block_invoke_3;
      v18[3] = &unk_2781F85E0;
      v18[4] = self;
      v19 = v12;
      [(SKUIScrollingTabBarController *)self _animatePaletteWithSetup:0 animations:v20 completion:v18];
    }

    else
    {
      (*(v11 + 2))(v11);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SKUIScrollingTabBarControllerPaletteWasDetached" object:self];
  }
}

uint64_t __73__SKUIScrollingTabBarController_detachTabBarPalette_animated_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1312) _setAttached:0];
  [*(a1 + 32) _updateViewControllerContentScrollViewInset];
  [*(*(a1 + 32) + 1312) removeFromSuperview];
  [*(*(a1 + 32) + 1312) _setDelegate:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1312);
  *(v2 + 1312) = 0;

  v4 = [*(a1 + 32) view];
  [v4 setNeedsLayout];

  [*(a1 + 32) _updateTabBarBackgroundsAndHairlines];
  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

uint64_t __73__SKUIScrollingTabBarController_detachTabBarPalette_animated_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1312);
  Height = CGRectGetHeight(*(a1 + 40));
  CGAffineTransformMakeTranslation(&v4, 0.0, Height + 5.0);
  return [v1 setTransform:&v4];
}

uint64_t __73__SKUIScrollingTabBarController_detachTabBarPalette_animated_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1312);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];
  return (*(*(a1 + 40) + 16))();
}

- (void)didUpdateAdditionalTabBarComponentsPositionOffsets
{
  additionalPositionOffsetsAtomicUpdateRequestCount = self->_additionalPositionOffsetsAtomicUpdateRequestCount;
  if (additionalPositionOffsetsAtomicUpdateRequestCount)
  {
    v5 = additionalPositionOffsetsAtomicUpdateRequestCount - 1;
    self->_additionalPositionOffsetsAtomicUpdateRequestCount = v5;
    if (!v5)
    {
      v10 = v2;
      v11 = v3;
      p_additionalPositionOffsetsUpdateRecord = &self->_additionalPositionOffsetsUpdateRecord;
      v7 = *&self->_additionalPositionOffsetsUpdateRecord.oldAdditionalTabBarButtonsContainerPositionOffset.vertical;
      v9[0] = *&self->_additionalPositionOffsetsUpdateRecord.didUpdateAdditionalTabBarButtonsContainerPositionOffset;
      v9[1] = v7;
      v9[2] = self->_additionalPositionOffsetsUpdateRecord.oldAdditionalTabBarPalettePositionOffset;
      [(SKUIScrollingTabBarController *)self _updateAdditionalPositionOffsetsWithUpdateRecord:v9];
      p_additionalPositionOffsetsUpdateRecord->didUpdateAdditionalTabBarButtonsContainerPositionOffset = 0;
      v8 = *MEMORY[0x277D76DA8];
      p_additionalPositionOffsetsUpdateRecord->oldAdditionalTabBarButtonsContainerPositionOffset = *MEMORY[0x277D76DA8];
      p_additionalPositionOffsetsUpdateRecord->didUpdateAdditionalTabBarPalettePositionOffset = 0;
      p_additionalPositionOffsetsUpdateRecord->oldAdditionalTabBarPalettePositionOffset = v8;
    }
  }
}

- (void)updateTabBarComponentPositionOffsetsWithPresentationValues
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __91__SKUIScrollingTabBarController_updateTabBarComponentPositionOffsetsWithPresentationValues__block_invoke;
  v2[3] = &unk_2781F80F0;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

void __91__SKUIScrollingTabBarController_updateTabBarComponentPositionOffsetsWithPresentationValues__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1272) layer];
  v43 = [v2 presentationLayer];

  v3 = [*(*(a1 + 32) + 1312) layer];
  v4 = [v3 presentationLayer];

  v5 = [*(a1 + 32) view];
  v6 = [v5 layer];
  v7 = [v6 presentationLayer];
  [v43 bounds];
  [v7 convertRect:v43 fromLayer:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [*(a1 + 32) view];
  v17 = [v16 layer];
  v18 = [v17 presentationLayer];
  [v4 bounds];
  [v18 convertRect:v4 fromLayer:?];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = SKUIMPUFoundationFramework();
  v28 = SKUIWeakLinkedSymbolForString("MPUSizeEqualToSize", v27);
  if (v28([v43 bounds], v13, v15) && ((v28)(objc_msgSend(v4, "bounds"), v24, v26) & 1) != 0)
  {
    [*(a1 + 32) willUpdateAdditionalTabBarComponentsPositionOffsets];
    v29 = *MEMORY[0x277D76DA8];
    v30 = *(MEMORY[0x277D76DA8] + 8);
    [*(a1 + 32) setAdditionalTabBarButtonsContainerPositionOffset:{*MEMORY[0x277D76DA8], v30}];
    [*(a1 + 32) setAdditionalTabBarPalettePositionOffset:{v29, v30}];
    [*(a1 + 32) didUpdateAdditionalTabBarComponentsPositionOffsets];
    v31 = [*(a1 + 32) view];
    [v31 setNeedsLayout];

    v32 = [*(a1 + 32) view];
    [v32 layoutIfNeeded];

    v33 = [*(a1 + 32) view];
    [*(*(a1 + 32) + 1272) bounds];
    [v33 convertRect:*(*(a1 + 32) + 1272) fromView:?];
    v35 = v34;
    v37 = v36;

    v38 = [*(a1 + 32) view];
    [*(*(a1 + 32) + 1312) bounds];
    [v38 convertRect:*(*(a1 + 32) + 1312) fromView:?];
    v40 = v39;
    v42 = v41;

    [*(a1 + 32) willUpdateAdditionalTabBarComponentsPositionOffsets];
    [*(a1 + 32) setAdditionalTabBarButtonsContainerPositionOffset:{v9 - v35, v11 - v37}];
    [*(a1 + 32) setAdditionalTabBarPalettePositionOffset:{v20 - v40, v22 - v42}];
    [*(a1 + 32) didUpdateAdditionalTabBarComponentsPositionOffsets];
  }

  else
  {
    NSLog(&cfstr_InvalidSizeRet.isa);
  }
}

- (void)hideBarWithTransition:(int)transition
{
  if (!self->_tabBarExplicitlyHidden)
  {
    v3 = *&transition;
    self->_tabBarExplicitlyHidden = 1;
    [(SKUIScrollingTabBarController *)self _updateHidesBarsOnSwipeAvailability];
    view = [(SKUIScrollingTabBarController *)self view];
    [view layoutIfNeeded];

    [(UIView *)self->_tabBarContainerView bounds];
    v10 = *MEMORY[0x277D76DA8];
    v11 = *(MEMORY[0x277D76DA8] + 8);
    if (v3 > 5)
    {
      if (v3 == 6)
      {
        v13 = 0.0;
        goto LABEL_16;
      }

      if (v3 == 7)
      {
        v11 = v11 + CGRectGetHeight(*&v6);
        goto LABEL_14;
      }
    }

    else
    {
      if (v3 == 1)
      {
        v10 = v10 - CGRectGetWidth(*&v6);
        goto LABEL_14;
      }

      if (v3 == 2)
      {
        v10 = v10 + CGRectGetWidth(*&v6);
LABEL_14:
        v13 = 1.0;
LABEL_16:
        v14 = MEMORY[0x277D75D18];
        [objc_opt_class() durationForTransition:v3];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __55__SKUIScrollingTabBarController_hideBarWithTransition___block_invoke;
        v16[3] = &unk_2781FC7F0;
        v16[4] = self;
        *&v16[5] = v10;
        *&v16[6] = v11;
        *&v16[7] = v13;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __55__SKUIScrollingTabBarController_hideBarWithTransition___block_invoke_2;
        v15[3] = &unk_2781F84A0;
        v15[4] = self;
        [v14 animateWithDuration:v16 animations:v15 completion:?];
        return;
      }
    }

    [(UIView *)self->_tabBarContainerView setHidden:1];
    if ([(UIViewController *)self->_topLevelFocusedViewController conformsToProtocol:&unk_282993C60])
    {
      topLevelFocusedViewController = self->_topLevelFocusedViewController;

      [(UIViewController *)topLevelFocusedViewController scrollingTabBarBottomInsetAdjustmentDidChange];
    }
  }
}

uint64_t __55__SKUIScrollingTabBarController_hideBarWithTransition___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1280) = *(a1 + 40);
  v2 = *(a1 + 32);
  if (*(v2 + 1280) != *MEMORY[0x277D76DA8] || *(v2 + 1288) != *(MEMORY[0x277D76DA8] + 8))
  {
    [v2 _updateLayoutOfTabBar];
    v2 = *(a1 + 32);
  }

  if (*(a1 + 56) < 0.999999881)
  {
    [*(v2 + 1272) setAlpha:?];
    v2 = *(a1 + 32);
  }

  result = [*(v2 + 1320) conformsToProtocol:&unk_282993C60];
  if (result)
  {
    v5 = *(*(a1 + 32) + 1320);

    return [v5 scrollingTabBarBottomInsetAdjustmentDidChange];
  }

  return result;
}

uint64_t __55__SKUIScrollingTabBarController_hideBarWithTransition___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(*(result + 32) + 1272) setHidden:1];
  }

  return result;
}

- (void)showBarWithTransition:(int)transition
{
  if (self->_tabBarExplicitlyHidden)
  {
    v3 = *&transition;
    view = [(SKUIScrollingTabBarController *)self view];
    [view layoutIfNeeded];

    [(UIView *)self->_tabBarContainerView bounds];
    v10 = MEMORY[0x277D76DA8];
    v11 = *MEMORY[0x277D76DA8];
    v12 = *(MEMORY[0x277D76DA8] + 8);
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        v12 = v12 + CGRectGetHeight(*&v6);
        goto LABEL_14;
      }

      v13 = 0.0;
      if (v3 == 6)
      {
LABEL_15:
        [(UIView *)self->_tabBarContainerView setHidden:0];
        self->_tabBarExplicitHidingOffset.horizontal = v11;
        self->_tabBarExplicitHidingOffset.vertical = v12;
        [(SKUIScrollingTabBarController *)self _updateLayoutOfTabBar];
        [(UIView *)self->_tabBarContainerView setAlpha:v13];
        v15 = MEMORY[0x277D75D18];
        [objc_opt_class() durationForTransition:v3];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __55__SKUIScrollingTabBarController_showBarWithTransition___block_invoke;
        v17[3] = &unk_2781F80F0;
        v17[4] = self;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __55__SKUIScrollingTabBarController_showBarWithTransition___block_invoke_2;
        v16[3] = &unk_2781F84A0;
        v16[4] = self;
        [v15 animateWithDuration:v17 animations:v16 completion:?];
        return;
      }
    }

    else
    {
      if (v3 == 1)
      {
        v11 = v11 + CGRectGetWidth(*&v6);
        goto LABEL_14;
      }

      if (v3 == 2)
      {
        v11 = v11 - CGRectGetWidth(*&v6);
LABEL_14:
        v13 = 1.0;
        goto LABEL_15;
      }
    }

    [(UIView *)self->_tabBarContainerView setHidden:0];
    self->_tabBarExplicitlyHidden = 0;
    self->_tabBarExplicitHidingOffset = *v10;
    [(SKUIScrollingTabBarController *)self _updateLayoutOfTabBar];
    [(UIView *)self->_tabBarContainerView setAlpha:1.0];
    if ([(UIViewController *)self->_topLevelFocusedViewController conformsToProtocol:&unk_282993C60])
    {
      topLevelFocusedViewController = self->_topLevelFocusedViewController;

      [(UIViewController *)topLevelFocusedViewController scrollingTabBarBottomInsetAdjustmentDidChange];
    }
  }
}

uint64_t __55__SKUIScrollingTabBarController_showBarWithTransition___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1296) = 0;
  *(*(a1 + 32) + 1280) = *MEMORY[0x277D76DA8];
  [*(a1 + 32) _updateLayoutOfTabBar];
  [*(*(a1 + 32) + 1272) setAlpha:1.0];
  result = [*(*(a1 + 32) + 1320) conformsToProtocol:&unk_282993C60];
  if (result)
  {
    v3 = *(*(a1 + 32) + 1320);

    return [v3 scrollingTabBarBottomInsetAdjustmentDidChange];
  }

  return result;
}

uint64_t __55__SKUIScrollingTabBarController_showBarWithTransition___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _updateHidesBarsOnSwipeAvailability];
  }

  return result;
}

- (void)_tabBarButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if (self->_transientViewController)
  {
    [(SKUIScrollingTabBarController *)self setTransientViewController:0 animated:0];
  }

  tabBarButtons = [(SKUICrossFadingTabBar *)self->_tabBar tabBarButtons];
  v5 = [tabBarButtons indexOfObject:tappedCopy];

  [(SKUIScrollingTabBarController *)self _selectTabAtIndex:v5 shouldFallbackToPoppingToTabRootContent:1];
}

- (id)_deepestFocusedViewControllerWithTopLevelFocusedViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:controllerCopy];
  nestedPagingScrollView = [v5 nestedPagingScrollView];
  v7 = controllerCopy;
  if (nestedPagingScrollView)
  {
    [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView bounds];
    Width = CGRectGetWidth(v13);
    if (Width >= 2.0)
    {
      v9 = Width;
    }

    else
    {
      v9 = 2.0;
    }

    [nestedPagingScrollView contentOffset];
    if (v10 < 0.0)
    {
      v10 = 0.0;
    }

    v7 = [v5 viewControllerInNestedPagingScrollViewAtPageIndex:vcvtmd_u64_f64(v10 / v9)];
  }

  return v7;
}

- (void)_discardUndesirableLastSelectedPageIndexesWithHorizontalLayoutContext:(id *)context
{
  if (context->var0 != context->var1)
  {
    viewControllers = self->_viewControllers;
    if (context->var2 >= 0.5)
    {
      var0 = context->var0;
    }

    else
    {
      var0 = context->var1;
    }

    v8 = [(NSArray *)viewControllers objectAtIndex:var0];
    v7 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:v8];
    [v7 setLastSelectedPageIndex:0];
  }
}

- (double)_effectiveBottomBarOffset
{
  if (self->_tabBarExplicitlyHidden)
  {
    [(SKUIScrollingTabBarController *)self _viewControllerContentScrollViewContentInsetDescriptor:0];
    return 0.0;
  }

  else
  {
    dynamicBarAnimator = self->_dynamicBarAnimator;

    [(SKUIDynamicBarAnimator *)dynamicBarAnimator bottomBarOffset];
  }

  return result;
}

- (double)_effectiveTopBarHeight
{
  if (self->_tabBarExplicitlyHidden)
  {
    navigationController = [(UIViewController *)self->_focusedViewController navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar bounds];
    Height = CGRectGetHeight(v8);

    return Height;
  }

  else
  {
    dynamicBarAnimator = self->_dynamicBarAnimator;

    [(SKUIDynamicBarAnimator *)dynamicBarAnimator topBarHeight];
  }

  return result;
}

- (BOOL)_focusedContentScrollViewIsScrolledToOrPastBottom
{
  [(UIScrollView *)self->_focusedContentScrollView contentSize];
  v4 = v3;
  [(UIScrollView *)self->_focusedContentScrollView contentInset];
  v6 = v5;
  [(UIScrollView *)self->_focusedContentScrollView bounds];
  return CGRectGetMaxY(v8) >= v4 + v6;
}

- (void)_invalidateContentCollectionViewLayoutForUpdatedContentSizeWithHorizontalLayoutContext:(id *)context indexOfViewControllerWithUpdatedContentSize:(unint64_t)size
{
  collectionViewLayout = [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView collectionViewLayout];
  v8 = *(MEMORY[0x277CBF348] + 8);
  v9 = context->var0 != size || context->var0 == context->var1;
  v20 = collectionViewLayout;
  if (v9)
  {
    v17 = *MEMORY[0x277CBF348];
  }

  else
  {
    v10 = [MEMORY[0x277CCAA70] indexPathForItem:size inSection:0];
    v11 = [v20 layoutAttributesForItemAtIndexPath:v10];
    [v11 frame];
    Width = CGRectGetWidth(v22);

    viewControllerToItemContext = self->_viewControllerToItemContext;
    v14 = [(NSArray *)self->_viewControllers objectAtIndex:size];
    v15 = [(NSMapTable *)viewControllerToItemContext objectForKey:v14];

    [v15 nestedPagingScrollViewContentWidth];
    v17 = v16 - Width;
  }

  v18 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
  [v18 setInvalidateFlowLayoutDelegateMetrics:1];
  [v18 setContentOffsetAdjustment:{v17, v8}];
  collectionViewLayout2 = [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView collectionViewLayout];
  [collectionViewLayout2 invalidateLayoutWithContext:v18];
}

- (void)_notifyViewControllerAppearanceProgressUpdateWithHorizontalLayoutContext:(id *)context
{
  var0 = context->var0;
  var1 = context->var1;
  v8 = 1.0 - context->var2;
  v10 = v8 < 0.999999881 && var1 == var0;
  v15 = [(NSArray *)self->_viewControllers objectAtIndex:?];
  v11 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:?];
  [v11 notifyOfUpdatedAppearanceStatus:{*&v8, v10}];
  if (context->var1 != context->var0)
  {
    var2 = context->var2;
    v13 = [(NSArray *)self->_viewControllers objectAtIndex:?];
    v14 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:v13];
    [v14 notifyOfUpdatedAppearanceStatus:{*&var2, 0}];
  }
}

- (id)_parentCellForViewController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy isViewLoaded])
  {
    view = [controllerCopy view];
    superview = [view superview];
    if (superview)
    {
      do
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v5Superview = [superview superview];

        superview = v5Superview;
      }

      while (v5Superview);
    }
  }

  else
  {
    superview = 0;
  }

  return superview;
}

- (void)_animatePaletteWithSetup:(id)setup animations:(id)animations completion:(id)completion
{
  setupCopy = setup;
  animationsCopy = animations;
  completionCopy = completion;
  activePaletteTransitions = self->_activePaletteTransitions;
  if (!activePaletteTransitions)
  {
    [(SKUIScrollingTabBarPalette *)self->_tabBarPalette bounds];
    v16 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v14, v13 + -5.0, v15, v12 + 5.0}];
    [v16 setClipsToBounds:1];
    [v16 addSubview:self->_tabBarPalette];
    layer = [(SKUIScrollingTabBarPalette *)self->_tabBarPalette layer];
    [layer setValue:v16 forKey:@"SKUIScrollingTabBarPaletteClippingView"];

    [(UIView *)self->_tabBarContainerView insertSubview:v16 belowSubview:self->_tabBar];
    [(SKUIScrollingTabBarPalette *)self->_tabBarPalette setTabBarBackgroundExtendsBehindPalette:0];
    [(SKUIScrollingTabBarController *)self _updateTabBarBackgroundsAndHairlines];
    if (setupCopy)
    {
      setupCopy[2](setupCopy);
    }

    activePaletteTransitions = self->_activePaletteTransitions;
  }

  self->_activePaletteTransitions = activePaletteTransitions + 1;
  v18 = SKUIMPUFoundationFramework();
  v19 = SKUIWeakLinkedClassForString(&cfstr_Mpuspringanima.isa, v18);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __80__SKUIScrollingTabBarController__animatePaletteWithSetup_animations_completion___block_invoke;
  v21[3] = &unk_2781F85E0;
  v21[4] = self;
  v22 = completionCopy;
  v20 = completionCopy;
  [v19 animateUsingSpringWithDamping:animationsCopy mass:1024 stiffness:v21 velocity:700.0 animations:2.0 options:300.0 completion:0.0];
}

void __80__SKUIScrollingTabBarController__animatePaletteWithSetup_animations_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  --*(*(a1 + 32) + 1064);
  v3 = *(a1 + 32);
  if (!*(v3 + 1064))
  {
    [*(v3 + 1312) setTabBarBackgroundExtendsBehindPalette:1];
    [*(a1 + 32) _updateTabBarBackgroundsAndHairlines];
    v6 = [*(*(a1 + 32) + 1312) layer];
    v9 = [v6 valueForKey:@"SKUIScrollingTabBarPaletteClippingView"];

    v7 = [*(*(a1 + 32) + 1312) layer];
    [v7 setValue:0 forKey:@"SKUIScrollingTabBarPaletteClippingView"];

    [v9 removeFromSuperview];
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, a2);
    }
  }
}

- (void)_popVisibleNavigationStacksToRootWithHorizontalLayoutContext:(id *)context
{
  v14 = *MEMORY[0x277D85DE8];
  if (context->var0 != context->var1)
  {
    visibleCells = [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView visibleCells];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(visibleCells);
          }

          viewController = [*(*(&v9 + 1) + 8 * v7) viewController];
          if ([viewController conformsToProtocol:&unk_282993DA8])
          {
            [viewController popToNavigationStackRootContentAnimated:0 withBehavior:1];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (UIOffset)_roundedOffsetFromOffset:(UIOffset)offset
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  if ([(SKUIScrollingTabBarController *)self isViewLoaded])
  {
    view = [(SKUIScrollingTabBarController *)self view];
    UIRoundToViewScale();
    horizontal = v7;
    UIRoundToViewScale();
    vertical = v8;
  }

  v9 = horizontal;
  v10 = vertical;
  result.vertical = v10;
  result.horizontal = v9;
  return result;
}

- (void)_setFocusedViewController:(id)controller showBarsIfNeeded:(BOOL)needed animated:(BOOL)animated notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  neededCopy = needed;
  controllerCopy = controller;
  v19 = controllerCopy;
  if (controllerCopy)
  {
    v11 = [(SKUIScrollingTabBarController *)self _deepestFocusedViewControllerWithTopLevelFocusedViewController:controllerCopy];
  }

  else
  {
    v11 = 0;
  }

  focusedViewController = self->_focusedViewController;
  if (focusedViewController != v11)
  {
    if (self->_canHideBarsOnSwipe && [(UIViewController *)focusedViewController conformsToProtocol:&unk_2828EEFB8])
    {
      [(UIViewController *)self->_focusedViewController setScrollViewDelegateObserver:0];
    }

    focusedContentScrollView = self->_focusedContentScrollView;
    if (focusedContentScrollView)
    {
      [(UIScrollView *)focusedContentScrollView removeObserver:self forKeyPath:@"contentSize" context:_SKUIScrollingTabFocusedContentScrollViewContentSizeObservationContext];
    }

    topLevelFocusedViewController = self->_topLevelFocusedViewController;
    if (topLevelFocusedViewController != v19)
    {
      objc_storeStrong(&self->_topLevelFocusedViewController, controller);
    }

    objc_storeStrong(&self->_focusedViewController, v11);
    contentScrollView = [(UIViewController *)v11 contentScrollView];
    v16 = self->_focusedContentScrollView;
    self->_focusedContentScrollView = contentScrollView;

    v17 = self->_focusedContentScrollView;
    if (v17)
    {
      [(UIScrollView *)v17 addObserver:self forKeyPath:@"contentSize" options:0 context:_SKUIScrollingTabFocusedContentScrollViewContentSizeObservationContext];
    }

    if (self->_canHideBarsOnSwipe && [(UIViewController *)self->_focusedViewController conformsToProtocol:&unk_2828EEFB8])
    {
      [(UIViewController *)self->_focusedViewController setScrollViewDelegateObserver:self];
    }

    if (neededCopy)
    {
      [(SKUIDynamicBarAnimator *)self->_dynamicBarAnimator attemptTransitionToState:1 animated:1];
    }

    [(SKUIScrollingTabBarController *)self _updateHidesBarsOnSwipeAvailability];
    [(SKUIScrollingTabBarController *)self _updateHorizontalScrollingAvailability];
    if (topLevelFocusedViewController != v19)
    {
      [(SKUIScrollingTabBarController *)self setNeedsStatusBarAppearanceUpdate];
      if (delegateCopy)
      {
        delegate = [(SKUIScrollingTabBarController *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          [delegate tabBarController:self didSelectViewController:self->_topLevelFocusedViewController];
        }
      }
    }
  }
}

- (void)_selectTabAtIndex:(unint64_t)index shouldFallbackToPoppingToTabRootContent:(BOOL)content
{
  contentCopy = content;
  contentCollectionView = self->_contentCollectionView;
  v8 = [MEMORY[0x277CCAA70] indexPathForItem:index inSection:0];
  v37 = [(SKUIScrollingTabBarContentCollectionView *)contentCollectionView layoutAttributesForItemAtIndexPath:v8];

  [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView contentOffset];
  v10 = v9;
  v12 = v11;
  [v37 frame];
  MinX = CGRectGetMinX(v39);
  v14 = [(NSArray *)self->_viewControllers objectAtIndex:index];
  v15 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:v14];
  [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView bounds];
  Width = CGRectGetWidth(v40);
  v17 = MinX + Width * [v15 lastSelectedPageIndex];
  collectionViewLayout = [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView collectionViewLayout];
  [collectionViewLayout targetContentOffsetForProposedContentOffset:{v17, v12}];
  v20 = v19;
  v22 = v21;

  if (vabdd_f64(v20, v10) > 0.00000011920929)
  {
    v23 = self->_contentCollectionView;
    v24 = v20;
    v25 = v22;
    v26 = 0;
LABEL_13:
    [(SKUIScrollingTabBarContentCollectionView *)v23 setContentOffset:v26 animated:v24, v25];
    goto LABEL_14;
  }

  if (!contentCopy)
  {
    goto LABEL_14;
  }

  if ([(UIViewController *)self->_topLevelFocusedViewController conformsToProtocol:&unk_282993DA8])
  {
    v27 = self->_topLevelFocusedViewController;
    if (([(UIViewController *)v27 isShowingNavigationStackRootContent]& 1) == 0)
    {
      delegate = [(SKUIScrollingTabBarController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        delegate2 = [(SKUIScrollingTabBarController *)self delegate];
        v30 = [delegate2 tabBarController:self shouldFallbackToRootForController:v14];

        if (v30)
        {
          [(UIViewController *)v27 popToNavigationStackRootContentAnimated:1 withBehavior:0];

          goto LABEL_14;
        }
      }

      else
      {
      }
    }
  }

  if ([v15 lastSelectedPageIndex])
  {
    [v37 frame];
    v31 = CGRectGetMinX(v41);
    collectionViewLayout2 = [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView collectionViewLayout];
    [collectionViewLayout2 targetContentOffsetForProposedContentOffset:{v31, v22}];
    v34 = v33;
    v36 = v35;

    v23 = self->_contentCollectionView;
    v24 = v34;
    v25 = v36;
    v26 = 1;
    goto LABEL_13;
  }

LABEL_14:
}

- (void)_setViewControllers:(id)controllers collectionViewsUpdateHandler:(id)handler forFinalTearDown:(BOOL)down
{
  v93 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  handlerCopy = handler;
  viewControllers = self->_viewControllers;
  if (viewControllers == controllersCopy || [(NSArray *)viewControllers isEqualToArray:controllersCopy])
  {
    goto LABEL_74;
  }

  downCopy = down;
  v67 = handlerCopy;
  v65 = self->_transientViewController;
  if (v65)
  {
    [(SKUIScrollingTabBarController *)self setTransientViewController:0 animated:0];
  }

  v64 = self->_topLevelFocusedViewController;
  selectedIndex = [(SKUIScrollingTabBarController *)self selectedIndex];
  v11 = [(NSArray *)self->_viewControllers copy];
  v66 = controllersCopy;
  v12 = [(NSArray *)controllersCopy copy];
  v13 = self->_viewControllers;
  self->_viewControllers = v12;

  ++self->_referenceCountForIgnoringContentOffsetUpdateRequests;
  v70 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v85 objects:v92 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v86;
    v18 = MEMORY[0x277D768C8];
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v86 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v85 + 1) + 8 * i);
        if (![(NSArray *)self->_viewControllers containsObject:v20])
        {
          parentViewController = [v20 parentViewController];

          if (parentViewController == self)
          {
            [v70 addObject:v20];
            [v20 willMoveToParentViewController:0];
          }

          v22 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:v20];
          [v22 prepareViewControllerForTearDown];
          v23 = v18[1];
          v83[0] = *v18;
          v83[1] = v23;
          v84 = 0;
          [v22 applyNewContentInsetDescriptor:v83];
          v24 = [(SKUIScrollingTabBarController *)self _parentCellForViewController:v20];
          [v24 setViewController:0];
          [(NSMapTable *)self->_viewControllerToItemContext removeObjectForKey:v20];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v85 objects:v92 count:16];
    }

    while (v16);
  }

  --self->_referenceCountForIgnoringContentOffsetUpdateRequests;
  v68 = [(NSArray *)self->_viewControllers count];
  v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v68];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v26 = self->_viewControllers;
  v27 = [(NSArray *)v26 countByEnumeratingWithState:&v79 objects:v91 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v80;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v80 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v79 + 1) + 8 * j);
        if (([v14 containsObject:v31] & 1) == 0)
        {
          [v25 addObject:v31];
          if ([v31 conformsToProtocol:&unk_2828EAAC0])
          {
            clientContext = [(SKUIViewController *)self clientContext];
            [v31 setClientContext:clientContext];
          }

          [(SKUIScrollingTabBarController *)self addChildViewController:v31];
          v33 = [[SKUIScrollingTabBarControllerItemContext alloc] initWithViewController:v31];
          [(SKUIScrollingTabBarControllerItemContext *)v33 setDelegate:self];
          viewControllerToItemContext = self->_viewControllerToItemContext;
          if (!viewControllerToItemContext)
          {
            v35 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:v68];
            v36 = self->_viewControllerToItemContext;
            self->_viewControllerToItemContext = v35;

            viewControllerToItemContext = self->_viewControllerToItemContext;
          }

          [(NSMapTable *)viewControllerToItemContext setObject:v33 forKey:v31];
        }
      }

      v28 = [(NSArray *)v26 countByEnumeratingWithState:&v79 objects:v91 count:16];
    }

    while (v28);
  }

  if (v67)
  {
    v67[2]();
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v37 = v25;
  v38 = [v37 countByEnumeratingWithState:&v75 objects:v90 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v76;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v76 != v40)
        {
          objc_enumerationMutation(v37);
        }

        [*(*(&v75 + 1) + 8 * k) didMoveToParentViewController:self];
      }

      v39 = [v37 countByEnumeratingWithState:&v75 objects:v90 count:16];
    }

    while (v39);
  }

  v69 = v37;

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v42 = v70;
  v43 = [v42 countByEnumeratingWithState:&v71 objects:v89 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v72;
    do
    {
      for (m = 0; m != v44; ++m)
      {
        if (*v72 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v71 + 1) + 8 * m);
        [v47 removeFromParentViewController];
        v48 = [(SKUIScrollingTabBarController *)self _deepestFocusedViewControllerWithTopLevelFocusedViewController:v47];
        focusedViewController = self->_focusedViewController;

        if (v48 == focusedViewController)
        {
          [(SKUIScrollingTabBarController *)self _setFocusedViewController:0 showBarsIfNeeded:1 animated:0 notifyDelegate:0];
        }

        if ([v47 conformsToProtocol:&unk_2828EAAC0])
        {
          [v47 setClientContext:0];
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v71 objects:v89 count:16];
    }

    while (v44);
  }

  if (downCopy || ![(SKUIScrollingTabBarController *)self isViewLoaded])
  {
    v50 = v64;
    v51 = v69;
    if (!v64)
    {
      goto LABEL_71;
    }
  }

  else
  {
    [(SKUIScrollingTabBarController *)self _updateTabBarButtons];
    v50 = v64;
    if (!v64)
    {
      [(SKUIScrollingTabBarController *)self _updateForHorizontalLayoutChange];
      v51 = v69;
      goto LABEL_71;
    }

    [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView setNeedsLayout];
    v51 = v69;
  }

  v52 = [(NSArray *)self->_viewControllers indexOfObject:v50];
  if (v52 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v56 = v52;
    [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView bounds];
    Width = CGRectGetWidth(v94);
    v58 = selectedIndex;
    if (Width > 0.00000011920929)
    {
      [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView contentSize];
      v60 = v59;
      [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView contentOffset];
      if (v61 < 0.0)
      {
        v61 = 0.0;
      }

      if (v61 >= v60 - Width)
      {
        v61 = v60 - Width;
      }

      v58 = vcvtad_u64_f64(v61 / Width);
    }

    if (v58 == v56)
    {
      goto LABEL_71;
    }

    selfCopy2 = self;
    v55 = v56;
    goto LABEL_69;
  }

  if (selectedIndex >= [(NSArray *)self->_viewControllers count])
  {
    v53 = 0;
  }

  else
  {
    v53 = selectedIndex;
  }

  if (v53 < [(NSArray *)self->_viewControllers count]&& v53 != [(SKUIScrollingTabBarController *)self selectedIndex])
  {
    selfCopy2 = self;
    v55 = v53;
LABEL_69:
    [(SKUIScrollingTabBarController *)selfCopy2 setSelectedIndex:v55];
  }

LABEL_71:
  if (v65)
  {
    [(SKUIScrollingTabBarController *)self setTransientViewController:v65 animated:0];
  }

  controllersCopy = v66;
  handlerCopy = v67;
LABEL_74:
}

- (id)_tabBarBackdropGroupName
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p> Backdrop Group", v5, self];

  return v6;
}

- (void)_updateAdditionalPositionOffsetsWithUpdateRecord:(id *)record
{
  if (!self->_tabBarExplicitlyHidden)
  {
    var0 = record->var0;
    var2 = record->var2;
    var3 = record->var3;
    var1 = record->var1;
    if (var0)
    {
      [(UIView *)self->_tabBarContainerView center];
      v7.f64[1] = v6;
      [(UIView *)self->_tabBarContainerView setCenter:vaddq_f64(vsubq_f64(v7, var1), self->_additionalTabBarButtonsContainerPositionOffset)];
    }

    else if (!record->var2)
    {
      return;
    }

    if ([(SKUIScrollingTabBarPalette *)self->_tabBarPalette isAttached])
    {
      [(SKUIScrollingTabBarPalette *)self->_tabBarPalette center];
      v9.f64[1] = v8;
      if (var0)
      {
        v9 = vsubq_f64(vaddq_f64(var1, v9), self->_additionalTabBarButtonsContainerPositionOffset);
      }

      if (var2)
      {
        v9 = vaddq_f64(vsubq_f64(v9, v12), self->_additionalTabBarPalettePositionOffset);
      }

      tabBarPalette = self->_tabBarPalette;

      [(SKUIScrollingTabBarPalette *)tabBarPalette setCenter:*&v9];
    }
  }
}

- (void)_updateDynamicBarGeometry
{
  navigationController = [(UIViewController *)self->_focusedViewController navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar bounds];
  Height = CGRectGetHeight(v20);

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] statusBarFrame];
  v7 = CGRectGetHeight(v21);

  [(SKUIDynamicBarAnimator *)self->_dynamicBarAnimator setTopBarHeight:1 forState:Height];
  [(SKUIDynamicBarAnimator *)self->_dynamicBarAnimator setTopBarHeight:0 forState:-1.0 - v7];
  [(SKUIDynamicBarAnimator *)self->_dynamicBarAnimator setBottomBarOffset:1 forState:0.0];
  [(SKUIDynamicBarAnimator *)self->_dynamicBarAnimator setBottomBarOffset:0 forState:49.0];
  [(UIScrollView *)self->_focusedContentScrollView bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(UIScrollView *)self->_focusedContentScrollView contentInset];
  v17 = Height - v16;
  v22.origin.x = v9;
  v22.origin.y = v11;
  v22.size.width = v13;
  v22.size.height = v15;
  [(SKUIDynamicBarAnimator *)self->_dynamicBarAnimator setMinimumTopBarHeight:v17 - CGRectGetMinY(v22)];
  dynamicBarAnimator = self->_dynamicBarAnimator;

  [(SKUIDynamicBarAnimator *)dynamicBarAnimator setMaximumBottomBarOffset:1.79769313e308];
}

- (void)_updateFocusedViewControllerInsetsForVerticalLayoutChange
{
  view = [(SKUIScrollingTabBarController *)self view];
  navigationController = [(UIViewController *)self->_focusedViewController navigationController];
  navigationBar = [navigationController navigationBar];

  [(SKUIScrollingTabBarController *)self _viewControllerContentScrollViewContentInsetDescriptor:0];
  [navigationBar bounds];
  [view convertRect:navigationBar fromView:?];
  MaxY = CGRectGetMaxY(v7);
  [(SKUIScrollingTabBarController *)self _effectiveBottomBarOffset];
  [(UIScrollView *)self->_focusedContentScrollView contentInset];
  [(UIScrollView *)self->_focusedContentScrollView setContentInset:MaxY];
  [(UIScrollView *)self->_focusedContentScrollView scrollIndicatorInsets];
  [(UIScrollView *)self->_focusedContentScrollView setScrollIndicatorInsets:MaxY];
}

- (void)_updateFocusedViewControllerWithHorizontalLayoutContext:(id *)context
{
  var2 = context->var2;
  if (var2 == context->var1 || var2 <= 0.5)
  {
    var0 = context->var0;
  }

  else
  {
    var0 = context->var1;
  }

  v7 = [(NSArray *)self->_viewControllers objectAtIndex:var0];
  [(SKUIScrollingTabBarController *)self _setFocusedViewController:v7 showBarsIfNeeded:1 animated:1 notifyDelegate:1];
}

- (void)_updateForHorizontalLayoutChange
{
  v41 = *MEMORY[0x277D85DE8];
  [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView bounds];
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  v7 = CGRectGetWidth(v42);
  if (v7 >= 2.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 2.0;
  }

  collectionViewLayout = [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView collectionViewLayout];
  v10 = [collectionViewLayout layoutAttributesForElementsInRect:{x, y, width, height}];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = *v37;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v36 + 1) + 8 * i) frame];
        v49.origin.x = v18;
        v49.origin.y = v19;
        v49.size.width = v20;
        v49.size.height = v21;
        v43.origin.x = x;
        v43.origin.y = y;
        v43.size.width = width;
        v43.size.height = height;
        if (!CGRectIntersectsRect(v43, v49))
        {
          if (!v14)
          {
            v14 = objc_alloc_init(MEMORY[0x277CCAB58]);
          }

          [v14 addIndex:v15];
        }

        ++v15;
      }

      v13 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  if ([v14 count])
  {
    v22 = [v11 mutableCopy];
    [v22 removeObjectsAtIndexes:v14];

    v11 = v22;
  }

  v23 = [v11 sortedArrayUsingComparator:&__block_literal_global_165];

  if ([v23 count])
  {
    firstObject = [v23 firstObject];
    indexPath = [firstObject indexPath];
    item = [indexPath item];

    lastObject = [v23 lastObject];
    indexPath2 = [lastObject indexPath];
    item2 = [indexPath2 item];

    if (item2 == item + 1)
    {
      [lastObject frame];
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      v45 = CGRectIntersection(v44, v50);
      v30 = CGRectGetWidth(v45) / v8;
    }

    else
    {
      [firstObject frame];
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      v47 = CGRectIntersection(v46, v51);
      v31 = CGRectGetWidth(v47);
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      v30 = 1.0 - v31 / CGRectGetWidth(v48);
    }

    if (v30 < 0.0)
    {
      v30 = 0.0;
    }

    v32 = fmin(v30, 1.0);
    if (self->_indexOfViewControllerWithUpdatedContentSize == 0x7FFFFFFFFFFFFFFFLL)
    {
      v33 = item;
      v34 = item2;
      v35 = v32;
      [(SKUIScrollingTabBarController *)self _popVisibleNavigationStacksToRootWithHorizontalLayoutContext:&v33];
      [(SKUIScrollingTabBarController *)self _updateLayoutOfVisibleCollectionViewCells];
      v33 = item;
      v34 = item2;
      v35 = v32;
      [(SKUIScrollingTabBarController *)self _updateTabBarButtonsSelectionProgressWithHorizontalLayoutContext:&v33];
      v33 = item;
      v34 = item2;
      v35 = v32;
      [(SKUIScrollingTabBarController *)self _updateFocusedViewControllerWithHorizontalLayoutContext:&v33];
      v33 = item;
      v34 = item2;
      v35 = v32;
      [(SKUIScrollingTabBarController *)self _discardUndesirableLastSelectedPageIndexesWithHorizontalLayoutContext:&v33];
      v33 = item;
      v34 = item2;
      v35 = v32;
      [(SKUIScrollingTabBarController *)self _notifyViewControllerAppearanceProgressUpdateWithHorizontalLayoutContext:&v33];
    }

    else
    {
      v33 = item;
      v34 = item2;
      v35 = v32;
      [(SKUIScrollingTabBarController *)self _invalidateContentCollectionViewLayoutForUpdatedContentSizeWithHorizontalLayoutContext:&v33 indexOfViewControllerWithUpdatedContentSize:?];
      self->_indexOfViewControllerWithUpdatedContentSize = 0x7FFFFFFFFFFFFFFFLL;
      [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView layoutIfNeeded];
    }
  }
}

uint64_t __65__SKUIScrollingTabBarController__updateForHorizontalLayoutChange__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 indexPath];
  v6 = [v5 item];

  v7 = [v4 indexPath];

  v8 = [v7 item];
  v9 = -1;
  if (v6 >= v8)
  {
    v9 = 1;
  }

  if (v6 == v8)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

- (void)_updateHidesBarsOnSwipeAvailability
{
  focusedContentScrollView = self->_focusedContentScrollView;
  if (!focusedContentScrollView || self->_transientViewController || self->_tabBarExplicitlyHidden)
  {
    v4 = 0;
  }

  else
  {
    [(UIScrollView *)focusedContentScrollView contentSize];
    v8 = v7;
    view = [(SKUIScrollingTabBarController *)self view];
    [view bounds];
    v4 = v8 > CGRectGetHeight(v11) * 1.5;
  }

  if (self->_canHideBarsOnSwipe != v4)
  {
    self->_canHideBarsOnSwipe = v4;
    if ([(UIViewController *)self->_focusedViewController conformsToProtocol:&unk_2828EEFB8])
    {
      if (self->_canHideBarsOnSwipe)
      {
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }

      [(UIViewController *)self->_focusedViewController setScrollViewDelegateObserver:selfCopy];
    }

    if (!self->_canHideBarsOnSwipe)
    {
      dynamicBarAnimator = self->_dynamicBarAnimator;

      [(SKUIDynamicBarAnimator *)dynamicBarAnimator attemptTransitionToState:1 animated:0];
    }
  }
}

- (void)_updateHorizontalScrollingAvailability
{
  if (self->_scrollEnabled)
  {
    if ([(UIViewController *)self->_topLevelFocusedViewController conformsToProtocol:&unk_282993DA8])
    {
      isShowingNavigationStackRootContent = [(UIViewController *)self->_topLevelFocusedViewController isShowingNavigationStackRootContent];
    }

    else
    {
      isShowingNavigationStackRootContent = 1;
    }
  }

  else
  {
    isShowingNavigationStackRootContent = 0;
  }

  contentCollectionView = self->_contentCollectionView;

  [(SKUIScrollingTabBarContentCollectionView *)contentCollectionView setScrollEnabled:isShowingNavigationStackRootContent];
}

- (void)_updateLayoutOfCollectionViewCell:(id)cell
{
  cellCopy = cell;
  [cellCopy layoutIfNeeded];
  viewController = [cellCopy viewController];
  viewControllerContainerView = [cellCopy viewControllerContainerView];

  superview = [viewControllerContainerView superview];
  [superview bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView contentSize];
  v40 = v15;
  [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView bounds];
  Width = CGRectGetWidth(v48);
  if (Width >= 2.0)
  {
    v17 = Width;
  }

  else
  {
    v17 = 2.0;
  }

  [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView contentOffset];
  v19 = v18;
  v20 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:viewController];
  nestedPagingScrollView = [v20 nestedPagingScrollView];
  v22 = nestedPagingScrollView;
  if (nestedPagingScrollView)
  {
    [nestedPagingScrollView contentOffset];
    v42 = v24;
    v43 = v23;
    [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView convertRect:superview fromView:v8, v10, v12, v14];
    v41 = v14;
    x = v49.origin.x;
    y = v49.origin.y;
    v44 = v17;
    v27 = v49.size.width;
    height = v49.size.height;
    v45 = v19;
    v29 = v19 - CGRectGetMinX(v49);
    if (v29 >= 0.0)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0.0;
    }

    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = v27;
    v17 = v44;
    v50.size.height = height;
    v31 = CGRectGetWidth(v50) - v44;
    if (v30 >= v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = v30;
    }

    v51.origin.x = v8;
    v51.origin.y = v10;
    v51.size.width = v12;
    v51.size.height = v41;
    MinY = CGRectGetMinY(v51);
    v52.origin.x = v8;
    v52.origin.y = v10;
    v52.size.width = v12;
    v52.size.height = v41;
    [viewControllerContainerView setFrame:{v32, MinY, v44, CGRectGetHeight(v52)}];
    if (v43 != v32)
    {
      [v20 updateNestedPagingScrollViewContentOffset:{v32, v42}];
    }

    v34 = vcvtmd_u64_f64((v44 * 0.5 + v32) / v44);
    v19 = v45;
  }

  else
  {
    [viewControllerContainerView setFrame:{v8, v10, v12, v14}];
    v34 = 0;
  }

  [v20 setLastSelectedPageIndex:v34];
  if ([v20 viewControllerIsNavigationController])
  {
    layer = [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView layer];
    needsLayout = [layer needsLayout];

    if ((needsLayout & 1) == 0)
    {
      navigationBar = [viewController navigationBar];
      if ([navigationBar conformsToProtocol:&unk_2829620A0])
      {
        v38 = navigationBar;
        [v38 positionOffset];
        v39 = v19;
        if (v19 >= 0.0)
        {
          v39 = 0.0;
          if (v19 > v40 - v17)
          {
            v39 = v19 - (v40 - v17);
          }
        }

        [v38 setPositionOffset:v39];
      }
    }
  }
}

- (void)_updateLayoutOfTabBar
{
  if ([(SKUIScrollingTabBarController *)self isViewLoaded])
  {
    view = [(SKUIScrollingTabBarController *)self view];
    [view bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    isAttached = [(SKUIScrollingTabBarPalette *)self->_tabBarPalette isAttached];
    v12 = 0.0;
    if (isAttached)
    {
      traitCollection = [view traitCollection];
      [traitCollection displayScale];
      v15 = v14;

      if (v15 < 0.00000011920929)
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen scale];
        v15 = v17;
      }

      [(SKUIScrollingTabBarPalette *)self->_tabBarPalette paletteHeight];
      v12 = 1.0 / v15 + v18;
    }

    if (self->_tabBarExplicitlyHidden)
    {
      horizontal = self->_tabBarExplicitHidingOffset.horizontal;
      vertical = self->_tabBarExplicitHidingOffset.vertical;
      v35 = 0.0;
      v33 = vertical;
      v34 = horizontal;
    }

    else
    {
      [(SKUIScrollingTabBarController *)self _effectiveBottomBarOffset];
      v35 = v21;
      horizontal = self->_additionalTabBarButtonsContainerPositionOffset.horizontal;
      vertical = self->_additionalTabBarButtonsContainerPositionOffset.vertical;
      v33 = self->_additionalTabBarPalettePositionOffset.vertical;
      v34 = self->_additionalTabBarPalettePositionOffset.horizontal;
    }

    v38.origin.x = v4;
    v38.origin.y = v6;
    v38.size.width = v8;
    v38.size.height = v10;
    MaxY = CGRectGetMaxY(v38);
    v39.origin.x = v4;
    v39.origin.y = v6;
    v39.size.width = v8;
    v39.size.height = v12 + 49.0;
    [(UIView *)self->_tabBarContainerView setFrame:v4 + horizontal, vertical + v35 + MaxY - CGRectGetHeight(v39), v8, v39.size.height];
    [(UIView *)self->_tabBarContainerView bounds];
    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    tabBarExtendedBackgroundView = self->_tabBarExtendedBackgroundView;
    if (tabBarExtendedBackgroundView)
    {
      [(SKUIScrollingTabBarBackgroundView *)tabBarExtendedBackgroundView setFrame:v23, v24, v25, v26];
    }

    if (isAttached)
    {
      [(SKUIScrollingTabBarPalette *)self->_tabBarPalette setFrame:v34 + v27 - horizontal, v33 + v28 - vertical, v29, v12];
    }

    v40.origin.x = v27;
    v40.origin.y = v28;
    v40.size.width = v29;
    v40.size.height = v30;
    v32 = CGRectGetMaxY(v40);
    v41.origin.x = v27;
    v41.origin.y = v28;
    v41.size.width = v29;
    v41.size.height = 49.0;
    [(SKUICrossFadingTabBar *)self->_tabBar setFrame:v27, v32 - CGRectGetHeight(v41), v29, 49.0];
  }
}

- (void)_updateLayoutOfVisibleCollectionViewCells
{
  v13 = *MEMORY[0x277D85DE8];
  visibleCells = [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView visibleCells];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [visibleCells countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(visibleCells);
        }

        [(SKUIScrollingTabBarController *)self _updateLayoutOfCollectionViewCell:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [visibleCells countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_updateNavigationBarsForVerticalLayoutChange
{
  v28 = *MEMORY[0x277D85DE8];
  visibleCells = [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView visibleCells];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [visibleCells countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v24;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(visibleCells);
        }

        viewController = [*(*(&v23 + 1) + 8 * i) viewController];
        v11 = [(SKUIScrollingTabBarController *)self _deepestFocusedViewControllerWithTopLevelFocusedViewController:viewController];

        navigationController = [v11 navigationController];
        navigationBar = [navigationController navigationBar];

        if ([navigationBar conformsToProtocol:&unk_2829620A0])
        {
          v14 = navigationBar;
          [v14 positionOffset];
          v16 = v15;
          [(SKUIScrollingTabBarController *)self _effectiveBottomBarOffset];
          v18 = v17;
          [v14 frame];
          v19 = v18 - CGRectGetHeight(v29);
          [v14 setPositionOffset:{v16, v19}];
          if (v6)
          {
            if (vabdd_f64(v8, v19) > 0.00000011920929)
            {
              v8 = 0.0;
            }
          }

          else
          {
            v8 = v19;
          }

          v6 = 1;
        }
      }

      v5 = [visibleCells countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  else
  {
    v8 = 0.0;
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  statusBar = [mEMORY[0x277D75128] statusBar];

  CGAffineTransformMakeTranslation(&v22, 0.0, v8);
  [statusBar setTransform:&v22];
}

- (void)_updateScrollViewContentOffsetsToTargetContentOffsets
{
  if ([(SKUIScrollingTabBarController *)self isViewLoaded])
  {
    view = [(SKUIScrollingTabBarController *)self view];
    [view bounds];
    Width = CGRectGetWidth(v12);

    [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView contentSize];
    v6 = v5;
    [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView bounds];
    MidX = CGRectGetMidX(v13);
    if (MidX < 1.0)
    {
      MidX = 1.0;
    }

    if (MidX >= v6)
    {
      MidX = v6;
    }

    v8 = round((MidX + -1.0) / Width);
    [(SKUIScrollingTabBarContentCollectionView *)self->_contentCollectionView contentOffset];
    if (v9 != Width * v8)
    {
      contentCollectionView = self->_contentCollectionView;

      [(SKUIScrollingTabBarContentCollectionView *)contentCollectionView setContentOffset:?];
    }
  }
}

- (void)_updateStatusBarPositionForcingVisible:(BOOL)visible
{
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  *&v11.a = *MEMORY[0x277CBF2C0];
  *&v11.c = v3;
  *&v11.tx = *(MEMORY[0x277CBF2C0] + 32);
  if (!visible)
  {
    navigationController = [(UIViewController *)self->_focusedViewController navigationController];
    navigationBar = [navigationController navigationBar];

    if ([navigationBar conformsToProtocol:&unk_2829620A0])
    {
      [navigationBar positionOffset];
      CGAffineTransformMakeTranslation(&v11, v6, v7);
    }
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  statusBar = [mEMORY[0x277D75128] statusBar];
  v10 = v11;
  [statusBar setTransform:&v10];
}

- (void)_updateTabBarBackgroundsAndHairlines
{
  if ([(SKUIScrollingTabBarPalette *)self->_tabBarPalette tabBarBackgroundExtendsBehindPalette])
  {
    if ([(SKUIScrollingTabBarPalette *)self->_tabBarPalette isAttached])
    {
      if (self->_tabBarExtendedBackgroundView)
      {
        v3 = 1;
      }

      else
      {
        v4 = [SKUIScrollingTabBarBackgroundView alloc];
        [(UIView *)self->_tabBarContainerView bounds];
        v5 = [(SKUIScrollingTabBarBackgroundView *)v4 initWithFrame:?];
        tabBarExtendedBackgroundView = self->_tabBarExtendedBackgroundView;
        self->_tabBarExtendedBackgroundView = v5;

        v3 = 1;
        [(SKUIScrollingTabBarBackgroundView *)self->_tabBarExtendedBackgroundView setShowsBackdrop:1];
        [(SKUIScrollingTabBarBackgroundView *)self->_tabBarExtendedBackgroundView setShowsTopHairline:1];
        v7 = self->_tabBarExtendedBackgroundView;
        _tabBarBackdropGroupName = [(SKUIScrollingTabBarController *)self _tabBarBackdropGroupName];
        [(SKUIScrollingTabBarBackgroundView *)v7 setBackdropBarGroupName:_tabBarBackdropGroupName];

        [(UIView *)self->_tabBarContainerView insertSubview:self->_tabBarExtendedBackgroundView atIndex:0];
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  [(SKUIScrollingTabBarBackgroundView *)self->_tabBarExtendedBackgroundView setHidden:v3 ^ 1];
  backgroundView = [(SKUICrossFadingTabBar *)self->_tabBar backgroundView];
  [backgroundView setHidden:v3];
  [backgroundView setUsesOpaqueColorForTopHairline:v3 ^ 1];
  _backgroundView = [(SKUIScrollingTabBarPalette *)self->_tabBarPalette _backgroundView];
  [_backgroundView setShowsBackdrop:v3 ^ 1];
  [_backgroundView setShowsTopHairline:v3 ^ 1];
  [_backgroundView setShowsBottomHairline:1];
}

- (void)_updateTabBarButtons
{
  v30 = *MEMORY[0x277D85DE8];
  tabBarButtons = [(SKUICrossFadingTabBar *)self->_tabBar tabBarButtons];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [tabBarButtons countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(tabBarButtons);
        }

        [*(*(&v24 + 1) + 8 * i) removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
      }

      v5 = [tabBarButtons countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v18 = tabBarButtons;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_viewControllers;
  v8 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v21;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        tabBarItem = [*(*(&v20 + 1) + 8 * j) tabBarItem];
        v14 = objc_alloc_init(SKUICrossFadingTabBarButton);
        title = [tabBarItem title];
        [(SKUICrossFadingTabBarButton *)v14 setTitle:title];

        image = [tabBarItem image];
        [(SKUICrossFadingTabBarButton *)v14 setImage:image];

        selectedImage = [tabBarItem selectedImage];
        [(SKUICrossFadingTabBarButton *)v14 setSelectedImage:selectedImage];

        [(SKUICrossFadingTabBarButton *)v14 addTarget:self action:sel__tabBarButtonTapped_ forControlEvents:1];
        if (!v10)
        {
          v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        [v10 addObject:v14];
        [tabBarItem setView:v14];
      }

      v9 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  [(SKUICrossFadingTabBar *)self->_tabBar setTabBarButtons:v10];
}

- (void)_updateTabBarButtonsSelectionProgressWithHorizontalLayoutContext:(id *)context
{
  if (context->var0 == context->var1)
  {
    var2 = 0.0;
  }

  else
  {
    var2 = context->var2;
  }

  tabBarButtons = [(SKUICrossFadingTabBar *)self->_tabBar tabBarButtons];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __98__SKUIScrollingTabBarController__updateTabBarButtonsSelectionProgressWithHorizontalLayoutContext___block_invoke;
  v7[3] = &unk_2781FC818;
  v7[4] = self;
  v8 = *&context->var0;
  v9 = context->var2;
  v10 = var2;
  [tabBarButtons enumerateObjectsUsingBlock:v7];
}

uint64_t __98__SKUIScrollingTabBarController__updateTabBarButtonsSelectionProgressWithHorizontalLayoutContext___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = 0.0;
  if (!*(*(a1 + 32) + 1360))
  {
    v4 = *(a1 + 40);
    if (v4 <= a3)
    {
      v5 = *(a1 + 48);
      if (v5 >= a3)
      {
        if (v4 == a3)
        {
          v3 = 1.0 - *(a1 + 64);
        }

        else if (v5 == a3)
        {
          v3 = *(a1 + 64);
        }
      }
    }
  }

  return [a2 setSelectionProgress:v3];
}

- (void)_updateViewControllerContentScrollViewInset
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  [(SKUIScrollingTabBarController *)self _viewControllerContentScrollViewContentInsetDescriptor];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_viewControllers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:*(*(&v13 + 1) + 8 * v7)];
        v10 = v17;
        v11 = v18;
        v12 = v19;
        [v8 applyNewContentInsetDescriptor:&v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v20 count:16];
    }

    while (v5);
  }

  transientViewControllerItemContext = self->_transientViewControllerItemContext;
  v10 = v17;
  v11 = v18;
  v12 = v19;
  [(SKUIScrollingTabBarControllerItemContext *)transientViewControllerItemContext applyNewContentInsetDescriptor:&v10];
}

- ($175F26EC2B3A5A0892810A401BCEA849)_viewControllerContentScrollViewContentInsetDescriptor
{
  v5 = *&self->_proxyScrollViewContentInsetAdjustment.bottom;
  *&retstr->var0.top = *&self->_proxyScrollViewContentInsetAdjustment.top;
  *&retstr->var0.bottom = v5;
  retstr->var1 = 49.0;
  result = [(SKUIScrollingTabBarPalette *)self->_tabBarPalette isAttached];
  if (result)
  {
    view = [(SKUIScrollingTabBarController *)self view];
    traitCollection = [view traitCollection];
    [traitCollection displayScale];
    v10 = v9;

    if (v10 < 0.00000011920929)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v10 = v12;
    }

    result = [(SKUIScrollingTabBarPalette *)self->_tabBarPalette paletteHeight];
    v14 = 1.0 / v10 + v13 + 49.0;
    retstr->var1 = v14;
  }

  else
  {
    v14 = 49.0;
  }

  retstr->var0.bottom = v14 + retstr->var0.bottom;
  return result;
}

- (void)_viewControllerNeedsNestedPagingScrollViewUpdate:(id)update
{
  v3 = [(NSMapTable *)self->_viewControllerToItemContext objectForKey:update];
  [v3 updateForPossibleNestedPagingScrollViewChange];
}

- (UIOffset)additionalTabBarButtonsContainerPositionOffset
{
  horizontal = self->_additionalTabBarButtonsContainerPositionOffset.horizontal;
  vertical = self->_additionalTabBarButtonsContainerPositionOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (UIOffset)additionalTabBarPalettePositionOffset
{
  horizontal = self->_additionalTabBarPalettePositionOffset.horizontal;
  vertical = self->_additionalTabBarPalettePositionOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (void)initWithNibName:bundle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIScrollingTabBarController initWithNibName:bundle:]";
}

@end