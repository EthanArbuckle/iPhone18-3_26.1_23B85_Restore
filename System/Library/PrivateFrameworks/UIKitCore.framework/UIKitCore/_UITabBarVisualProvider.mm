@interface _UITabBarVisualProvider
- (CGRect)frameForHostedElement:(int64_t)a3 options:(int64_t)a4;
- (_UITabBarVisualProvider)initWithTabBar:(id)a3;
- (id)focusedTabBarItem;
- (id)tabBarItemAtPoint:(CGPoint)a3;
- (void)updateUnselectedItemTintColor;
@end

@implementation _UITabBarVisualProvider

- (_UITabBarVisualProvider)initWithTabBar:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UITabBarVisualProvider;
  result = [(_UITabBarVisualProvider *)&v5 init];
  if (result)
  {
    result->_tabBar = a3;
  }

  return result;
}

- (void)updateUnselectedItemTintColor
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(UITabBar *)self->_tabBar _effectiveUnselectedTintColor];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(UITabBar *)self->_tabBar items];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [(UITabBarItem *)*(*(&v10 + 1) + 8 * v8) _tabBarButton];
        [v9 _setUnselectedTintColor:v3];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)tabBarItemAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v20 = *MEMORY[0x1E69E9840];
  v6 = [(_UITabBarVisualProvider *)self tabBar];
  v7 = [v6 hitTest:0 withEvent:{x, y}];

  objc_opt_class();
  v8 = 0;
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [(UITabBar *)self->_tabBar items];
    v8 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = (i + 1))
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [(UITabBarItem *)v12 _tabBarButton];

          if (v13 == v7)
          {
            v8 = v12;
            goto LABEL_12;
          }
        }

        v8 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v2 = [(UITabBar *)self->_tabBar items];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = (i + 1))
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [(UITabBarItem *)v6 _tabBarButton];
        v8 = [v7 isFocused];

        if (v8)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (CGRect)frameForHostedElement:(int64_t)a3 options:(int64_t)a4
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