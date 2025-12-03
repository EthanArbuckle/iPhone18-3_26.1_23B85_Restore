@interface PKCompactNavigationContainerControllerPresentationController
- (void)containerViewWillLayoutSubviews;
@end

@implementation PKCompactNavigationContainerControllerPresentationController

- (void)containerViewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKCompactNavigationContainerControllerPresentationController;
  [(PKCompactNavigationContainerControllerPresentationController *)&v4 containerViewWillLayoutSubviews];
  presentedView = [(PKCompactNavigationContainerControllerPresentationController *)self presentedView];
  [(PKCompactNavigationContainerControllerPresentationController *)self frameOfPresentedViewInContainerView];
  [presentedView setFrame:?];
}

@end