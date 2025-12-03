@interface _UITabBarVisualProvider
- (CGRect)frameForHostedElement:(int64_t)element options:(int64_t)options;
- (_UITabBarVisualProvider)initWithTabBar:(id)bar;
- (id)focusedTabBarItem;
- (id)tabBarItemAtPoint:(CGPoint)point;
- (void)updateUnselectedItemTintColor;
@end

@implementation _UITabBarVisualProvider

- (_UITabBarVisualProvider)initWithTabBar:(id)bar
{
  v5.receiver = self;
  v5.super_class = _UITabBarVisualProvider;
  result = [(_UITabBarVisualProvider *)&v5 init];
  if (result)
  {
    result->_tabBar = bar;
  }

  return result;
}

- (void)updateUnselectedItemTintColor
{
  v15 = *MEMORY[0x1E69E9840];
  _effectiveUnselectedTintColor = [(UITabBar *)self->_tabBar _effectiveUnselectedTintColor];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  items = [(UITabBar *)self->_tabBar items];
  v5 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(items);
        }

        _tabBarButton = [(UITabBarItem *)*(*(&v10 + 1) + 8 * v8) _tabBarButton];
        [_tabBarButton _setUnselectedTintColor:_effectiveUnselectedTintColor];

        ++v8;
      }

      while (v6 != v8);
      v6 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)tabBarItemAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v20 = *MEMORY[0x1E69E9840];
  tabBar = [(_UITabBarVisualProvider *)self tabBar];
  v7 = [tabBar hitTest:0 withEvent:{x, y}];

  objc_opt_class();
  v8 = 0;
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    items = [(UITabBar *)self->_tabBar items];
    v8 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = (i + 1))
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(items);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          _tabBarButton = [(UITabBarItem *)v12 _tabBarButton];

          if (_tabBarButton == v7)
          {
            v8 = v12;
            goto LABEL_12;
          }
        }

        v8 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v8;
}

- (id)focusedTabBarItem
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  items = [(UITabBar *)self->_tabBar items];
  v3 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = (i + 1))
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(items);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        _tabBarButton = [(UITabBarItem *)v6 _tabBarButton];
        isFocused = [_tabBarButton isFocused];

        if (isFocused)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (CGRect)frameForHostedElement:(int64_t)element options:(int64_t)options
{
  v4 = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 8);
  v6 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

@end