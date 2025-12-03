@interface SPUIViewController
- (BOOL)isActiveViewController:(id)controller;
- (BOOL)respondsToSelector:(SEL)selector;
- (SPUIViewController)init;
- (SPUIViewControllerDelegate)delegate;
- (id)activeViewController;
- (id)contentScrollView;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)didTapInEmptyRegion;
@end

@implementation SPUIViewController

- (SPUIViewController)init
{
  v9.receiver = self;
  v9.super_class = SPUIViewController;
  v2 = [(SPUIViewController *)&v9 init];
  if (v2)
  {
    v3 = [SPUIResultsViewController alloc];
    v4 = +[SPUISearchModel sharedGeneralInstance];
    v5 = [(SPUIResultsViewController *)v3 initWithSearchModel:v4];
    [(SPUIViewController *)v2 setSearchResultViewController:v5];

    searchResultViewController = [(SPUIViewController *)v2 searchResultViewController];
    [searchResultViewController setDelegate:v2];

    searchResultViewController2 = [(SPUIViewController *)v2 searchResultViewController];
    [searchResultViewController2 setFeedbackListener:v2];
  }

  return v2;
}

- (id)activeViewController
{
  childViewControllers = [(SPUIViewController *)self childViewControllers];
  firstObject = [childViewControllers firstObject];

  return firstObject;
}

- (id)contentScrollView
{
  activeViewController = [(SPUIViewController *)self activeViewController];
  contentScrollView = [activeViewController contentScrollView];

  return contentScrollView;
}

- (SPUIViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __53__SPUIViewController_activateViewController_animate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 40) view];
  [v3 setAlpha:0.0];
}

uint64_t __53__SPUIViewController_activateViewController_animate___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) activeViewController];

  if (v2 != v3)
  {
    v4 = [*(a1 + 32) view];
    [v4 removeFromSuperview];
  }

  v5 = *(a1 + 40);

  return [v5 didUpdateActiveViewController];
}

- (void)didTapInEmptyRegion
{
  delegate = [(SPUIViewController *)self delegate];
  [delegate dismissSearchViewWithReason:2];
}

- (BOOL)isActiveViewController:(id)controller
{
  controllerCopy = controller;
  activeViewController = [(SPUIViewController *)self activeViewController];

  return activeViewController == controllerCopy;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if ([objc_opt_class() isFeedbackSelector:selector] && !-[SPUIViewController isInStateRestoration](self, "isInStateRestoration"))
  {
    v5 = +[SPUIFeedbackManager feedbackListener];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SPUIViewController;
    v5 = [(SPUIViewController *)&v7 forwardingTargetForSelector:selector];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = SPUIViewController;
  if ([(SPUIViewController *)&v7 respondsToSelector:?])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [objc_opt_class() isFeedbackSelector:selector];
    if (v5)
    {
      LOBYTE(v5) = ![(SPUIViewController *)self isInStateRestoration];
    }
  }

  return v5;
}

@end