@interface _UIAlertViewShimAccessoryViewController
- (CGSize)preferredContentSize;
- (_UIAlertViewShimAccessoryViewController)initWithAccessoryViewController:(id)a3;
@end

@implementation _UIAlertViewShimAccessoryViewController

- (_UIAlertViewShimAccessoryViewController)initWithAccessoryViewController:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = _UIAlertViewShimAccessoryViewController;
  v6 = [(UIViewController *)&v28 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessoryViewController, a3);
    v8 = [(UIViewController *)v7->_accessoryViewController view];
    [v8 frame];
    v10 = v9;

    v11 = 120.0;
    if (v10 <= 120.0)
    {
      v11 = v10;
    }

    v7->_preferredHeight = v11;
    v12 = [(UIViewController *)v7->_accessoryViewController view];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = [(UIViewController *)v7 view];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    [(UIViewController *)v7 addChildViewController:v7->_accessoryViewController];
    v14 = [(UIViewController *)v7 view];
    v15 = [(UIViewController *)v7->_accessoryViewController view];
    [v14 addSubview:v15];

    v16 = [MEMORY[0x1E695DF70] array];
    v17 = [(UIViewController *)v7->_accessoryViewController view];
    v18 = MEMORY[0x1E69977A0];
    v19 = _NSDictionaryOfVariableBindings(&cfstr_Accessoryview.isa, v17, 0);
    v20 = [v18 constraintsWithVisualFormat:@"V:|[accessoryView]|" options:0 metrics:0 views:v19];
    [v16 addObjectsFromArray:v20];

    v21 = MEMORY[0x1E69977A0];
    v22 = _NSDictionaryOfVariableBindings(&cfstr_Accessoryview.isa, v17, 0);
    v23 = [v21 constraintsWithVisualFormat:@"H:|[accessoryView]|" options:0 metrics:0 views:v22];
    [v16 addObjectsFromArray:v23];

    v24 = [MEMORY[0x1E69977A0] constraintWithItem:v17 attribute:7 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:1000.0];
    LODWORD(v25) = 1148829696;
    [v24 setPriority:v25];
    [v16 addObject:v24];
    v26 = [(UIViewController *)v7 view];
    [v26 addConstraints:v16];
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