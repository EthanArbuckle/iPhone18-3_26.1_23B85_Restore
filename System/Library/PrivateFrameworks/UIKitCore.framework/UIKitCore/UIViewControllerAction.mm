@interface UIViewControllerAction
- (UIViewControllerAction)initWithViewController:(id)a3 name:(id)a4 transition:(int)a5;
@end

@implementation UIViewControllerAction

- (UIViewControllerAction)initWithViewController:(id)a3 name:(id)a4 transition:(int)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = UIViewControllerAction;
  v10 = [(UIViewControllerAction *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_viewController, v8);
    objc_storeStrong(&v11->_name, a4);
    v11->_transition = a5;
  }

  return v11;
}

@end