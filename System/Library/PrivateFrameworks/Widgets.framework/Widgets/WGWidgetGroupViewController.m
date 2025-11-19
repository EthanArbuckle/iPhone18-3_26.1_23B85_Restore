@interface WGWidgetGroupViewController
- (BOOL)isWidgetExtensionVisible:(id)a3;
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (CGSize)widgetListViewController:(id)a3 sizeForInterfaceOrientation:(int64_t)a4;
- (UIEdgeInsets)contentOccludingInset;
- (UIEdgeInsets)widgetListViewController:(id)a3 contentOccludingInsetsForInterfaceOrientation:(int64_t)a4;
- (WGWidgetGroupViewController)initWithWidgetDiscoveryController:(id)a3 listSettings:(WGWidgetListSettings)a4;
- (WGWidgetGroupViewControllerDelegate)delegate;
- (WGWidgetListSettings)listSettings;
- (id)_scrollViewForListViewController:(id)a3;
- (int64_t)_activeLayoutMode;
- (int64_t)_layoutModeForSize:(CGSize)a3;
- (void)_loadWidgetListViewController;
- (void)editViewDidDisappear:(id)a3;
- (void)editViewWillDisappear:(id)a3;
- (void)majorListViewControllerDidChangeHeaderVisibility:(id)a3;
- (void)makeVisibleWidgetWithIdentifier:(id)a3 completion:(id)a4;
- (void)presentEditViewWithCompletion:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidScrollToTop:(id)a3;
- (void)scrollViewWillBeginDecelerating:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setLegibilitySettings:(id)a3;
- (void)setShouldBlurContent:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation WGWidgetGroupViewController

- (WGWidgetGroupViewController)initWithWidgetDiscoveryController:(id)a3 listSettings:(WGWidgetListSettings)a4
{
  v4 = *&a4.useFavorites;
  carouselEdges = a4.carouselEdges;
  v8 = a3;
  v13.receiver = self;
  v13.super_class = WGWidgetGroupViewController;
  v9 = [(WGWidgetGroupViewController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_discoveryController, a3);
    [(WGWidgetDiscoveryController *)v10->_discoveryController addDiscoveryObserver:v10];
    [(WGWidgetDiscoveryController *)v10->_discoveryController setDebuggingHandler:v10];
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v10 selector:sel_editViewWillAppear_ name:@"WGWidgetListEditViewControllerWillAppear" object:0];
    [v11 addObserver:v10 selector:sel_editViewDidAppear_ name:@"WGWidgetListEditViewControllerDidAppear" object:0];
    [v11 addObserver:v10 selector:sel_editViewWillDisappear_ name:@"WGWidgetListEditViewControllerWillDisappear" object:0];
    [v11 addObserver:v10 selector:sel_editViewDidDisappear_ name:@"WGWidgetListEditViewControllerDidDisappear" object:0];
    v10->_listSettings.carouselEdges = carouselEdges;
    *&v10->_listSettings.useFavorites = v4;
  }

  return v10;
}

- (id)_scrollViewForListViewController:(id)a3
{
  v4 = a3;
  [(WGWidgetGroupViewController *)self loadViewIfNeeded];
  [v4 loadViewIfNeeded];
  v5 = [v4 widgetListView];

  return v5;
}

- (void)setShouldBlurContent:(BOOL)a3
{
  if (self->_shouldBlurContent != a3)
  {
    self->_shouldBlurContent = a3;
    [(WGMajorListViewController *)self->_majorColumnListViewController setShouldBlurContent:?];
  }
}

- (void)setLegibilitySettings:(id)a3
{
  majorColumnListViewController = self->_majorColumnListViewController;
  v5 = a3;
  v6 = [(WGMajorListViewController *)majorColumnListViewController footerView];
  [v6 setLegibilitySettings:v5];

  debugLabel = self->_debugLabel;
  v8 = [v5 primaryColor];

  [(UILabel *)debugLabel setTextColor:v8];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = WGWidgetGroupViewController;
  [(WGWidgetGroupViewController *)&v5 viewDidLoad];
  v3 = [(WGWidgetGroupViewController *)self view];
  [(WGWidgetGroupViewController *)self _loadWidgetListViewController];
  v4 = [(WGCarouselListViewController *)self->_majorColumnListViewController view];
  [v3 bounds];
  [v4 setFrame:?];
  [v4 setAutoresizingMask:18];
  [v3 addSubview:v4];
  [(WGCarouselListViewController *)self->_majorColumnListViewController setContainerView:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = WGWidgetGroupViewController;
  [(WGWidgetGroupViewController *)&v10 viewWillAppear:?];
  v5 = [(WGCarouselListViewController *)self->_majorColumnListViewController view];
  v6 = [v5 superview];

  if (!v6)
  {
    v7 = [(WGWidgetGroupViewController *)self view];
    [v7 addSubview:v5];

    majorColumnListViewController = self->_majorColumnListViewController;
    v9 = [(WGWidgetGroupViewController *)self view];
    [(WGCarouselListViewController *)majorColumnListViewController setContainerView:v9];
  }

  [(UIViewController *)self->_majorColumnListViewController wg_beginAppearanceTransitionIfNecessary:1 animated:v3];
  [(UILabel *)self->_debugLabel setText:@"Appearing"];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = WGWidgetGroupViewController;
  [(WGWidgetGroupViewController *)&v8 viewDidAppear:a3];
  v4 = +[WGWidgetEventTracker sharedInstance];
  v5 = [(WGWidgetGroupViewController *)self location];
  v6 = [(WGWidgetDiscoveryController *)self->_discoveryController enabledWidgetIdentifiersForAllGroups];
  v7 = [(WGWidgetDiscoveryController *)self->_discoveryController disabledWidgetIdentifiers];
  [v4 widgetListDidAppearAtLocation:v5 withEnabledWidgets:v6 disabledWidgets:v7];

  [(UIViewController *)self->_majorColumnListViewController wg_endAppearanceTransitionIfNecessary];
  [(UILabel *)self->_debugLabel setText:@"Appeared"];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = WGWidgetGroupViewController;
  [(WGWidgetGroupViewController *)&v5 viewWillDisappear:?];
  [(UIViewController *)self->_majorColumnListViewController wg_beginAppearanceTransitionIfNecessary:0 animated:v3];
  [(UILabel *)self->_debugLabel setText:@"Disappearing"];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = WGWidgetGroupViewController;
  [(WGWidgetGroupViewController *)&v7 viewDidDisappear:a3];
  [(UIViewController *)self->_majorColumnListViewController wg_endAppearanceTransitionIfNecessary];
  v4 = [(WGCarouselListViewController *)self->_majorColumnListViewController presentedViewController];
  v5 = [(WGWidgetDiscoveryController *)self->_discoveryController presentedEditViewController];

  if (v4 == v5)
  {
    [(WGWidgetDiscoveryController *)self->_discoveryController dismissWidgetListEditViewControllerAnimated:0 completion:0];
  }

  v6 = +[WGWidgetEventTracker sharedInstance];
  [v6 widgetListDidDisappearAtLocation:{-[WGWidgetGroupViewController location](self, "location")}];

  [(UILabel *)self->_debugLabel setText:@"Disappeared"];
}

- (int64_t)_layoutModeForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = objc_opt_class();

  return [v5 layoutModeForSize:{width, height}];
}

- (int64_t)_activeLayoutMode
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (![(WGWidgetGroupViewController *)self isViewLoaded])
  {
    return 2 * ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1);
  }

  v5 = [(WGWidgetGroupViewController *)self view];
  [v5 bounds];
  v8 = [(WGWidgetGroupViewController *)self _layoutModeForSize:v6, v7];

  return v8;
}

- (void)_loadWidgetListViewController
{
  v3 = [[WGCarouselListViewController alloc] initWithWidgetDiscoveryController:self->_discoveryController listSettings:self->_listSettings.carouselEdges, *&self->_listSettings.useFavorites];
  majorColumnListViewController = self->_majorColumnListViewController;
  self->_majorColumnListViewController = v3;

  [(WGWidgetListViewController *)self->_majorColumnListViewController setDelegate:self];
  [(WGMajorListViewController *)self->_majorColumnListViewController setShouldBlurContent:[(WGWidgetGroupViewController *)self shouldBlurContent]];
  [(WGWidgetListViewController *)self->_majorColumnListViewController setShouldIncludeScrollView:1];
  [(WGWidgetGroupViewController *)self addChildViewController:self->_majorColumnListViewController];
  v5 = self->_majorColumnListViewController;

  [(WGCarouselListViewController *)v5 didMoveToParentViewController:self];
}

- (void)editViewWillDisappear:(id)a3
{
  if ([(UIViewController *)self wg_isAppearingOrAppeared])
  {
    majorColumnListViewController = self->_majorColumnListViewController;

    [(WGCarouselListViewController *)majorColumnListViewController beginAppearanceTransition:1 animated:1];
  }
}

- (void)editViewDidDisappear:(id)a3
{
  if ([(WGWidgetGroupViewController *)self _appearState]== 2)
  {
    majorColumnListViewController = self->_majorColumnListViewController;

    [(WGCarouselListViewController *)majorColumnListViewController endAppearanceTransition];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained performSelector:sel_scrollViewDidScroll_ withObject:v5];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained performSelector:sel_scrollViewWillBeginDragging_ withObject:v5];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained scrollViewWillEndDragging:v10 withVelocity:a5 targetContentOffset:{x, y}];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained scrollViewDidEndDragging:v7 willDecelerate:v4];
  }
}

- (void)scrollViewWillBeginDecelerating:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained performSelector:sel_scrollViewWillBeginDecelerating_ withObject:v5];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained performSelector:sel_scrollViewDidEndDecelerating_ withObject:v5];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained performSelector:sel_scrollViewDidEndScrollingAnimation_ withObject:v5];
  }
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained scrollViewShouldScrollToTop:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)scrollViewDidScrollToTop:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained performSelector:sel_scrollViewDidScrollToTop_ withObject:v5];
  }
}

- (void)majorListViewControllerDidChangeHeaderVisibility:(id)a3
{
  v4 = [(WGWidgetGroupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 widgetGroupViewControllerDidChangeHeaderVisibility:self];
  }
}

- (CGSize)widgetListViewController:(id)a3 sizeForInterfaceOrientation:(int64_t)a4
{
  v6 = [a3 viewIfLoaded];
  v7 = [v6 window];
  if (v7)
  {
    [v6 bounds];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v9 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained widgetGroupViewController:self sizeForInterfaceOrientation:a4];
    v9 = v13;
    v11 = v14;
  }

  v15 = v9;
  v16 = v11;
  result.height = v16;
  result.width = v15;
  return result;
}

- (UIEdgeInsets)widgetListViewController:(id)a3 contentOccludingInsetsForInterfaceOrientation:(int64_t)a4
{
  [(WGWidgetGroupViewController *)self contentOccludingInset];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained widgetGroupViewController:self contentOccludingInsetsForInterfaceOrientation:a4];
    v7 = v15;
    v9 = v16;
    v11 = v17;
    v13 = v18;
  }

  v19 = v7;
  v20 = v9;
  v21 = v11;
  v22 = v13;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (BOOL)isWidgetExtensionVisible:(id)a3
{
  v4 = a3;
  if ([(WGWidgetGroupViewController *)self _appearState])
  {
    v5 = [(WGWidgetListViewController *)self->_majorColumnListViewController isWidgetExtensionVisible:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (WGWidgetGroupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentOccludingInset
{
  top = self->_contentOccludingInset.top;
  left = self->_contentOccludingInset.left;
  bottom = self->_contentOccludingInset.bottom;
  right = self->_contentOccludingInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (WGWidgetListSettings)listSettings
{
  p_listSettings = &self->_listSettings;
  carouselEdges = self->_listSettings.carouselEdges;
  v4 = *&p_listSettings->useFavorites;
  result.useFavorites = v4;
  result.carouselIgnoresHeader = BYTE1(v4);
  result.pinned = BYTE2(v4);
  result.carouselEdges = carouselEdges;
  return result;
}

- (void)makeVisibleWidgetWithIdentifier:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v9 length])
  {
    v7 = self->_majorColumnListViewController;
    v8 = v7;
    if (v7)
    {
      [(WGWidgetListViewController *)v7 makeVisibleWidgetWithIdentifier:v9 completion:v6];
    }

    else if (v6)
    {
      v6[2](v6, 0);
    }
  }

  else if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)presentEditViewWithCompletion:(id)a3
{
  v4 = a3;
  discoveryController = self->_discoveryController;
  majorColumnListViewController = self->_majorColumnListViewController;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__WGWidgetGroupViewController_PPTTest__presentEditViewWithCompletion___block_invoke;
  v8[3] = &unk_279ED11F0;
  v9 = v4;
  v7 = v4;
  [(WGWidgetDiscoveryController *)discoveryController presentWidgetListEditViewControllerFromViewController:majorColumnListViewController animated:1 completion:v8];
}

uint64_t __70__WGWidgetGroupViewController_PPTTest__presentEditViewWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end