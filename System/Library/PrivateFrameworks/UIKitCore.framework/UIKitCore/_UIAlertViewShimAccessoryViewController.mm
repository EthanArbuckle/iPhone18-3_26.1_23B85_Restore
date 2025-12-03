@interface _UIAlertViewShimAccessoryViewController
- (CGSize)preferredContentSize;
- (_UIAlertViewShimAccessoryViewController)initWithAccessoryViewController:(id)controller;
@end

@implementation _UIAlertViewShimAccessoryViewController

- (_UIAlertViewShimAccessoryViewController)initWithAccessoryViewController:(id)controller
{
  controllerCopy = controller;
  v28.receiver = self;
  v28.super_class = _UIAlertViewShimAccessoryViewController;
  v6 = [(UIViewController *)&v28 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessoryViewController, controller);
    view = [(UIViewController *)v7->_accessoryViewController view];
    [view frame];
    v10 = v9;

    v11 = 120.0;
    if (v10 <= 120.0)
    {
      v11 = v10;
    }

    v7->_preferredHeight = v11;
    view2 = [(UIViewController *)v7->_accessoryViewController view];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

    view3 = [(UIViewController *)v7 view];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

    [(UIViewController *)v7 addChildViewController:v7->_accessoryViewController];
    view4 = [(UIViewController *)v7 view];
    view5 = [(UIViewController *)v7->_accessoryViewController view];
    [view4 addSubview:view5];

    array = [MEMORY[0x1E695DF70] array];
    view6 = [(UIViewController *)v7->_accessoryViewController view];
    v18 = MEMORY[0x1E69977A0];
    v19 = _NSDictionaryOfVariableBindings(&cfstr_Accessoryview.isa, view6, 0);
    v20 = [v18 constraintsWithVisualFormat:@"V:|[accessoryView]|" options:0 metrics:0 views:v19];
    [array addObjectsFromArray:v20];

    v21 = MEMORY[0x1E69977A0];
    v22 = _NSDictionaryOfVariableBindings(&cfstr_Accessoryview.isa, view6, 0);
    v23 = [v21 constraintsWithVisualFormat:@"H:|[accessoryView]|" options:0 metrics:0 views:v22];
    [array addObjectsFromArray:v23];

    v24 = [MEMORY[0x1E69977A0] constraintWithItem:view6 attribute:7 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:1000.0];
    LODWORD(v25) = 1148829696;
    [v24 setPriority:v25];
    [array addObject:v24];
    view7 = [(UIViewController *)v7 view];
    [view7 addConstraints:array];
  }

  return v7;
}

- (CGSize)preferredContentSize
{
  preferredHeight = self->_preferredHeight;
  v3 = 0.0;
  result.height = preferredHeight;
  result.width = v3;
  return result;
}

@end