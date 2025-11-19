@interface UIFloatingTabBarPinnedItemsView
@end

@implementation UIFloatingTabBarPinnedItemsView

uint64_t __54___UIFloatingTabBarPinnedItemsView_setItems_animated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 contentTab];
  v6 = [v5 identifier];
  v7 = [v4 contentTab];

  v8 = [v7 identifier];
  v9 = v6;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = 0;
    if (v9 && v10)
    {
      v12 = [v9 isEqual:v10];
    }
  }

  return v12;
}

BOOL __63___UIFloatingTabBarPinnedItemsView_itemIndexForItemAtLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 frame];
  MinX = CGRectGetMinX(v8);
  v5 = *(a1 + 32);
  if (MinX <= v5)
  {
    [v3 frame];
    v6 = v5 <= CGRectGetMaxX(v9);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __63___UIFloatingTabBarPinnedItemsView_itemIndexForItemAtLocation___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _itemViewForItem:a2];
  v4 = (*(*(a1 + 40) + 16))();

  return v4;
}

void __76___UIFloatingTabBarPinnedItemsView__reloadItemViewsWithDifference_animated___block_invoke(id *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [a1[4] removals];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = a1[5];
        v8 = [*(*(&v14 + 1) + 8 * v6) object];
        v9 = [v7 _itemViewForItem:v8];

        [a1[6] addObject:v9];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v10 = [a1[5] items];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76___UIFloatingTabBarPinnedItemsView__reloadItemViewsWithDifference_animated___block_invoke_2;
  v11[3] = &unk_1E70F8840;
  v11[4] = a1[5];
  v12 = a1[7];
  v13 = a1[8];
  [v10 enumerateObjectsUsingBlock:v11];
}

void __76___UIFloatingTabBarPinnedItemsView__reloadItemViewsWithDifference_animated___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v11 = [v5 _itemViewForItem:v6];
  if (!v11)
  {
    v11 = [[_UIFloatingTabBarItemView alloc] initWithFrame:0.0, 0.0, 32.0, 32.0];
    [(_UIFloatingTabBarItemView *)v11 setPreferredDisplayMode:2];
    [(_UIFloatingTabBarItemView *)v11 setSuppressEditing:1];
    [(UIView *)v11 setAlpha:0.0];
    [*(a1 + 32) addSubview:v11];
    [*(a1 + 40) addObject:v11];
  }

  v7 = [v6 contentTab];
  [(_UIFloatingTabBarItemView *)v11 setItem:v7];

  -[_UIFloatingTabBarItemView setEditing:](v11, "setEditing:", [*(a1 + 32) isEditing]);
  -[_UIFloatingTabBarItemView setHasSelectionHighlight:](v11, "setHasSelectionHighlight:", [*(a1 + 32) highlightedIndex] == a3);
  [(UIView *)v11 layoutIfNeeded];
  v8 = *(a1 + 48);
  v9 = [v6 contentTab];

  v10 = [v9 identifier];
  [v8 setObject:v11 forKey:v10];
}

void __76___UIFloatingTabBarPinnedItemsView__reloadItemViewsWithDifference_animated___block_invoke_3(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v16 + 1) + 8 * v6++) setAlpha:0.0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setAlpha:{1.0, v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v9);
  }
}

void __76___UIFloatingTabBarPinnedItemsView__reloadItemViewsWithDifference_animated___block_invoke_4(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) removeFromSuperview];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

BOOL __52___UIFloatingTabBarPinnedItemsView_itemIndexForTab___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 contentTab];
  v4 = v3 == *(a1 + 32);

  return v4;
}

@end