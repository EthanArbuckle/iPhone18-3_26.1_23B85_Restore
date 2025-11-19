@interface _UIFloatingTabBarPinnedItemsView
- (CGRect)itemFrameForItemAtIndex:(int64_t)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UIFloatingTabBarPinnedItemsView)initWithFrame:(CGRect)a3;
- (id)_itemViewForItem:(id)a3;
- (id)_itemViewForItemAtIndex:(int64_t)a3;
- (id)tabForSelectionAtItemIndex:(int64_t)a3;
- (int64_t)itemIndexForItemAtLocation:(CGPoint)a3;
- (int64_t)itemIndexForTab:(id)a3;
- (void)_reloadItemViewsWithDifference:(id)a3 animated:(BOOL)a4;
- (void)layoutSubviews;
- (void)reloadItemViewForTab:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setHighlightedIndex:(int64_t)a3;
- (void)setItems:(id)a3 animated:(BOOL)a4;
- (void)setSelectionViewIndex:(int64_t)a3;
@end

@implementation _UIFloatingTabBarPinnedItemsView

- (_UIFloatingTabBarPinnedItemsView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _UIFloatingTabBarPinnedItemsView;
  v3 = [(UIView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_selectionViewIndex = 0x7FFFFFFFFFFFFFFFLL;
    v3->_highlightedIndex = 0x7FFFFFFFFFFFFFFFLL;
    v5 = [MEMORY[0x1E695DEC8] array];
    items = v4->_items;
    v4->_items = v5;
  }

  return v4;
}

- (void)setEditing:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_editing != a3)
  {
    v3 = a3;
    self->_editing = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(_UIFloatingTabBarPinnedItemsView *)self itemViews];
    v5 = [v4 objectEnumerator];

    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * i) setEditing:v3];
        }

        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)setItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = self->_items;
  v9 = v7;
  v12 = v9;
  if (v8 == v9)
  {

    v11 = v8;
LABEL_9:

    goto LABEL_10;
  }

  if (!v9 || !v8)
  {

    goto LABEL_8;
  }

  v10 = [(NSArray *)v8 isEqual:v9];

  if ((v10 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->_items, a3);
    v11 = [(NSArray *)v12 differenceFromArray:v8 withOptions:0 usingEquivalenceTest:&__block_literal_global_74];
    [(_UIFloatingTabBarPinnedItemsView *)self _reloadItemViewsWithDifference:v11 animated:v4];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setSelectionViewIndex:(int64_t)a3
{
  selectionViewIndex = self->_selectionViewIndex;
  if (selectionViewIndex != a3)
  {
    if (selectionViewIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(_UIFloatingTabBarPinnedItemsView *)self _itemViewForItemAtIndex:?];
      [v6 setHasSelectionHighlight:0];
    }

    self->_selectionViewIndex = a3;
    if (a3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [(_UIFloatingTabBarPinnedItemsView *)self _itemViewForItemAtIndex:a3];
      [v7 setHasSelectionHighlight:1];
    }
  }
}

- (void)setHighlightedIndex:(int64_t)a3
{
  highlightedIndex = self->_highlightedIndex;
  if (highlightedIndex != a3)
  {
    if (highlightedIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(_UIFloatingTabBarPinnedItemsView *)self _itemViewForItemAtIndex:?];
      [v6 setHighlighted:0];
    }

    self->_highlightedIndex = a3;
    if (a3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [(_UIFloatingTabBarPinnedItemsView *)self _itemViewForItemAtIndex:a3];
      [v7 setHighlighted:1];
    }
  }
}

- (CGRect)itemFrameForItemAtIndex:(int64_t)a3
{
  v3 = [(_UIFloatingTabBarPinnedItemsView *)self itemViewForItemAtIndex:a3];
  v4 = v3;
  if (v3)
  {
    [v3 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x1E695F050];
    v8 = *(MEMORY[0x1E695F050] + 8);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v12 = *(MEMORY[0x1E695F050] + 24);
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (int64_t)itemIndexForItemAtLocation:(CGPoint)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63___UIFloatingTabBarPinnedItemsView_itemIndexForItemAtLocation___block_invoke;
  aBlock[3] = &__block_descriptor_48_e16_B16__0__UIView_8l;
  v12 = a3;
  v4 = _Block_copy(aBlock);
  v5 = [(_UIFloatingTabBarPinnedItemsView *)self items];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63___UIFloatingTabBarPinnedItemsView_itemIndexForItemAtLocation___block_invoke_2;
  v9[3] = &unk_1E70F8818;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9];

  return v7;
}

- (id)_itemViewForItemAtIndex:(int64_t)a3
{
  if (a3 < 0 || (-[_UIFloatingTabBarPinnedItemsView items](self, "items"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= a3))
  {
    v9 = 0;
  }

  else
  {
    v7 = [(_UIFloatingTabBarPinnedItemsView *)self items];
    v8 = [v7 objectAtIndex:a3];

    v9 = [(_UIFloatingTabBarPinnedItemsView *)self _itemViewForItem:v8];
  }

  return v9;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v22 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(_UIFloatingTabBarPinnedItemsView *)self itemViews];
  v8 = [v7 allValues];

  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v17 + 1) + 8 * v12) sizeThatFits:{width, height}];
        v6 = v6 + v13;
        v5 = fmax(v5, v14);
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = v6;
  v16 = v5;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)layoutSubviews
{
  v31 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = _UIFloatingTabBarPinnedItemsView;
  [(UIView *)&v29 layoutSubviews];
  v3 = [(UIView *)self _shouldReverseLayoutDirection];
  v4 = [(UIView *)self traitCollection];
  v5 = _UIFloatingTabBarGetPlatformMetrics([v4 userInterfaceIdiom]);
  [v5 backgroundInsets];
  v7 = v6;
  v9 = v8;

  [(UIView *)self bounds];
  remainder.origin.x = v10 + 0.0;
  remainder.origin.y = v7 + v11;
  remainder.size.width = v12;
  remainder.size.height = v13 - (v7 + v9);
  v14 = *(MEMORY[0x1E695F058] + 16);
  slice.origin = *MEMORY[0x1E695F058];
  slice.size = v14;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = [(_UIFloatingTabBarPinnedItemsView *)self items];
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    if (v3)
    {
      v19 = CGRectMaxXEdge;
    }

    else
    {
      v19 = CGRectMinXEdge;
    }

    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v21 = [(_UIFloatingTabBarPinnedItemsView *)self _itemViewForItem:*(*(&v23 + 1) + 8 * v20)];
        [v21 sizeThatFits:{remainder.size.width, remainder.size.height}];
        CGRectDivide(remainder, &slice, &remainder, v22, v19);
        [v21 setFrame:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];

        ++v20;
      }

      while (v17 != v20);
      v17 = [v15 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v17);
  }
}

- (void)reloadItemViewForTab:(id)a3
{
  v3 = [(_UIFloatingTabBarPinnedItemsView *)self _itemViewForItemAtIndex:[(_UIFloatingTabBarPinnedItemsView *)self itemIndexForTab:a3]];
  [v3 reloadItemView];
}

- (void)_reloadItemViewsWithDifference:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x1E695DF70]);
  v8 = [v6 removals];
  v9 = [v7 initWithCapacity:{objc_msgSend(v8, "count")}];

  v10 = objc_alloc(MEMORY[0x1E695DF70]);
  v11 = [v6 insertions];
  v12 = [v10 initWithCapacity:{objc_msgSend(v11, "count")}];

  v13 = objc_alloc(MEMORY[0x1E695DF90]);
  v14 = [(_UIFloatingTabBarPinnedItemsView *)self items];
  v15 = [v13 initWithCapacity:{objc_msgSend(v14, "count")}];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __76___UIFloatingTabBarPinnedItemsView__reloadItemViewsWithDifference_animated___block_invoke;
  v33[3] = &unk_1E70F8868;
  v16 = v6;
  v34 = v16;
  v35 = self;
  v17 = v9;
  v36 = v17;
  v18 = v12;
  v37 = v18;
  v19 = v15;
  v38 = v19;
  [UIView performWithoutAnimation:v33];
  objc_storeStrong(&self->_itemViews, v15);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76___UIFloatingTabBarPinnedItemsView__reloadItemViewsWithDifference_animated___block_invoke_3;
  aBlock[3] = &unk_1E70F35B8;
  v20 = v17;
  v31 = v20;
  v21 = v18;
  v32 = v21;
  v22 = _Block_copy(aBlock);
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __76___UIFloatingTabBarPinnedItemsView__reloadItemViewsWithDifference_animated___block_invoke_4;
  v28 = &unk_1E70F5AC0;
  v23 = v20;
  v29 = v23;
  v24 = _Block_copy(&v25);
  if (v4)
  {
    [UIView animateWithDuration:v22 animations:v24 completion:0.2, v25, v26, v27, v28];
  }

  else
  {
    v22[2](v22);
    v24[2](v24, 1);
  }
}

- (int64_t)itemIndexForTab:(id)a3
{
  v4 = a3;
  v5 = [(_UIFloatingTabBarPinnedItemsView *)self items];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52___UIFloatingTabBarPinnedItemsView_itemIndexForTab___block_invoke;
  v9[3] = &unk_1E70F8890;
  v10 = v4;
  v6 = v4;
  v7 = [v5 indexOfObjectPassingTest:v9];

  return v7;
}

- (id)tabForSelectionAtItemIndex:(int64_t)a3
{
  v5 = [(_UIFloatingTabBarPinnedItemsView *)self items];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v9 = 0;
  }

  else
  {
    v7 = [(_UIFloatingTabBarPinnedItemsView *)self items];
    v8 = [v7 objectAtIndex:a3];
    v9 = [v8 tabForSelection];
  }

  return v9;
}

- (id)_itemViewForItem:(id)a3
{
  v4 = a3;
  v5 = [(_UIFloatingTabBarPinnedItemsView *)self itemViews];
  v6 = [v4 contentTab];

  v7 = [v6 identifier];
  v8 = [v5 objectForKey:v7];

  return v8;
}

@end