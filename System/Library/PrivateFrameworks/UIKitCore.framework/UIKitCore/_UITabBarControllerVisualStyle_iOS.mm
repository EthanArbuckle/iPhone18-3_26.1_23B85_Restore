@interface _UITabBarControllerVisualStyle_iOS
- (id)defaultAnimatorForFromViewController:(id)a3 toViewController:(id)a4;
- (unint64_t)defaultMaxItems;
- (void)loadViews;
- (void)tabContentDidChange:(id)a3;
- (void)updateViewControllers:(BOOL)a3;
@end

@implementation _UITabBarControllerVisualStyle_iOS

- (unint64_t)defaultMaxItems
{
  v2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v3 = [v2 traitCollection];

  v4 = [v3 horizontalSizeClass];
  v5 = [v3 userInterfaceIdiom];
  v6 = 5;
  if (v5 == 1)
  {
    v7 = 8;
  }

  else
  {
    v7 = 5;
  }

  if (v4 != 1)
  {
    v6 = 8;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (void)loadViews
{
  v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v4 = [(UITabBarController *)v3 _internalTabBar];

  if (!v4)
  {
    v5 = [v3 view];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [[UITabBar alloc] initWithFrame:v7, v9, v11, v13];
    [v3 setTabBar:v14];
  }

  if (dyld_program_sdk_at_least())
  {
    v15 = +[UIColor systemBackgroundColor];
    v16 = [v3 view];
    [v16 setBackgroundColor:v15];
  }

  v17.receiver = self;
  v17.super_class = _UITabBarControllerVisualStyle_iOS;
  [(_UITabBarControllerVisualStyle *)&v17 loadViews];
}

- (void)updateViewControllers:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [v4 _rebuildTabBarItemsAnimated:v3];
}

- (void)tabContentDidChange:(id)a3
{
  v4 = a3;
  v5 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v7 = [(UITabBarController *)v5 _internalTabBar];

  v6 = [v7 isLocked];
  [v7 setLocked:0];
  [v4 _updateView];

  [v7 setLocked:v6];
}

- (id)defaultAnimatorForFromViewController:(id)a3 toViewController:(id)a4
{
  if (+[UIView _uip_transitionEnabled]&& !_AXSReduceMotionEnabled())
  {
    v7 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v8 = [v7 view];
    v9 = [v8 backgroundColor];

    v5 = [[_UITabCrossFadeTransition alloc] initWithBackgroundColor:v9];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end