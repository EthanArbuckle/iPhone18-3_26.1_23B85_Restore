@interface WGWidgetListItemViewController
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)adjustsFontForContentSizeCategory;
- (CGSize)_pendingSize;
- (CGSize)contentSizeForPreferredContentSize:(CGSize)size;
- (CGSize)preferredContentSizeForContentOfSize:(CGSize)size;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (NSString)description;
- (WGWidgetHostingViewControllerDelegate)delegate;
- (WGWidgetListItemViewController)initWithWidgetIdentifier:(id)identifier;
- (id)_platterViewLoadingIfNecessary:(BOOL)necessary;
- (void)_addWidgetHostIfNecessary;
- (void)loadView;
- (void)managingContainerWillAppear:(id)appear;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)removeChildViewController:(id)controller;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation WGWidgetListItemViewController

- (WGWidgetListItemViewController)initWithWidgetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = WGWidgetListItemViewController;
  v5 = [(WGWidgetListItemViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [identifierCopy copy];
    widgetIdentifier = v5->_widgetIdentifier;
    v5->_widgetIdentifier = v6;
  }

  return v5;
}

- (CGSize)preferredContentSizeForContentOfSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = [(WGWidgetListItemViewController *)self _platterViewLoadingIfNecessary:1];
  [v5 sizeThatFitsContentWithSize:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)contentSizeForPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = [(WGWidgetListItemViewController *)self _platterViewLoadingIfNecessary:1];
  [v5 contentSizeForSize:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)loadView
{
  v3 = objc_alloc_init(WGWidgetPlatterView);
  [(WGWidgetPlatterView *)v3 setListItem:self];
  [(WGWidgetPlatterView *)v3 setPreservesSuperviewLayoutMargins:1];
  [(WGWidgetListItemViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WGWidgetListItemViewController;
  [(WGWidgetListItemViewController *)&v4 viewDidLoad];
  view = [(WGWidgetListItemViewController *)self view];
  [view sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  [(WGWidgetListItemViewController *)self setPreferredContentSize:?];
}

- (void)managingContainerWillAppear:(id)appear
{
  appearCopy = appear;
  [(WGWidgetListItemViewController *)self _addWidgetHostIfNecessary];
  [(WGWidgetHostingViewController *)self->_widgetHost managingContainerWillAppear:appearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = WGWidgetListItemViewController;
  [(WGWidgetListItemViewController *)&v5 viewWillAppear:?];
  [(WGWidgetListItemViewController *)self _addWidgetHostIfNecessary];
  [(UIViewController *)self->_widgetHost wg_beginAppearanceTransitionIfNecessary:1 animated:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = WGWidgetListItemViewController;
  [(WGWidgetListItemViewController *)&v5 viewDidAppear:?];
  [(WGWidgetListItemViewController *)self _addWidgetHostIfNecessary];
  [(UIViewController *)self->_widgetHost wg_beginAppearanceTransitionIfNecessary:1 animated:appearCopy];
  [(UIViewController *)self->_widgetHost wg_endAppearanceTransitionIfNecessary];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = WGWidgetListItemViewController;
  [(WGWidgetListItemViewController *)&v5 viewWillDisappear:?];
  [(UIViewController *)self->_widgetHost wg_beginAppearanceTransitionIfNecessary:0 animated:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = WGWidgetListItemViewController;
  [(WGWidgetListItemViewController *)&v4 viewDidDisappear:disappear];
  [(UIViewController *)self->_widgetHost wg_endAppearanceTransitionIfNecessary];
}

- (void)removeChildViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = WGWidgetListItemViewController;
  controllerCopy = controller;
  [(WGWidgetListItemViewController *)&v6 removeChildViewController:controllerCopy];
  widgetHost = self->_widgetHost;

  if (widgetHost == controllerCopy)
  {
    self->_widgetHost = 0;
  }
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  v5 = [(WGWidgetListItemViewController *)self parentViewController:container];
  v6 = v5;
  if (v5)
  {
    [v5 sizeForChildContentContainer:self withParentContainerSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  }

  else
  {
    [(WGWidgetListItemViewController *)self preferredContentSize];
  }

  [(WGWidgetListItemViewController *)self contentSizeForPreferredContentSize:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = WGWidgetListItemViewController;
  containerCopy = container;
  [(WGWidgetListItemViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  [containerCopy preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(WGWidgetListItemViewController *)self preferredContentSizeForContentOfSize:v6, v8];
  [(WGWidgetListItemViewController *)self setPreferredContentSize:?];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  self->_pendingSize.width = width;
  self->_pendingSize.height = height;
  v12.receiver = self;
  v12.super_class = WGWidgetListItemViewController;
  [(WGWidgetListItemViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  view = [(WGWidgetListItemViewController *)self view];
  [view invalidateIntrinsicContentSize];

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__WGWidgetListItemViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_279ED1548;
  objc_copyWeak(&v10, &location);
  [coordinatorCopy animateAlongsideTransition:0 completion:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __85__WGWidgetListItemViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pendingSize];
  [WeakRetained setPreferredContentSize:?];
}

- (BOOL)adjustsFontForContentSizeCategory
{
  platterView = [(WGWidgetListItemViewController *)self platterView];
  adjustsFontForContentSizeCategory = [platterView adjustsFontForContentSizeCategory];

  return adjustsFontForContentSizeCategory;
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  categoryCopy = category;
  platterView = [(WGWidgetListItemViewController *)self platterView];
  [platterView setAdjustsFontForContentSizeCategory:categoryCopy];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  platterView = [(WGWidgetListItemViewController *)self platterView];
  adjustForContentSizeCategoryChange = [platterView adjustForContentSizeCategoryChange];

  if (adjustForContentSizeCategoryChange)
  {
    view = [(WGWidgetListItemViewController *)self view];
    [view intrinsicContentSize];
    [(WGWidgetListItemViewController *)self setPreferredContentSize:?];
  }

  return adjustForContentSizeCategoryChange;
}

- (id)_platterViewLoadingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  if (([(WGWidgetListItemViewController *)self isViewLoaded]& 1) != 0 || necessaryCopy)
  {
    view = [(WGWidgetListItemViewController *)self view];
  }

  else
  {
    view = 0;
  }

  return view;
}

- (void)_addWidgetHostIfNecessary
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 138543618;
  selfCopy = self;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_27425E000, log, OS_LOG_TYPE_ERROR, "%{public}@: failed to obtain widget host with ID '%{public}@'", &v4, 0x16u);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  widgetIdentifier = [(WGWidgetListItemViewController *)self widgetIdentifier];
  [v6 appendFormat:@" widgetIdentifier:%@;", widgetIdentifier];

  if ([(WGWidgetListItemViewController *)self isViewLoaded])
  {
    view = [(WGWidgetListItemViewController *)self view];
    view2 = [(WGWidgetListItemViewController *)self view];
    [view2 frame];
    v10 = NSStringFromCGRect(v13);
    [v6 appendFormat:@" view:%@; frame:%@;", view, v10];
  }

  else
  {
    [v6 appendString:@" (view not loaded);"];
  }

  if (self->_widgetHost)
  {
    [v6 appendFormat:@" _widgetHost:%@>", self->_widgetHost];
  }

  else
  {
    [v6 appendString:@" (_widgetHost not loaded)>"];
  }

  return v6;
}

- (WGWidgetHostingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)_pendingSize
{
  width = self->_pendingSize.width;
  height = self->_pendingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end