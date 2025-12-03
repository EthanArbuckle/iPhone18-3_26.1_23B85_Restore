@interface _UIFloatingTabBarCollectionViewLayout
- (_UIFloatingTabBar)floatingTabBar;
- (_UIFloatingTabBarCollectionViewLayout)initWithFloatingTabBar:(id)bar;
@end

@implementation _UIFloatingTabBarCollectionViewLayout

- (_UIFloatingTabBarCollectionViewLayout)initWithFloatingTabBar:(id)bar
{
  barCopy = bar;
  objc_initWeak(&location, barCopy);
  _currentPlatformMetrics = [barCopy _currentPlatformMetrics];
  [_currentPlatformMetrics backgroundInsets];
  v7 = v6;
  v9 = v8;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64___UIFloatingTabBarCollectionViewLayout_initWithFloatingTabBar___block_invoke;
  aBlock[3] = &unk_1E712A4D8;
  objc_copyWeak(v17, &location);
  v17[1] = v7;
  v17[2] = 0;
  v17[3] = v9;
  v17[4] = 0;
  v10 = _Block_copy(aBlock);
  v11 = objc_opt_new();
  [v11 setScrollDirection:1];
  [v11 setContentInsetsReference:1];
  v15.receiver = self;
  v15.super_class = _UIFloatingTabBarCollectionViewLayout;
  v12 = [(UICollectionViewCompositionalLayout *)&v15 initWithSectionProvider:v10 configuration:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_floatingTabBar, barCopy);
  }

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);

  return v13;
}

- (_UIFloatingTabBar)floatingTabBar
{
  WeakRetained = objc_loadWeakRetained(&self->_floatingTabBar);

  return WeakRetained;
}

@end