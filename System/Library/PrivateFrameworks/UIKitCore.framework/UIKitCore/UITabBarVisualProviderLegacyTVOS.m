@interface UITabBarVisualProviderLegacyTVOS
@end

@implementation UITabBarVisualProviderLegacyTVOS

void __102___UITabBarVisualProviderLegacyTVOS_changeItemsTo_removingItems_selectedItem_oldSelectedItem_animate___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [(UITabBarItem *)*(*(&v22 + 1) + 8 * i) _tabBarButton];
        [v7 setAlpha:0.0];
      }

      v4 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) _layoutTabBarItems];
  v8 = *(*(a1 + 40) + 72);
  [v8 contentInset];
  [v8 setContentOffset:*(a1 + 56) animated:{-v9, 0.0}];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = *(a1 + 48);
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        if ([v15 isEnabled])
        {
          v16 = 1.0;
        }

        else
        {
          v16 = 0.25;
        }

        v17 = [(UITabBarItem *)v15 _tabBarButton];
        [v17 setAlpha:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }
}

void __102___UITabBarVisualProviderLegacyTVOS_changeItemsTo_removingItems_selectedItem_oldSelectedItem_animate___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [(UITabBarItem *)*(*(&v7 + 1) + 8 * v5) _tabBarButton];
        [v6 removeFromSuperview];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void __55___UITabBarVisualProviderLegacyTVOS__layoutTabBarItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v32 = v3;
  if (*(a1 + 96) == 1)
  {
    v4 = [(UITabBarItem *)v3 _tabBarButton];
    v5 = [(UITabBarItem *)v32 _tabBarButton];
    [v5 frame];
    [v4 sizeThatFits:{v6, v7}];
    v9 = v8;

    v3 = v32;
    v10 = v9 * *(a1 + 56);
    if (v10 > 0.0)
    {
      *(*(*(a1 + 32) + 8) + 24) = v10 + *(a1 + 64);
    }
  }

  v11 = [(UITabBarItem *)v3 _tabBarButton];
  if (*(a1 + 96) == 1)
  {
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 24);
    v14 = *(*(*(a1 + 32) + 8) + 24);
    v15 = v14 + v13;
    *(v12 + 24) = v15;
    v16 = *(a1 + 72);
    v17 = *(*(a1 + 40) + 8);
    v18 = *(a1 + 80) + *(v17 + 24);
    *(v17 + 24) = v18;
  }

  else
  {
    v19 = *(*(*(a1 + 48) + 8) + 24);
    v14 = *(*(*(a1 + 32) + 8) + 24);
    v16 = *(a1 + 72);
    v13 = *(a1 + 88) + v14 * v19 + *(a1 + 80) * v19;
  }

  v20 = round(v13) - v13;
  v21 = v20;
  v22 = v13 + v21;
  v23 = v14 - v21;
  *&v21 = round(v22 + v23) - (v22 + v23);
  v24 = v23 + *&v21;
  if (*(a1 + 97))
  {
    v25 = 0.0;
  }

  else
  {
    v25 = 2.0;
  }

  if (v24 < v25 + v25 || v16 < 5.0)
  {
    v34.origin.x = v22 + v25;
    v34.size.width = *MEMORY[0x1E695F060];
    v31 = *(MEMORY[0x1E695F060] + 8);
    v30 = 3.0;
  }

  else
  {
    v27 = 0;
    v28 = v24;
    v29 = v16;
    v34 = CGRectInset(*&v22, v25, 0.0);
    v30 = v34.origin.y + 1.0;
    v31 = v34.size.height + -1.0;
  }

  [v11 setFrame:{v34.origin.x, v30, v34.size.width, v31}];
  if (objc_opt_respondsToSelector())
  {
    [v11 _setTabBarHitRect:{0.0, 0.0, v24, v16}];
  }

  ++*(*(*(a1 + 48) + 8) + 24);
}

uint64_t __70___UITabBarVisualProviderLegacyTVOS__setFocusedItemHightlightVisible___block_invoke(uint64_t a1)
{
  v2 = [UIImageView alloc];
  v3 = _UIImageWithName(@"UITabBarFocusedItemHighlight");
  v4 = [(UIImageView *)v2 initWithImage:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  *(v5 + 80) = v4;

  [*(*(a1 + 32) + 80) setAlpha:0.0];
  v7 = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:0];
  v8 = *(a1 + 32);
  v9 = *(v8 + 88);
  *(v8 + 88) = v7;

  [*(*(a1 + 32) + 80) addMotionEffect:*(*(a1 + 32) + 88)];
  v10 = [*(a1 + 32) _parentViewForItems];
  [v10 insertSubview:*(*(a1 + 32) + 80) atIndex:0];

  v11 = *(a1 + 32);

  return [v11 _updateFocusedItemHighlightFrame];
}

uint64_t __86___UITabBarVisualProviderLegacyTVOS_didUpdateFocusInContext_withAnimationCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateFocusedItemHighlightFrame];
  v2 = *(a1 + 32);

  return [v2 _updateHighlightMotionEffect];
}

@end