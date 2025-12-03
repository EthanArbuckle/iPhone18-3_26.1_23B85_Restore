@interface WGWidgetGroupViewController
- (BOOL)isWidgetExtensionVisible:(id)visible;
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (CGSize)widgetListViewController:(id)controller sizeForInterfaceOrientation:(int64_t)orientation;
- (UIEdgeInsets)contentOccludingInset;
- (UIEdgeInsets)widgetListViewController:(id)controller contentOccludingInsetsForInterfaceOrientation:(int64_t)orientation;
- (WGWidgetGroupViewController)initWithWidgetDiscoveryController:(id)controller listSettings:(WGWidgetListSettings)settings;
- (WGWidgetGroupViewControllerDelegate)delegate;
- (WGWidgetListSettings)listSettings;
- (id)_scrollViewForListViewController:(id)controller;
- (int64_t)_activeLayoutMode;
- (int64_t)_layoutModeForSize:(CGSize)size;
- (void)_loadWidgetListViewController;
- (void)editViewDidDisappear:(id)disappear;
- (void)editViewWillDisappear:(id)disappear;
- (void)majorListViewControllerDidChangeHeaderVisibility:(id)visibility;
- (void)makeVisibleWidgetWithIdentifier:(id)identifier completion:(id)completion;
- (void)presentEditViewWithCompletion:(id)completion;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidScrollToTop:(id)top;
- (void)scrollViewWillBeginDecelerating:(id)decelerating;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setLegibilitySettings:(id)settings;
- (void)setShouldBlurContent:(BOOL)content;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation WGWidgetGroupViewController

- (WGWidgetGroupViewController)initWithWidgetDiscoveryController:(id)controller listSettings:(WGWidgetListSettings)settings
{
  v4 = *&settings.useFavorites;
  carouselEdges = settings.carouselEdges;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = WGWidgetGroupViewController;
  v9 = [(WGWidgetGroupViewController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_discoveryController, controller);
    [(WGWidgetDiscoveryController *)v10->_discoveryController addDiscoveryObserver:v10];
    [(WGWidgetDiscoveryController *)v10->_discoveryController setDebuggingHandler:v10];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_editViewWillAppear_ name:@"WGWidgetListEditViewControllerWillAppear" object:0];
    [defaultCenter addObserver:v10 selector:sel_editViewDidAppear_ name:@"WGWidgetListEditViewControllerDidAppear" object:0];
    [defaultCenter addObserver:v10 selector:sel_editViewWillDisappear_ name:@"WGWidgetListEditViewControllerWillDisappear" object:0];
    [defaultCenter addObserver:v10 selector:sel_editViewDidDisappear_ name:@"WGWidgetListEditViewControllerDidDisappear" object:0];
    v10->_listSettings.carouselEdges = carouselEdges;
    *&v10->_listSettings.useFavorites = v4;
  }

  return v10;
}

- (id)_scrollViewForListViewController:(id)controller
{
  controllerCopy = controller;
  [(WGWidgetGroupViewController *)self loadViewIfNeeded];
  [controllerCopy loadViewIfNeeded];
  widgetListView = [controllerCopy widgetListView];

  return widgetListView;
}

- (void)setShouldBlurContent:(BOOL)content
{
  if (self->_shouldBlurContent != content)
  {
    self->_shouldBlurContent = content;
    [(WGMajorListViewController *)self->_majorColumnListViewController setShouldBlurContent:?];
  }
}

- (void)setLegibilitySettings:(id)settings
{
  majorColumnListViewController = self->_majorColumnListViewController;
  settingsCopy = settings;
  footerView = [(WGMajorListViewController *)majorColumnListViewController footerView];
  [footerView setLegibilitySettings:settingsCopy];

  debugLabel = self->_debugLabel;
  primaryColor = [settingsCopy primaryColor];

  [(UILabel *)debugLabel setTextColor:primaryColor];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = WGWidgetGroupViewController;
  [(WGWidgetGroupViewController *)&v5 viewDidLoad];
  view = [(WGWidgetGroupViewController *)self view];
  [(WGWidgetGroupViewController *)self _loadWidgetListViewController];
  view2 = [(WGCarouselListViewController *)self->_majorColumnListViewController view];
  [view bounds];
  [view2 setFrame:?];
  [view2 setAutoresizingMask:18];
  [view addSubview:view2];
  [(WGCarouselListViewController *)self->_majorColumnListViewController setContainerView:view];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v10.receiver = self;
  v10.super_class = WGWidgetGroupViewController;
  [(WGWidgetGroupViewController *)&v10 viewWillAppear:?];
  view = [(WGCarouselListViewController *)self->_majorColumnListViewController view];
  superview = [view superview];

  if (!superview)
  {
    view2 = [(WGWidgetGroupViewController *)self view];
    [view2 addSubview:view];

    majorColumnListViewController = self->_majorColumnListViewController;
    view3 = [(WGWidgetGroupViewController *)self view];
    [(WGCarouselListViewController *)majorColumnListViewController setContainerView:view3];
  }

  [(UIViewController *)self->_majorColumnListViewController wg_beginAppearanceTransitionIfNecessary:1 animated:appearCopy];
  [(UILabel *)self->_debugLabel setText:@"Appearing"];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = WGWidgetGroupViewController;
  [(WGWidgetGroupViewController *)&v8 viewDidAppear:appear];
  v4 = +[WGWidgetEventTracker sharedInstance];
  location = [(WGWidgetGroupViewController *)self location];
  enabledWidgetIdentifiersForAllGroups = [(WGWidgetDiscoveryController *)self->_discoveryController enabledWidgetIdentifiersForAllGroups];
  disabledWidgetIdentifiers = [(WGWidgetDiscoveryController *)self->_discoveryController disabledWidgetIdentifiers];
  [v4 widgetListDidAppearAtLocation:location withEnabledWidgets:enabledWidgetIdentifiersForAllGroups disabledWidgets:disabledWidgetIdentifiers];

  [(UIViewController *)self->_majorColumnListViewController wg_endAppearanceTransitionIfNecessary];
  [(UILabel *)self->_debugLabel setText:@"Appeared"];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = WGWidgetGroupViewController;
  [(WGWidgetGroupViewController *)&v5 viewWillDisappear:?];
  [(UIViewController *)self->_majorColumnListViewController wg_beginAppearanceTransitionIfNecessary:0 animated:disappearCopy];
  [(UILabel *)self->_debugLabel setText:@"Disappearing"];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = WGWidgetGroupViewController;
  [(WGWidgetGroupViewController *)&v7 viewDidDisappear:disappear];
  [(UIViewController *)self->_majorColumnListViewController wg_endAppearanceTransitionIfNecessary];
  presentedViewController = [(WGCarouselListViewController *)self->_majorColumnListViewController presentedViewController];
  presentedEditViewController = [(WGWidgetDiscoveryController *)self->_discoveryController presentedEditViewController];

  if (presentedViewController == presentedEditViewController)
  {
    [(WGWidgetDiscoveryController *)self->_discoveryController dismissWidgetListEditViewControllerAnimated:0 completion:0];
  }

  v6 = +[WGWidgetEventTracker sharedInstance];
  [v6 widgetListDidDisappearAtLocation:{-[WGWidgetGroupViewController location](self, "location")}];

  [(UILabel *)self->_debugLabel setText:@"Disappeared"];
}

- (int64_t)_layoutModeForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = objc_opt_class();

  return [v5 layoutModeForSize:{width, height}];
}

- (int64_t)_activeLayoutMode
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (![(WGWidgetGroupViewController *)self isViewLoaded])
  {
    return 2 * ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1);
  }

  view = [(WGWidgetGroupViewController *)self view];
  [view bounds];
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

- (void)editViewWillDisappear:(id)disappear
{
  if ([(UIViewController *)self wg_isAppearingOrAppeared])
  {
    majorColumnListViewController = self->_majorColumnListViewController;

    [(WGCarouselListViewController *)majorColumnListViewController beginAppearanceTransition:1 animated:1];
  }
}

- (void)editViewDidDisappear:(id)disappear
{
  if ([(WGWidgetGroupViewController *)self _appearState]== 2)
  {
    majorColumnListViewController = self->_majorColumnListViewController;

    [(WGCarouselListViewController *)majorColumnListViewController endAppearanceTransition];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained performSelector:sel_scrollViewDidScroll_ withObject:scrollCopy];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained performSelector:sel_scrollViewWillBeginDragging_ withObject:draggingCopy];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:{x, y}];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  draggingCopy = dragging;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained scrollViewDidEndDragging:draggingCopy willDecelerate:decelerateCopy];
  }
}

- (void)scrollViewWillBeginDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained performSelector:sel_scrollViewWillBeginDecelerating_ withObject:deceleratingCopy];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained performSelector:sel_scrollViewDidEndDecelerating_ withObject:deceleratingCopy];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained performSelector:sel_scrollViewDidEndScrollingAnimation_ withObject:animationCopy];
  }
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  topCopy = top;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained scrollViewShouldScrollToTop:topCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)scrollViewDidScrollToTop:(id)top
{
  topCopy = top;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained performSelector:sel_scrollViewDidScrollToTop_ withObject:topCopy];
  }
}

- (void)majorListViewControllerDidChangeHeaderVisibility:(id)visibility
{
  delegate = [(WGWidgetGroupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate widgetGroupViewControllerDidChangeHeaderVisibility:self];
  }
}

- (CGSize)widgetListViewController:(id)controller sizeForInterfaceOrientation:(int64_t)orientation
{
  viewIfLoaded = [controller viewIfLoaded];
  window = [viewIfLoaded window];
  if (window)
  {
    [viewIfLoaded bounds];
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
    [WeakRetained widgetGroupViewController:self sizeForInterfaceOrientation:orientation];
    v9 = v13;
    v11 = v14;
  }

  v15 = v9;
  v16 = v11;
  result.height = v16;
  result.width = v15;
  return result;
}

- (UIEdgeInsets)widgetListViewController:(id)controller contentOccludingInsetsForInterfaceOrientation:(int64_t)orientation
{
  [(WGWidgetGroupViewController *)self contentOccludingInset];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained widgetGroupViewController:self contentOccludingInsetsForInterfaceOrientation:orientation];
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

- (BOOL)isWidgetExtensionVisible:(id)visible
{
  visibleCopy = visible;
  if ([(WGWidgetGroupViewController *)self _appearState])
  {
    v5 = [(WGWidgetListViewController *)self->_majorColumnListViewController isWidgetExtensionVisible:visibleCopy];
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

- (void)makeVisibleWidgetWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if ([identifierCopy length])
  {
    v7 = self->_majorColumnListViewController;
    v8 = v7;
    if (v7)
    {
      [(WGWidgetListViewController *)v7 makeVisibleWidgetWithIdentifier:identifierCopy completion:completionCopy];
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)presentEditViewWithCompletion:(id)completion
{
  completionCopy = completion;
  discoveryController = self->_discoveryController;
  majorColumnListViewController = self->_majorColumnListViewController;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__WGWidgetGroupViewController_PPTTest__presentEditViewWithCompletion___block_invoke;
  v8[3] = &unk_279ED11F0;
  v9 = completionCopy;
  v7 = completionCopy;
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