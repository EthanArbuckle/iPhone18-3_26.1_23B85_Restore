@interface _UITabBarItemBridgedElement
- (BOOL)isEnabled;
- (BOOL)isSelected;
- (BOOL)isSpringLoaded;
- (UIEdgeInsets)imageInsetsForStyle:(int64_t)a3 state:(int64_t)a4;
- (_UITabBarItemBridgedElement)initWithViewController:(id)a3;
- (id)accessibilityAttributedLabel;
- (id)accessibilityIdentifier;
- (id)badgeForStyle:(int64_t)a3 state:(int64_t)a4;
- (id)badgeValue;
- (id)imageForStyle:(int64_t)a3 state:(int64_t)a4;
- (id)scrollEdgeAppearance;
- (id)standardAppearance;
- (id)title;
- (id)titleForStyle:(int64_t)a3 state:(int64_t)a4;
- (int64_t)preferredPlacement;
- (void)_reloadTabBarItem;
- (void)_setBridgedTabBarItem:(id)a3;
- (void)_tabDataProviderContentDidChange:(id)a3;
@end

@implementation _UITabBarItemBridgedElement

- (int64_t)preferredPlacement
{
  v2 = [(_UITabBarItemBridgedElement *)self tabBarItem];
  v3 = [v2 preferredPlacement];

  return v3;
}

- (id)badgeValue
{
  v2 = [(_UITabBarItemBridgedElement *)self tabBarItem];
  v3 = [v2 badgeValue];

  return v3;
}

- (id)title
{
  v2 = [(_UITabBarItemBridgedElement *)self titleForStyle:1 state:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1EFB14550;
  }

  v5 = v4;

  return v4;
}

- (_UITabBarItemBridgedElement)initWithViewController:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [v5 UUIDString];
  v13.receiver = self;
  v13.super_class = _UITabBarItemBridgedElement;
  v7 = [(_UITabElement *)&v13 initWithIdentifier:v6 title:&stru_1EFB14550 image:0];

  if (v7)
  {
    v8 = [v4 tabBarItem];
    tabBarItem = v7->_tabBarItem;
    v7->_tabBarItem = v8;

    v10 = v7->_tabBarItem;
    if (v10)
    {
      objc_storeWeak(&v10->_changeObserver, v7);
      v11 = v7->_tabBarItem;
    }

    else
    {
      v11 = 0;
    }

    [(UITabBarItem *)v11 set_fallbackSourceItem:v7];
    [(_UITabElement *)v7 _setViewController:v4];
  }

  return v7;
}

- (void)_reloadTabBarItem
{
  v3 = [(_UITabElement *)self _viewController];
  v4 = [v3 tabBarItem];

  [(_UITabBarItemBridgedElement *)self _setBridgedTabBarItem:v4];
}

- (void)_setBridgedTabBarItem:(id)a3
{
  v5 = a3;
  tabBarItem = self->_tabBarItem;
  if (tabBarItem != v5)
  {
    v12 = v5;
    v7 = [(UITabBarItem *)&tabBarItem->super.super.isa _changeObserver];

    if (v7 == self)
    {
      v8 = self->_tabBarItem;
      if (v8)
      {
        objc_storeWeak(&v8->_changeObserver, 0);
        v9 = self->_tabBarItem;
      }

      else
      {
        v9 = 0;
      }

      [(UITabBarItem *)v9 set_fallbackSourceItem:?];
    }

    objc_storeStrong(&self->_tabBarItem, a3);
    v10 = self->_tabBarItem;
    if (v10)
    {
      objc_storeWeak(&v10->_changeObserver, self);
      v11 = self->_tabBarItem;
    }

    else
    {
      v11 = 0;
    }

    [(UITabBarItem *)v11 set_fallbackSourceItem:?];
    v5 = v12;
  }
}

- (BOOL)isEnabled
{
  v2 = [(_UITabBarItemBridgedElement *)self tabBarItem];
  v3 = [v2 isEnabled];

  return v3;
}

- (BOOL)isSelected
{
  v2 = [(_UITabBarItemBridgedElement *)self tabBarItem];
  v3 = [v2 isSelected];

  return v3;
}

- (BOOL)isSpringLoaded
{
  v2 = [(_UITabBarItemBridgedElement *)self tabBarItem];
  v3 = [v2 isSpringLoaded];

  return v3;
}

- (id)titleForStyle:(int64_t)a3 state:(int64_t)a4
{
  v6 = [(_UITabBarItemBridgedElement *)self tabBarItem];
  v7 = [v6 titleForStyle:a3 state:a4];

  return v7;
}

- (id)badgeForStyle:(int64_t)a3 state:(int64_t)a4
{
  v6 = [(_UITabBarItemBridgedElement *)self tabBarItem];
  v7 = [v6 badgeForStyle:a3 state:a4];

  return v7;
}

- (id)imageForStyle:(int64_t)a3 state:(int64_t)a4
{
  v6 = [(_UITabBarItemBridgedElement *)self tabBarItem];
  v7 = [v6 imageForStyle:a3 state:a4];

  return v7;
}

- (UIEdgeInsets)imageInsetsForStyle:(int64_t)a3 state:(int64_t)a4
{
  v6 = [(_UITabBarItemBridgedElement *)self tabBarItem];
  [v6 imageInsetsForStyle:a3 state:a4];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (id)standardAppearance
{
  v2 = [(_UITabBarItemBridgedElement *)self tabBarItem];
  v3 = [v2 standardAppearance];

  return v3;
}

- (id)scrollEdgeAppearance
{
  v2 = [(_UITabBarItemBridgedElement *)self tabBarItem];
  v3 = [v2 scrollEdgeAppearance];

  return v3;
}

- (void)_tabDataProviderContentDidChange:(id)a3
{
  v4 = [(UITab *)self _tabModel];
  [v4 tabContentDidChange:self];
}

- (id)accessibilityIdentifier
{
  v2 = [(_UITabBarItemBridgedElement *)self tabBarItem];
  v3 = [v2 accessibilityIdentifier];

  return v3;
}

- (id)accessibilityAttributedLabel
{
  v2 = [(_UITabBarItemBridgedElement *)self tabBarItem];
  v3 = [v2 accessibilityAttributedLabel];

  return v3;
}

@end