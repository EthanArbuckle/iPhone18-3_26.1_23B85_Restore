@interface PSViewControllerDefaultNavigationCoordinator
- (void)preferencesViewController:(id)a3 pushViewController:(id)a4 animated:(BOOL)a5;
@end

@implementation PSViewControllerDefaultNavigationCoordinator

- (void)preferencesViewController:(id)a3 pushViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v10 = a4;
  if (v5)
  {
    [a3 showViewController:v10 sender:self];
    v8 = v10;
  }

  else
  {
    v9 = [a3 navigationController];
    [v9 pushViewController:v10 animated:0];

    v8 = v9;
  }
}

@end