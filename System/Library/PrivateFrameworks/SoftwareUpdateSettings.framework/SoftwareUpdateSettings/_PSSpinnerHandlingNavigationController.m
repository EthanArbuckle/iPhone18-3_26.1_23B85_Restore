@interface _PSSpinnerHandlingNavigationController
- (_PSSpinnerHandlingNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_removeSpinnerViewControllerIfNeeded;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
@end

@implementation _PSSpinnerHandlingNavigationController

- (_PSSpinnerHandlingNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = _PSSpinnerHandlingNavigationController;
  v11 = [(_PSSpinnerHandlingNavigationController *)&v8 initWithNibName:location[0] bundle:v9];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    [(_PSSpinnerHandlingNavigationController *)v11 setDelegate:v11];
  }

  v6 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v6;
}

- (void)_removeSpinnerViewControllerIfNeeded
{
  v14 = self;
  v13 = a2;
  v5 = [(_PSSpinnerHandlingNavigationController *)self viewControllers];
  v10 = 0;
  v8 = 0;
  isKindOfClass = 0;
  if ([v5 count] > 1)
  {
    v11 = [(_PSSpinnerHandlingNavigationController *)v14 viewControllers];
    v10 = 1;
    v9 = [v11 firstObject];
    v8 = 1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  *&v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v12 = isKindOfClass & 1;
  if (isKindOfClass)
  {
    v4 = [(_PSSpinnerHandlingNavigationController *)v14 viewControllers];
    v7 = [v4 mutableCopy];
    *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    [v7 removeObjectAtIndex:{0, v3}];
    [(_PSSpinnerHandlingNavigationController *)v14 setViewControllers:v7 animated:0];
    objc_storeStrong(&v7, 0);
  }
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v6 = [(_PSSpinnerHandlingNavigationController *)v11 topViewController];
  objc_opt_class();
  isKindOfClass = 0;
  if (objc_opt_isKindOfClass())
  {
    getRUIPageClass();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (isKindOfClass)
  {
    v9 = 0;
    [(_PSSpinnerHandlingNavigationController *)v11 setToolbarHidden:1, v4];
  }

  v8.receiver = v11;
  v8.super_class = _PSSpinnerHandlingNavigationController;
  [(_PSSpinnerHandlingNavigationController *)&v8 pushViewController:location[0] animated:v9, v4];
  objc_storeStrong(location, 0);
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  [(_PSSpinnerHandlingNavigationController *)v8 _removeSpinnerViewControllerIfNeeded];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

@end