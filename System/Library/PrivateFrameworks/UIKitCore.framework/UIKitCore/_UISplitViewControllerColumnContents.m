@interface _UISplitViewControllerColumnContents
- (UIViewController)viewController;
- (_UISplitViewControllerColumnContents)initWithViewController:(id)a3 navigationController:(id)a4 navigationControllerWrapper:(id)a5;
- (id)description;
@end

@implementation _UISplitViewControllerColumnContents

- (_UISplitViewControllerColumnContents)initWithViewController:(id)a3 navigationController:(id)a4 navigationControllerWrapper:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9 | v10)
  {
    v16.receiver = self;
    v16.super_class = _UISplitViewControllerColumnContents;
    v12 = [(_UISplitViewControllerColumnContents *)&v16 init];
    p_isa = &v12->super.isa;
    if (v12)
    {
      objc_storeStrong(&v12->_viewController, a3);
      objc_storeStrong(p_isa + 2, a4);
      objc_storeStrong(p_isa + 3, a5);
    }

    self = p_isa;
    v14 = self;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"-[_UISplitViewControllerColumnContents initWithViewController:navigationController:] requires at least one of viewController or navigationController to be non-nil"];
    v14 = 0;
  }

  return v14;
}

- (UIViewController)viewController
{
  viewController = self->_viewController;
  if (viewController)
  {
    v3 = viewController;
    navigationController = v3;
  }

  else
  {
    v3 = [(UINavigationController *)self->_navigationController topViewController];
    navigationController = v3;
    if (!v3)
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

  v5 = [(_UISplitViewControllerColumnContents *)self viewController];
  [v4 appendFormat:@" viewController=%p", v5];

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