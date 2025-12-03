@interface _UITabBarControllerVisualStyle_iOS
- (id)defaultAnimatorForFromViewController:(id)controller toViewController:(id)viewController;
- (unint64_t)defaultMaxItems;
- (void)loadViews;
- (void)tabContentDidChange:(id)change;
- (void)updateViewControllers:(BOOL)controllers;
@end

@implementation _UITabBarControllerVisualStyle_iOS

- (unint64_t)defaultMaxItems
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  traitCollection = [tabBarController traitCollection];

  horizontalSizeClass = [traitCollection horizontalSizeClass];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  v6 = 5;
  if (userInterfaceIdiom == 1)
  {
    v7 = 8;
  }

  else
  {
    v7 = 5;
  }

  if (horizontalSizeClass != 1)
  {
    v6 = 8;
  }

  if (horizontalSizeClass)
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
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _internalTabBar = [(UITabBarController *)tabBarController _internalTabBar];

  if (!_internalTabBar)
  {
    view = [tabBarController view];
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [[UITabBar alloc] initWithFrame:v7, v9, v11, v13];
    [tabBarController setTabBar:v14];
  }

  if (dyld_program_sdk_at_least())
  {
    v15 = +[UIColor systemBackgroundColor];
    view2 = [tabBarController view];
    [view2 setBackgroundColor:v15];
  }

  v17.receiver = self;
  v17.super_class = _UITabBarControllerVisualStyle_iOS;
  [(_UITabBarControllerVisualStyle *)&v17 loadViews];
}

- (void)updateViewControllers:(BOOL)controllers
{
  controllersCopy = controllers;
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [tabBarController _rebuildTabBarItemsAnimated:controllersCopy];
}

- (void)tabContentDidChange:(id)change
{
  changeCopy = change;
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _internalTabBar = [(UITabBarController *)tabBarController _internalTabBar];

  isLocked = [_internalTabBar isLocked];
  [_internalTabBar setLocked:0];
  [changeCopy _updateView];

  [_internalTabBar setLocked:isLocked];
}

- (id)defaultAnimatorForFromViewController:(id)controller toViewController:(id)viewController
{
  if (+[UIView _uip_transitionEnabled]&& !_AXSReduceMotionEnabled())
  {
    tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
    view = [tabBarController view];
    backgroundColor = [view backgroundColor];

    v5 = [[_UITabCrossFadeTransition alloc] initWithBackgroundColor:backgroundColor];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end