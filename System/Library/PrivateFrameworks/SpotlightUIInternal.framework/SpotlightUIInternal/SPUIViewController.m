@interface SPUIViewController
- (BOOL)isActiveViewController:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (SPUIViewController)init;
- (SPUIViewControllerDelegate)delegate;
- (id)activeViewController;
- (id)contentScrollView;
- (id)forwardingTargetForSelector:(SEL)a3;
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

    v6 = [(SPUIViewController *)v2 searchResultViewController];
    [v6 setDelegate:v2];

    v7 = [(SPUIViewController *)v2 searchResultViewController];
    [v7 setFeedbackListener:v2];
  }

  return v2;
}

- (id)activeViewController
{
  v2 = [(SPUIViewController *)self childViewControllers];
  v3 = [v2 firstObject];

  return v3;
}

- (id)contentScrollView
{
  v2 = [(SPUIViewController *)self activeViewController];
  v3 = [v2 contentScrollView];

  return v3;
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
  v2 = [(SPUIViewController *)self delegate];
  [v2 dismissSearchViewWithReason:2];
}

- (BOOL)isActiveViewController:(id)a3
{
  v4 = a3;
  v5 = [(SPUIViewController *)self activeViewController];

  return v5 == v4;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  if ([objc_opt_class() isFeedbackSelector:a3] && !-[SPUIViewController isInStateRestoration](self, "isInStateRestoration"))
  {
    v5 = +[SPUIFeedbackManager feedbackListener];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SPUIViewController;
    v5 = [(SPUIViewController *)&v7 forwardingTargetForSelector:a3];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = SPUIViewController;
  if ([(SPUIViewController *)&v7 respondsToSelector:?])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [objc_opt_class() isFeedbackSelector:a3];
    if (v5)
    {
      LOBYTE(v5) = ![(SPUIViewController *)self isInStateRestoration];
    }
  }

  return v5;
}

@end