@interface SearchUINavigationController
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation SearchUINavigationController

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = SearchUINavigationController;
  [(SearchUINavigationController *)&v7 viewDidDisappear:disappear];
  feedbackDelegate = [(SearchUINavigationController *)self feedbackDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    feedbackDelegate2 = [(SearchUINavigationController *)self feedbackDelegate];
    [feedbackDelegate2 willDismissViewController:self];
  }
}

- (SearchUIFeedbackDelegate)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

@end