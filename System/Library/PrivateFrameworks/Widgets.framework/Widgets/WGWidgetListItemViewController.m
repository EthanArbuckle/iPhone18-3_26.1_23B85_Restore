@interface WGWidgetListItemViewController
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)adjustsFontForContentSizeCategory;
- (CGSize)_pendingSize;
- (CGSize)contentSizeForPreferredContentSize:(CGSize)a3;
- (CGSize)preferredContentSizeForContentOfSize:(CGSize)a3;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (NSString)description;
- (WGWidgetHostingViewControllerDelegate)delegate;
- (WGWidgetListItemViewController)initWithWidgetIdentifier:(id)a3;
- (id)_platterViewLoadingIfNecessary:(BOOL)a3;
- (void)_addWidgetHostIfNecessary;
- (void)loadView;
- (void)managingContainerWillAppear:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)removeChildViewController:(id)a3;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation WGWidgetListItemViewController

- (WGWidgetListItemViewController)initWithWidgetIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WGWidgetListItemViewController;
  v5 = [(WGWidgetListItemViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    widgetIdentifier = v5->_widgetIdentifier;
    v5->_widgetIdentifier = v6;
  }

  return v5;
}

- (CGSize)preferredContentSizeForContentOfSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (CGSize)contentSizeForPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v3 = [(WGWidgetListItemViewController *)self view];
  [v3 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  [(WGWidgetListItemViewController *)self setPreferredContentSize:?];
}

- (void)managingContainerWillAppear:(id)a3
{
  v4 = a3;
  [(WGWidgetListItemViewController *)self _addWidgetHostIfNecessary];
  [(WGWidgetHostingViewController *)self->_widgetHost managingContainerWillAppear:v4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = WGWidgetListItemViewController;
  [(WGWidgetListItemViewController *)&v5 viewWillAppear:?];
  [(WGWidgetListItemViewController *)self _addWidgetHostIfNecessary];
  [(UIViewController *)self->_widgetHost wg_beginAppearanceTransitionIfNecessary:1 animated:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = WGWidgetListItemViewController;
  [(WGWidgetListItemViewController *)&v5 viewDidAppear:?];
  [(WGWidgetListItemViewController *)self _addWidgetHostIfNecessary];
  [(UIViewController *)self->_widgetHost wg_beginAppearanceTransitionIfNecessary:1 animated:v3];
  [(UIViewController *)self->_widgetHost wg_endAppearanceTransitionIfNecessary];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = WGWidgetListItemViewController;
  [(WGWidgetListItemViewController *)&v5 viewWillDisappear:?];
  [(UIViewController *)self->_widgetHost wg_beginAppearanceTransitionIfNecessary:0 animated:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = WGWidgetListItemViewController;
  [(WGWidgetListItemViewController *)&v4 viewDidDisappear:a3];
  [(UIViewController *)self->_widgetHost wg_endAppearanceTransitionIfNecessary];
}

- (void)removeChildViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = WGWidgetListItemViewController;
  v4 = a3;
  [(WGWidgetListItemViewController *)&v6 removeChildViewController:v4];
  widgetHost = self->_widgetHost;

  if (widgetHost == v4)
  {
    self->_widgetHost = 0;
  }
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  v5 = [(WGWidgetListItemViewController *)self parentViewController:a3];
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

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v9.receiver = self;
  v9.super_class = WGWidgetListItemViewController;
  v4 = a3;
  [(WGWidgetListItemViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:v4];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(WGWidgetListItemViewController *)self preferredContentSizeForContentOfSize:v6, v8];
  [(WGWidgetListItemViewController *)self setPreferredContentSize:?];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  self->_pendingSize.width = width;
  self->_pendingSize.height = height;
  v12.receiver = self;
  v12.super_class = WGWidgetListItemViewController;
  [(WGWidgetListItemViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(WGWidgetListItemViewController *)self view];
  [v8 invalidateIntrinsicContentSize];

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__WGWidgetListItemViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_279ED1548;
  objc_copyWeak(&v10, &location);
  [v7 animateAlongsideTransition:0 completion:v9];
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
  v2 = [(WGWidgetListItemViewController *)self platterView];
  v3 = [v2 adjustsFontForContentSizeCategory];

  return v3;
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  v3 = a3;
  v4 = [(WGWidgetListItemViewController *)self platterView];
  [v4 setAdjustsFontForContentSizeCategory:v3];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [(WGWidgetListItemViewController *)self platterView];
  v4 = [v3 adjustForContentSizeCategoryChange];

  if (v4)
  {
    v5 = [(WGWidgetListItemViewController *)self view];
    [v5 intrinsicContentSize];
    [(WGWidgetListItemViewController *)self setPreferredContentSize:?];
  }

  return v4;
}

- (id)_platterViewLoadingIfNecessary:(BOOL)a3
{
  v3 = a3;
  if (([(WGWidgetListItemViewController *)self isViewLoaded]& 1) != 0 || v3)
  {
    v5 = [(WGWidgetListItemViewController *)self view];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_addWidgetHostIfNecessary
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 138543618;
  v5 = a1;
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

  v7 = [(WGWidgetListItemViewController *)self widgetIdentifier];
  [v6 appendFormat:@" widgetIdentifier:%@;", v7];

  if ([(WGWidgetListItemViewController *)self isViewLoaded])
  {
    v8 = [(WGWidgetListItemViewController *)self view];
    v9 = [(WGWidgetListItemViewController *)self view];
    [v9 frame];
    v10 = NSStringFromCGRect(v13);
    [v6 appendFormat:@" view:%@; frame:%@;", v8, v10];
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