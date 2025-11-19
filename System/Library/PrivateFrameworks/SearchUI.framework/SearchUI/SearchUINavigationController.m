@interface SearchUINavigationController
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation SearchUINavigationController

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SearchUINavigationController;
  [(SearchUINavigationController *)&v7 viewDidDisappear:a3];
  v4 = [(SearchUINavigationController *)self feedbackDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SearchUINavigationController *)self feedbackDelegate];
    [v6 willDismissViewController:self];
  }
}

- (SearchUIFeedbackDelegate)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

@end