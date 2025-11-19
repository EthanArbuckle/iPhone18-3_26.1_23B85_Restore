@interface PKCompactNavigationContainerControllerPresentationController
- (void)containerViewWillLayoutSubviews;
@end

@implementation PKCompactNavigationContainerControllerPresentationController

- (void)containerViewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKCompactNavigationContainerControllerPresentationController;
  [(PKCompactNavigationContainerControllerPresentationController *)&v4 containerViewWillLayoutSubviews];
  v3 = [(PKCompactNavigationContainerControllerPresentationController *)self presentedView];
  [(PKCompactNavigationContainerControllerPresentationController *)self frameOfPresentedViewInContainerView];
  [v3 setFrame:?];
}

@end