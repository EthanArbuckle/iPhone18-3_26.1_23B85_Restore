@interface UIViewControllerAction
- (UIViewControllerAction)initWithViewController:(id)controller name:(id)name transition:(int)transition;
@end

@implementation UIViewControllerAction

- (UIViewControllerAction)initWithViewController:(id)controller name:(id)name transition:(int)transition
{
  controllerCopy = controller;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = UIViewControllerAction;
  v10 = [(UIViewControllerAction *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_viewController, controllerCopy);
    objc_storeStrong(&v11->_name, name);
    v11->_transition = transition;
  }

  return v11;
}

@end