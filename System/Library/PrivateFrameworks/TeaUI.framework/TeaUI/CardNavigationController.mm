@interface CardNavigationController
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation CardNavigationController

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  CardNavigationController.navigationController(_:willShow:animated:)(controllerCopy, viewControllerCopy, 0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  CardNavigationController.viewDidLoad()();
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  CardNavigationController.navigationController(_:didShow:animated:)(&selfCopy->super.super.super, v9, 0);
}

@end