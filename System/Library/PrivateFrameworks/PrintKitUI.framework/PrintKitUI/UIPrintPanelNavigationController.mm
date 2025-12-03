@interface UIPrintPanelNavigationController
- (void)pushViewController:(id)controller animated:(BOOL)animated;
@end

@implementation UIPrintPanelNavigationController

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    view = [(UIPrintPanelNavigationController *)self view];
    window = [view window];
    [window endEditing:1];
  }

  v9.receiver = self;
  v9.super_class = UIPrintPanelNavigationController;
  [(UIPrintPanelNavigationController *)&v9 pushViewController:controllerCopy animated:animatedCopy];
}

@end