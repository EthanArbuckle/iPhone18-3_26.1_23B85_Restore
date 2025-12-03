@interface _UIFloatingTabBarPinnedItemsView
- (CGRect)itemFrameForItemAtIndex:(int64_t)index;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UIFloatingTabBarPinnedItemsView)initWithFrame:(CGRect)frame;
- (id)_itemViewForItem:(id)item;
- (id)_itemViewForItemAtIndex:(int64_t)index;
- (id)tabForSelectionAtItemIndex:(int64_t)index;
- (int64_t)itemIndexForItemAtLocation:(CGPoint)location;
- (int64_t)itemIndexForTab:(id)tab;
- (void)_reloadItemViewsWithDifference:(id)difference animated:(BOOL)animated;
- (void)layoutSubviews;
- (void)reloadItemViewForTab:(id)tab;
- (void)setEditing:(BOOL)editing;
- (void)setHighlightedIndex:(int64_t)index;
- (void)setItems:(id)items animated:(BOOL)animated;
- (void)setSelectionViewIndex:(int64_t)index;
@end

@implementation _UIFloatingTabBarPinnedItemsView

- (_UIFloatingTabBarPinnedItemsView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _UIFloatingTabBarPinnedItemsView;
  v3 = [(UIView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_selectionViewIndex = 0x7FFFFFFFFFFFFFFFLL;
    v3->_highlightedIndex = 0x7FFFFFFFFFFFFFFFLL;
    array = [MEMORY[0x1E695DEC8] array];
    items = v4->_items;
    v4->_items = array;
  }

  return v4;
}

- (void)setEditing:(BOOL)editing
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_editing != editing)
  {
    editingCopy = editing;
    self->_editing = editing;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    itemViews = [(_UIFloatingTabBarPinnedItemsView *)self itemViews];
    objectEnumerator = [itemViews objectEnumerator];

    v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(objectEnumerator);
          }

          [*(*(&v10 + 1) + 8 * i) setEditing:editingCopy];
        }

        v7 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)setItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  v8 = self->_items;
  v9 = itemsCopy;
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
    objc_storeStrong(&self->_items, items);
    v11 = [(NSArray *)v12 differenceFromArray:v8 withOptions:0 usingEquivalenceTest:&__block_literal_global_74];
    [(_UIFloatingTabBarPinnedItemsView *)self _reloadItemViewsWithDifference:v11 animated:animatedCopy];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setSelectionViewIndex:(int64_t)index
{
  selectionViewIndex = self->_selectionViewIndex;
  if (selectionViewIndex != index)
  {
    if (selectionViewIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(_UIFloatingTabBarPinnedItemsView *)self _itemViewForItemAtIndex:?];
      [v6 setHasSelectionHighlight:0];
    }

    self->_selectionViewIndex = index;
    if (index != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [(_UIFloatingTabBarPinnedItemsView *)self _itemViewForItemAtIndex:index];
      [v7 setHasSelectionHighlight:1];
    }
  }
}

- (void)setHighlightedIndex:(int64_t)index
{
  highlightedIndex = self->_highlightedIndex;
  if (highlightedIndex != index)
  {
    if (highlightedIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(_UIFloatingTabBarPinnedItemsView *)self _itemViewForItemAtIndex:?];
      [v6 setHighlighted:0];
    }

    self->_highlightedIndex = index;
    if (index != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [(_UIFloatingTabBarPinnedItemsView *)self _itemViewForItemAtIndex:index];
      [v7 setHighlighted:1];
    }
  }
}

- (CGRect)itemFrameForItemAtIndex:(int64_t)index
{
  v3 = [(_UIFloatingTabBarPinnedItemsView *)self itemViewForItemAtIndex:index];
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

- (int64_t)itemIndexForItemAtLocation:(CGPoint)location
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63___UIFloatingTabBarPinnedItemsView_itemIndexForItemAtLocation___block_invoke;
  aBlock[3] = &__block_descriptor_48_e16_B16__0__UIView_8l;
  locationCopy = location;
  v4 = _Block_copy(aBlock);
  items = [(_UIFloatingTabBarPinnedItemsView *)self items];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63___UIFloatingTabBarPinnedItemsView_itemIndexForItemAtLocation___block_invoke_2;
  v9[3] = &unk_1E70F8818;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [items indexOfObjectPassingTest:v9];

  return v7;
}

- (id)_itemViewForItemAtIndex:(int64_t)index
{
  if (index < 0 || (-[_UIFloatingTabBarPinnedItemsView items](self, "items"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6 <= index))
  {
    v9 = 0;
  }

  else
  {
    items = [(_UIFloatingTabBarPinnedItemsView *)self items];
    v8 = [items objectAtIndex:index];

    v9 = [(_UIFloatingTabBarPinnedItemsView *)self _itemViewForItem:v8];
  }

  return v9;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v22 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  itemViews = [(_UIFloatingTabBarPinnedItemsView *)self itemViews];
  allValues = [itemViews allValues];

  v9 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v17 + 1) + 8 * v12) sizeThatFits:{width, height}];
        v6 = v6 + v13;
        v5 = fmax(v5, v14);
        ++v12;
      }

      while (v10 != v12);
      v10 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  traitCollection = [(UIView *)self traitCollection];
  v5 = _UIFloatingTabBarGetPlatformMetrics([traitCollection userInterfaceIdiom]);
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
  items = [(_UIFloatingTabBarPinnedItemsView *)self items];
  v16 = [items countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    if (_shouldReverseLayoutDirection)
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
          objc_enumerationMutation(items);
        }

        v21 = [(_UIFloatingTabBarPinnedItemsView *)self _itemViewForItem:*(*(&v23 + 1) + 8 * v20)];
        [v21 sizeThatFits:{remainder.size.width, remainder.size.height}];
        CGRectDivide(remainder, &slice, &remainder, v22, v19);
        [v21 setFrame:{slice.origin.x, slice.origin.y, slice.size.width, slice.size.height}];

        ++v20;
      }

      while (v17 != v20);
      v17 = [items countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v17);
  }
}

- (void)reloadItemViewForTab:(id)tab
{
  v3 = [(_UIFloatingTabBarPinnedItemsView *)self _itemViewForItemAtIndex:[(_UIFloatingTabBarPinnedItemsView *)self itemIndexForTab:tab]];
  [v3 reloadItemView];
}

- (void)_reloadItemViewsWithDifference:(id)difference animated:(BOOL)animated
{
  animatedCopy = animated;
  differenceCopy = difference;
  v7 = objc_alloc(MEMORY[0x1E695DF70]);
  removals = [differenceCopy removals];
  v9 = [v7 initWithCapacity:{objc_msgSend(removals, "count")}];

  v10 = objc_alloc(MEMORY[0x1E695DF70]);
  insertions = [differenceCopy insertions];
  v12 = [v10 initWithCapacity:{objc_msgSend(insertions, "count")}];

  v13 = objc_alloc(MEMORY[0x1E695DF90]);
  items = [(_UIFloatingTabBarPinnedItemsView *)self items];
  v15 = [v13 initWithCapacity:{objc_msgSend(items, "count")}];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __76___UIFloatingTabBarPinnedItemsView__reloadItemViewsWithDifference_animated___block_invoke;
  v33[3] = &unk_1E70F8868;
  v16 = differenceCopy;
  v34 = v16;
  selfCopy = self;
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
  if (animatedCopy)
  {
    [UIView animateWithDuration:v22 animations:v24 completion:0.2, v25, v26, v27, v28];
  }

  else
  {
    v22[2](v22);
    v24[2](v24, 1);
  }
}

- (int64_t)itemIndexForTab:(id)tab
{
  tabCopy = tab;
  items = [(_UIFloatingTabBarPinnedItemsView *)self items];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52___UIFloatingTabBarPinnedItemsView_itemIndexForTab___block_invoke;
  v9[3] = &unk_1E70F8890;
  v10 = tabCopy;
  v6 = tabCopy;
  v7 = [items indexOfObjectPassingTest:v9];

  return v7;
}

- (id)tabForSelectionAtItemIndex:(int64_t)index
{
  items = [(_UIFloatingTabBarPinnedItemsView *)self items];
  v6 = [items count];

  if (v6 <= index)
  {
    tabForSelection = 0;
  }

  else
  {
    items2 = [(_UIFloatingTabBarPinnedItemsView *)self items];
    v8 = [items2 objectAtIndex:index];
    tabForSelection = [v8 tabForSelection];
  }

  return tabForSelection;
}

- (id)_itemViewForItem:(id)item
{
  itemCopy = item;
  itemViews = [(_UIFloatingTabBarPinnedItemsView *)self itemViews];
  contentTab = [itemCopy contentTab];

  identifier = [contentTab identifier];
  v8 = [itemViews objectForKey:identifier];

  return v8;
}

@end