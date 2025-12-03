@interface UISearchContainerViewController
- (UISearchContainerViewController)initWithCoder:(id)coder;
- (UISearchContainerViewController)initWithSearchController:(UISearchController *)searchController;
- (void)_prepareForContainerTransition:(id)transition;
- (void)_presentSearchControllerIfNecessary;
- (void)encodeWithCoder:(id)coder;
- (void)setTabBarObservedScrollView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation UISearchContainerViewController

- (UISearchContainerViewController)initWithSearchController:(UISearchController *)searchController
{
  v5 = searchController;
  v9.receiver = self;
  v9.super_class = UISearchContainerViewController;
  v6 = [(UIViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchController, searchController);
    [(UISearchContainerViewController *)v7 commonInit];
  }

  return v7;
}

- (UISearchContainerViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UISearchContainerViewController;
  v5 = [(UIViewController *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UISearchContainerViewControllerSearchController"];
    searchController = v5->_searchController;
    v5->_searchController = v6;

    [(UISearchContainerViewController *)v5 commonInit];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UISearchContainerViewController;
  coderCopy = coder;
  [(UIViewController *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_searchController forKey:{@"UISearchContainerViewControllerSearchController", v5.receiver, v5.super_class}];
}

- (void)_presentSearchControllerIfNecessary
{
  view = [(UIViewController *)self view];
  window = [view window];
  if (!window)
  {
    goto LABEL_6;
  }

  v5 = window;
  searchController = [(UISearchContainerViewController *)self searchController];
  presentingViewController = [searchController presentingViewController];
  v8 = presentingViewController;
  if (presentingViewController == self)
  {

LABEL_6:
    goto LABEL_7;
  }

  isPresentingSearchController = [(UISearchContainerViewController *)self isPresentingSearchController];

  if (!isPresentingSearchController)
  {
    [(UISearchContainerViewController *)self setIsPresentingSearchController:1];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70__UISearchContainerViewController__presentSearchControllerIfNecessary__block_invoke;
    v14[3] = &unk_1E70F3590;
    v14[4] = self;
    [UIViewController _performWithoutDeferringTransitions:v14];
    return;
  }

LABEL_7:
  searchController2 = [(UISearchContainerViewController *)self searchController];
  [searchController2 _updateSystemInputViewController];

  traitCollection = [(UIViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
  {
    searchController3 = [(UISearchContainerViewController *)self searchController];
    [searchController3 _limitedUIDidChangeAnimated:0];
  }
}

void __70__UISearchContainerViewController__presentSearchControllerIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tabBarController];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) tabBarController];
    v5 = [v4 selectedViewController];
    v6 = *(a1 + 32);
    if (v5 == v6)
    {
      v7 = [v6 tabBarController];
      v8 = [v7 _isFocusedTabVisible];

      if (!v8)
      {
        return;
      }
    }

    else
    {
    }
  }

  objc_initWeak(&location, *(a1 + 32));
  v9 = *(a1 + 32);
  v10 = [v9 searchController];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__UISearchContainerViewController__presentSearchControllerIfNecessary__block_invoke_2;
  v11[3] = &unk_1E70F5A28;
  objc_copyWeak(&v12, &location);
  [v9 presentViewController:v10 animated:0 completion:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __70__UISearchContainerViewController__presentSearchControllerIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsPresentingSearchController:0];
}

- (void)_prepareForContainerTransition:(id)transition
{
  transitionCopy = transition;
  parentViewController = [(UIViewController *)self parentViewController];

  if (parentViewController == transitionCopy)
  {

    [(UISearchContainerViewController *)self _presentSearchControllerIfNecessary];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = UISearchContainerViewController;
  [(UIViewController *)&v3 viewDidLoad];
  [(UISearchController *)self->_searchController setObscuresBackgroundDuringPresentation:_UIBarsApplyChromelessEverywhere() ^ 1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = UISearchContainerViewController;
  [(UIViewController *)&v5 viewDidAppear:appear];
  [(UISearchContainerViewController *)self _presentSearchControllerIfNecessary];
  searchController = [(UISearchContainerViewController *)self searchController];
  [searchController set_shouldLogAppearance:0];

  AnalyticsSendEventLazy();
}

id __49__UISearchContainerViewController_viewDidAppear___block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = _UIPrivateMainBundleIdentifier();
  v1 = v0;
  if (v0)
  {
    v4 = @"bundle_id";
    v5[0] = v0;
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = UISearchContainerViewController;
  [(UIViewController *)&v3 viewDidDisappear:disappear];
  AnalyticsSendEventLazy();
}

id __52__UISearchContainerViewController_viewDidDisappear___block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = _UIPrivateMainBundleIdentifier();
  v1 = v0;
  if (v0)
  {
    v4 = @"bundle_id";
    v5[0] = v0;
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setTabBarObservedScrollView:(id)view
{
  viewCopy = view;
  searchController = [(UISearchContainerViewController *)self searchController];
  _tvShouldScrollWithObservedScrollViewIfPossible = [searchController _tvShouldScrollWithObservedScrollViewIfPossible];

  if (_tvShouldScrollWithObservedScrollViewIfPossible)
  {
    v7.receiver = self;
    v7.super_class = UISearchContainerViewController;
    [(UISearchContainerViewController *)&v7 setTabBarObservedScrollView:viewCopy];
  }
}

@end