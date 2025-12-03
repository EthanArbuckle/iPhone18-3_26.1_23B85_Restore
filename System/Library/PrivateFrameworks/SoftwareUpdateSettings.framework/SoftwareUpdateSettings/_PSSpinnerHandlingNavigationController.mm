@interface _PSSpinnerHandlingNavigationController
- (_PSSpinnerHandlingNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_removeSpinnerViewControllerIfNeeded;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
@end

@implementation _PSSpinnerHandlingNavigationController

- (_PSSpinnerHandlingNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v9 = 0;
  objc_storeStrong(&v9, bundle);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = _PSSpinnerHandlingNavigationController;
  selfCopy = [(_PSSpinnerHandlingNavigationController *)&v8 initWithNibName:location[0] bundle:v9];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(_PSSpinnerHandlingNavigationController *)selfCopy setDelegate:selfCopy];
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)_removeSpinnerViewControllerIfNeeded
{
  selfCopy = self;
  v13 = a2;
  viewControllers = [(_PSSpinnerHandlingNavigationController *)self viewControllers];
  v10 = 0;
  v8 = 0;
  isKindOfClass = 0;
  if ([viewControllers count] > 1)
  {
    viewControllers2 = [(_PSSpinnerHandlingNavigationController *)selfCopy viewControllers];
    v10 = 1;
    firstObject = [viewControllers2 firstObject];
    v8 = 1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](firstObject);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](viewControllers2);
  }

  *&v2 = MEMORY[0x277D82BD8](viewControllers).n128_u64[0];
  v12 = isKindOfClass & 1;
  if (isKindOfClass)
  {
    viewControllers3 = [(_PSSpinnerHandlingNavigationController *)selfCopy viewControllers];
    v7 = [viewControllers3 mutableCopy];
    *&v3 = MEMORY[0x277D82BD8](viewControllers3).n128_u64[0];
    [v7 removeObjectAtIndex:{0, v3}];
    [(_PSSpinnerHandlingNavigationController *)selfCopy setViewControllers:v7 animated:0];
    objc_storeStrong(&v7, 0);
  }
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  animatedCopy = animated;
  topViewController = [(_PSSpinnerHandlingNavigationController *)selfCopy topViewController];
  objc_opt_class();
  isKindOfClass = 0;
  if (objc_opt_isKindOfClass())
  {
    getRUIPageClass();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  *&v4 = MEMORY[0x277D82BD8](topViewController).n128_u64[0];
  if (isKindOfClass)
  {
    animatedCopy = 0;
    [(_PSSpinnerHandlingNavigationController *)selfCopy setToolbarHidden:1, v4];
  }

  v8.receiver = selfCopy;
  v8.super_class = _PSSpinnerHandlingNavigationController;
  [(_PSSpinnerHandlingNavigationController *)&v8 pushViewController:location[0] animated:animatedCopy, v4];
  objc_storeStrong(location, 0);
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v6 = 0;
  objc_storeStrong(&v6, viewController);
  [(_PSSpinnerHandlingNavigationController *)selfCopy _removeSpinnerViewControllerIfNeeded];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

@end