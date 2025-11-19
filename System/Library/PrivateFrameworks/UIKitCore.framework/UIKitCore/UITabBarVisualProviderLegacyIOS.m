@interface UITabBarVisualProviderLegacyIOS
@end

@implementation UITabBarVisualProviderLegacyIOS

void __54___UITabBarVisualProviderLegacyIOS__layoutTabBarItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v33 = v3;
  if (*(a1 + 112) == 1)
  {
    v4 = [(UITabBarItem *)v3 _tabBarButton];
    v5 = [(UITabBarItem *)v33 _tabBarButton];
    [v5 frame];
    [v4 sizeThatFits:{v6, v7}];
    v9 = v8;

    v3 = v33;
    if (v9 > 0.0)
    {
      *(*(*(a1 + 56) + 8) + 24) = v9 + *(a1 + 80);
    }
  }

  v10 = [(UITabBarItem *)v3 _tabBarButton];
  [v10 setItemAppearanceData:*(a1 + 32)];
  [v10 setItemVibrantEffect:*(a1 + 40)];
  if (*(a1 + 112) == 1)
  {
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 24);
    v13 = *(*(*(a1 + 56) + 8) + 24);
    v14 = *(a1 + 88);
    *(v11 + 24) = v12 + v13;
    *(*(*(a1 + 64) + 8) + 24) = *(a1 + 96) + *(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    v15 = *(*(*(a1 + 72) + 8) + 24);
    v13 = *(*(*(a1 + 56) + 8) + 24);
    v14 = *(a1 + 88);
    v12 = *(a1 + 104) + v13 * v15 + *(a1 + 96) * v15;
  }

  v16 = round(v12) - v12;
  v17 = v16;
  v18 = v12 + v17;
  v19 = v13 - v17;
  v20 = 0.0;
  *&v17 = round(v18 + v19) - (v18 + v19);
  v21 = *&v17;
  v22 = v19 + v21;
  if (*(a1 + 113))
  {
    v23 = v14;
    v24 = v19 + v21;
    v25 = v18;
  }

  else
  {
    if (*(a1 + 114))
    {
      v26 = 0.0;
    }

    else
    {
      v26 = 2.0;
    }

    if (v22 < v26 + v26 || v14 < 5.0)
    {
      v25 = v18 + v26;
      v24 = *MEMORY[0x1E695F060];
      v23 = *(MEMORY[0x1E695F060] + 8);
      v20 = 3.0;
    }

    else
    {
      v28 = v18;
      v29 = v22;
      v30 = v14;
      *&v25 = CGRectInset(*(&v20 - 1), v26, 0.0);
      v20 = v31 + 1.0;
      v23 = v32 + -1.0;
    }
  }

  [v10 setFrame:{v25, v20, v24, v23}];
  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 48) + 8) convertRect:v10 toView:{v18, 0.0, v22, v14}];
    [v10 _setTabBarHitRect:?];
  }

  ++*(*(*(a1 + 72) + 8) + 24);
}

void __101___UITabBarVisualProviderLegacyIOS_changeItemsTo_removingItems_selectedItem_oldSelectedItem_animate___block_invoke(id *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [(UITabBarItem *)*(*(&v20 + 1) + 8 * i) _tabBarButton];
        [v7 setAlpha:0.0];
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }

  [a1[5] _layoutTabBarItems];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = a1[6];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * j);
        if ([v13 isEnabled])
        {
          v14 = 1.0;
        }

        else
        {
          v14 = 0.25;
        }

        v15 = [(UITabBarItem *)v13 _tabBarButton];
        [v15 setAlpha:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v10);
  }
}

void __101___UITabBarVisualProviderLegacyIOS_changeItemsTo_removingItems_selectedItem_oldSelectedItem_animate___block_invoke_2(uint64_t a1)
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

void __80___UITabBarVisualProviderLegacyIOS_traitCollectionForChild_baseTraitCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    [v3 setUserInterfaceStyle:?];
    v3 = v4;
  }

  if (*(a1 + 32))
  {
    [v4 setPreferredContentSizeCategory:?];
    v3 = v4;
  }
}

@end