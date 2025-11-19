@interface UIPrintPanelNavigationController
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
@end

@implementation UIPrintPanelNavigationController

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [(UIPrintPanelNavigationController *)self view];
    v8 = [v7 window];
    [v8 endEditing:1];
  }

  v9.receiver = self;
  v9.super_class = UIPrintPanelNavigationController;
  [(UIPrintPanelNavigationController *)&v9 pushViewController:v6 animated:v4];
}

@end