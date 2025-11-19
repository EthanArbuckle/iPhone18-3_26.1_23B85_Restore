@interface TUNavigationController
- (TUNavigationController)initWithRootViewController:(id)a3;
- (TUNavigationController)initWithRootViewController:(id)a3 navigationBarClass:(Class)a4;
@end

@implementation TUNavigationController

- (TUNavigationController)initWithRootViewController:(id)a3 navigationBarClass:(Class)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v15.receiver = self;
  v15.super_class = TUNavigationController;
  v8 = [(TUNavigationController *)&v15 initWithNavigationBarClass:a4 toolbarClass:v7];
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x1E69DD250];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72__TUNavigationController_initWithRootViewController_navigationBarClass___block_invoke;
    v12[3] = &unk_1E84F3E50;
    v13 = v8;
    v14 = v6;
    [v10 performWithoutAnimation:v12];
  }

  return v9;
}

- (TUNavigationController)initWithRootViewController:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v13.receiver = self;
  v13.super_class = TUNavigationController;
  v6 = [(TUNavigationController *)&v13 initWithNavigationBarClass:0 toolbarClass:v5];
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x1E69DD250];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__TUNavigationController_initWithRootViewController___block_invoke;
    v10[3] = &unk_1E84F3E50;
    v11 = v6;
    v12 = v4;
    [v8 performWithoutAnimation:v10];
  }

  return v7;
}

@end