@interface _UISplitViewControllerColumnContents
- (UIViewController)viewController;
- (_UISplitViewControllerColumnContents)initWithViewController:(id)controller navigationController:(id)navigationController navigationControllerWrapper:(id)wrapper;
- (id)description;
@end

@implementation _UISplitViewControllerColumnContents

- (_UISplitViewControllerColumnContents)initWithViewController:(id)controller navigationController:(id)navigationController navigationControllerWrapper:(id)wrapper
{
  controllerCopy = controller;
  navigationControllerCopy = navigationController;
  wrapperCopy = wrapper;
  if (controllerCopy | navigationControllerCopy)
  {
    v16.receiver = self;
    v16.super_class = _UISplitViewControllerColumnContents;
    v12 = [(_UISplitViewControllerColumnContents *)&v16 init];
    p_isa = &v12->super.isa;
    if (v12)
    {
      objc_storeStrong(&v12->_viewController, controller);
      objc_storeStrong(p_isa + 2, navigationController);
      objc_storeStrong(p_isa + 3, wrapper);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"-[_UISplitViewControllerColumnContents initWithViewController:navigationController:] requires at least one of viewController or navigationController to be non-nil"];
    selfCopy = 0;
  }

  return selfCopy;
}

- (UIViewController)viewController
{
  viewController = self->_viewController;
  if (viewController)
  {
    topViewController = viewController;
    navigationController = topViewController;
  }

  else
  {
    topViewController = [(UINavigationController *)self->_navigationController topViewController];
    navigationController = topViewController;
    if (!topViewController)
    {
      navigationController = self->_navigationController;
    }
  }

  v6 = navigationController;

  return &navigationController->super;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _UISplitViewControllerColumnContents;
  v3 = [(_UISplitViewControllerColumnContents *)&v7 description];
  v4 = [v3 mutableCopy];

  viewController = [(_UISplitViewControllerColumnContents *)self viewController];
  [v4 appendFormat:@" viewController=%p", viewController];

  if (self->_navigationController)
  {
    [v4 appendFormat:@" navController=%p", self->_navigationController];
  }

  if (self->_navigationControllerWrapper)
  {
    [v4 appendFormat:@" navWrapper=%p", self->_navigationControllerWrapper];
  }

  return v4;
}

@end