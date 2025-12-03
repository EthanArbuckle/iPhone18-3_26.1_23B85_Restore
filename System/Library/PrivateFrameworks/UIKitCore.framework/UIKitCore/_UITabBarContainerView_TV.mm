@interface _UITabBarContainerView_TV
- (_UITabBarContainerView_TV)initWithTabBar:(id)bar;
- (id)preferredFocusEnvironments;
@end

@implementation _UITabBarContainerView_TV

- (_UITabBarContainerView_TV)initWithTabBar:(id)bar
{
  barCopy = bar;
  v9.receiver = self;
  v9.super_class = _UITabBarContainerView_TV;
  v6 = [(UIView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tabBar, bar);
    [(UIView *)v7 addSubview:barCopy];
  }

  return v7;
}

- (id)preferredFocusEnvironments
{
  v5[1] = *MEMORY[0x1E69E9840];
  tabBar = [(_UITabBarContainerView_TV *)self tabBar];
  v5[0] = tabBar;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

@end