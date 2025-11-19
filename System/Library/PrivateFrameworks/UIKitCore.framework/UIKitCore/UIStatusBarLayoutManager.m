@interface UIStatusBarLayoutManager
- (BOOL)_processDelta:(double)a3 forView:(id)a4;
- (BOOL)_updateItemView:(id)a3 withData:(id)a4 actions:(int)a5 animated:(BOOL)a6;
- (BOOL)itemIsVisible:(id)a3;
- (BOOL)prepareDoubleHeightItemWithEnabledItems:(BOOL *)a3;
- (BOOL)prepareEnabledItems:(BOOL *)a3 withData:(id)a4 actions:(int)a5;
- (BOOL)updateItemsWithData:(id)a3 actions:(int)a4 animated:(BOOL)a5;
- (CGRect)_frameForItemView:(id)a3 startPosition:(double)a4 firstView:(BOOL)a5;
- (CGRect)_repositionedNewFrame:(CGRect)a3 sizeDelta:(double)a4;
- (CGRect)rectForItems:(id)a3;
- (UIStatusBarForegroundView)foregroundView;
- (UIStatusBarLayoutManager)initWithRegion:(int)a3 foregroundView:(id)a4 usesVerticalLayout:(BOOL)a5;
- (double)_dimensionForSize:(CGSize)a3;
- (double)_positionAfterPlacingItemView:(id)a3 startPosition:(double)a4 firstView:(BOOL)a5;
- (double)_sizeNeededForItemView:(id)a3;
- (double)_startPosition;
- (double)distributeOverlap:(double)a3 amongItems:(id)a4;
- (double)removeOverlap:(double)a3 fromItems:(id)a4;
- (double)sizeNeededForItem:(id)a3;
- (double)sizeNeededForItems:(id)a3;
- (id)_createViewForItem:(id)a3 withData:(id)a4 actions:(int)a5;
- (id)_itemViews;
- (id)_itemViewsSortedForLayout;
- (id)_viewForItem:(id)a3;
- (id)visibleItemViewAtPoint:(CGPoint)a3 inForegroundView:(id)a4;
- (void)_addOriginDelta:(double)a3 toPoint:(CGPoint *)a4;
- (void)_positionNewItemViewsWithEnabledItems:(BOOL *)a3;
- (void)_prepareEnabledItemType:(int)a3 withEnabledItems:(BOOL *)a4 withData:(id)a5 actions:(int)a6 itemAppearing:(BOOL *)a7 itemDisappearing:(BOOL *)a8;
- (void)_setOrigin:(double)a3 forPoint:(CGPoint *)a4;
- (void)clearOverlapFromItems:(id)a3;
- (void)dealloc;
- (void)itemView:(id)a3 sizeChangedBy:(double)a4;
- (void)makeVisibleItemsPerformPendedActions;
- (void)positionInvisibleItems;
- (void)reflowWithVisibleItems:(id)a3 duration:(double)a4;
- (void)removeDisabledItems:(BOOL *)a3;
- (void)setPersistentAnimationsEnabled:(BOOL)a3;
- (void)setVisibilityOfAllItems:(BOOL)a3;
- (void)setVisibilityOfItem:(id)a3 visible:(BOOL)a4;
- (void)setVisibilityOfItemType:(int)a3 visible:(BOOL)a4;
@end

@implementation UIStatusBarLayoutManager

- (UIStatusBarLayoutManager)initWithRegion:(int)a3 foregroundView:(id)a4 usesVerticalLayout:(BOOL)a5
{
  v8 = a4;
  v12.receiver = self;
  v12.super_class = UIStatusBarLayoutManager;
  v9 = [(UIStatusBarLayoutManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_region = a3;
    objc_storeWeak(&v9->_foregroundView, v8);
    v10->_usesVerticalLayout = a5;
  }

  return v10;
}

- (void)dealloc
{
  for (i = 16; i != 432; i += 8)
  {
    [*(&self->super.isa + i) setLayoutManager:0];
    [*(&self->super.isa + i) removeFromSuperview];
    v4 = *(&self->super.isa + i);
    *(&self->super.isa + i) = 0;
  }

  v5.receiver = self;
  v5.super_class = UIStatusBarLayoutManager;
  [(UIStatusBarLayoutManager *)&v5 dealloc];
}

- (double)_dimensionForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(UIStatusBarLayoutManager *)self usesVerticalLayout])
  {
    return height;
  }

  else
  {
    return width;
  }
}

- (void)_setOrigin:(double)a3 forPoint:(CGPoint *)a4
{
  v6 = [(UIStatusBarLayoutManager *)self usesVerticalLayout];
  v7 = 8;
  if (!v6)
  {
    v7 = 0;
  }

  *(&a4->x + v7) = a3;
}

- (void)_addOriginDelta:(double)a3 toPoint:(CGPoint *)a4
{
  v6 = [(UIStatusBarLayoutManager *)self usesVerticalLayout];
  v7 = 8;
  if (!v6)
  {
    v7 = 0;
  }

  *(&a4->x + v7) = *(&a4->x + v7) + a3;
}

- (BOOL)prepareEnabledItems:(BOOL *)a3 withData:(id)a4 actions:(int)a5
{
  v5 = *&a5;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    v14 = 0;
    [(UIStatusBarLayoutManager *)self _prepareEnabledItemType:v9 withEnabledItems:a3 withData:a4 actions:v5 itemAppearing:&v14 + 1 itemDisappearing:&v14];
    v12 = HIBYTE(v14) | v11 & 1;
    v11 = HIBYTE(v14) & 1 | v11 & 1;
    v10 = (v14 | v10) != 0;
    v9 = (v9 + 1);
  }

  while (v9 != 52);
  if (v12)
  {
    [(UIStatusBarLayoutManager *)self _positionNewItemViewsWithEnabledItems:a3];
    return 1;
  }

  return v10;
}

- (void)setVisibilityOfAllItems:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(UIStatusBarLayoutManager *)self _itemViews];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setVisible:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setVisibilityOfItem:(id)a3 visible:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 type];

  [(UIStatusBarLayoutManager *)self setVisibilityOfItemType:v6 visible:v4];
}

- (void)setVisibilityOfItemType:(int)a3 visible:(BOOL)a4
{
  v4 = self->_itemViews[a3];
  if (v4)
  {
    [(UIStatusBarItemView *)v4 setVisible:a4];
  }
}

- (BOOL)updateItemsWithData:(id)a3 actions:(int)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = *&a4;
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(UIStatusBarLayoutManager *)self _itemViews];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v12 |= [(UIStatusBarLayoutManager *)self _updateItemView:*(*(&v16 + 1) + 8 * i) withData:v8 actions:v6 animated:v5];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12 & 1;
}

- (void)_prepareEnabledItemType:(int)a3 withEnabledItems:(BOOL *)a4 withData:(id)a5 actions:(int)a6 itemAppearing:(BOOL *)a7 itemDisappearing:(BOOL *)a8
{
  v10 = *&a6;
  v12 = *&a3;
  v20 = a5;
  v14 = self->_itemViews[v12];
  v15 = v14;
  if (a4[v12])
  {
    if (v14)
    {
      [(UIStatusBarItemView *)v14 setAllowsUpdates:1];
    }

    else
    {
      v17 = [(UIStatusBarLayoutManager *)self foregroundView];
      v18 = +[UIStatusBarItem itemWithType:idiom:](UIStatusBarItem, "itemWithType:idiom:", v12, [v17 idiom]);

      if ([v18 appearsInRegion:self->_region])
      {
        v19 = [(UIStatusBarLayoutManager *)self _createViewForItem:v18 withData:v20 actions:v10];
        if (a7)
        {
          *a7 = 1;
        }
      }
    }
  }

  else if (v14)
  {
    [(UIStatusBarItemView *)v14 setAllowsUpdates:0];
    v16 = [(UIStatusBarItemView *)v15 isVisible];
    if (a8)
    {
      if (v16)
      {
        *a8 = 1;
      }
    }
  }
}

- (void)_positionNewItemViewsWithEnabledItems:(BOOL *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  [(UIStatusBarLayoutManager *)self _startPosition];
  v6 = v5;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [(UIStatusBarLayoutManager *)self _itemViewsSortedForLayout];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    v11 = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 superview];

        if (!v14)
        {
          [v13 setVisible:0];
          [(UIStatusBarLayoutManager *)self _frameForItemView:v13 startPosition:v11 & 1 firstView:v6];
          [v13 setFrame:?];
          WeakRetained = objc_loadWeakRetained(&self->_foregroundView);
          [WeakRetained addSubview:v13];
        }

        v16 = [v13 item];
        v17 = [v16 type];

        if (a3[v17])
        {
          [(UIStatusBarLayoutManager *)self _positionAfterPlacingItemView:v13 startPosition:v11 & 1 firstView:v6];
          v6 = v18;
          v11 = 0;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }
}

- (BOOL)_processDelta:(double)a3 forView:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (a3 != 0.0)
  {
    [v6 frame];
    [UIStatusBarLayoutManager _repositionedNewFrame:"_repositionedNewFrame:sizeDelta:" sizeDelta:?];
    [v7 setFrame:?];
    if ([v7 isVisible])
    {
      v8 = 1;
    }
  }

  return v8;
}

- (BOOL)_updateItemView:(id)a3 withData:(id)a4 actions:(int)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = *&a5;
  v10 = a3;
  v11 = a4;
  v12 = +[UIView areAnimationsEnabled];
  if (v6 && ([v10 animatesDataChange] & 1) == 0)
  {
    [UIView setAnimationsEnabled:0];
  }

  [v10 setStatusBarData:v11 actions:v7];
  v13 = [(UIStatusBarLayoutManager *)self _processDelta:v10 forView:?];
  [UIView setAnimationsEnabled:v12];

  return v13;
}

- (BOOL)prepareDoubleHeightItemWithEnabledItems:(BOOL *)a3
{
  v7 = 0;
  [(UIStatusBarLayoutManager *)self _prepareEnabledItemType:23 withEnabledItems:a3 withData:0 actions:0 itemAppearing:&v7 + 1 itemDisappearing:&v7];
  v5 = 0;
  if (HIBYTE(v7) == 1)
  {
    [(UIStatusBarLayoutManager *)self _positionNewItemViewsWithEnabledItems:a3];
    v5 = HIBYTE(v7);
  }

  return (v5 | v7) & 1;
}

- (void)reflowWithVisibleItems:(id)a3 duration:(double)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(UIStatusBarLayoutManager *)self _startPosition];
  v7 = v6;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(UIStatusBarLayoutManager *)self _itemViewsSortedForLayout];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    v12 = 1;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v14 item];
        v16 = [v5 containsObject:v15];

        if (v16)
        {
          [(UIStatusBarLayoutManager *)self _frameForItemView:v14 startPosition:v12 & 1 firstView:v7];
        }

        else
        {
          [v14 frame];
        }

        [v14 setVisible:v16 frame:? duration:?];
        if (v16)
        {
          [(UIStatusBarLayoutManager *)self _positionAfterPlacingItemView:v14 startPosition:v12 & 1 firstView:v7];
          v7 = v17;
          v12 = 0;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)removeDisabledItems:(BOOL *)a3
{
  v4 = 0;
  itemViews = self->_itemViews;
  do
  {
    v6 = itemViews[v4];
    v7 = v6;
    if (!a3[v4] && v6 && ![(UIStatusBarItemView *)v6 isVisible])
    {
      [(UIView *)v7 removeFromSuperview];
      v8 = itemViews[v4];
      itemViews[v4] = 0;
    }

    ++v4;
  }

  while (v4 != 52);
}

- (void)positionInvisibleItems
{
  v18 = *MEMORY[0x1E69E9840];
  [(UIStatusBarLayoutManager *)self _startPosition];
  v4 = v3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(UIStatusBarLayoutManager *)self _itemViewsSortedForLayout];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (([v11 isVisible] & 1) == 0)
        {
          [(UIStatusBarLayoutManager *)self _frameForItemView:v11 startPosition:v9 & 1 firstView:v4];
          [v11 setFrame:?];
        }

        [(UIStatusBarLayoutManager *)self _positionAfterPlacingItemView:v11 startPosition:v9 & 1 firstView:v4];
        v4 = v12;
        v9 = 0;
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v9 = 0;
    }

    while (v7);
  }
}

- (void)makeVisibleItemsPerformPendedActions
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(UIStatusBarLayoutManager *)self _itemViews];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 isVisible])
        {
          [v7 performPendedActions];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (double)sizeNeededForItem:(id)a3
{
  v4 = [(UIStatusBarLayoutManager *)self _viewForItem:a3];
  [(UIStatusBarLayoutManager *)self _sizeNeededForItemView:v4];
  v6 = v5;

  return v6;
}

- (double)sizeNeededForItems:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(UIStatusBarLayoutManager *)self sizeNeededForItem:*(*(&v12 + 1) + 8 * i)];
        v8 = v8 + v10;
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (void)clearOverlapFromItems:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
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

        v9 = [(UIStatusBarLayoutManager *)self _viewForItem:*(*(&v10 + 1) + 8 * v8)];
        [v9 setCurrentOverlap:0.0];
        [v9 resetContentOverlap];
        [(UIStatusBarLayoutManager *)self _processDelta:v9 forView:?];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (double)distributeOverlap:(double)a3 amongItems:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = 0.0;
  do
  {
    if (v7 >= a3)
    {
      break;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (!v8)
    {
      break;
    }

    v9 = v8;
    v10 = 0;
    v11 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = [(UIStatusBarLayoutManager *)self _viewForItem:*(*(&v31 + 1) + 8 * i)];
        [v13 currentOverlap];
        v15 = v14;
        [v13 maximumOverlap];
        if (v16 > v15 && v7 < a3)
        {
          [v13 setCurrentOverlap:v15 + 1.0];
          v7 = v7 + 1.0;
          v10 = 1;
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  while ((v10 & 1) != 0);
  if (v7 < a3)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = v6;
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [(UIStatusBarLayoutManager *)self _viewForItem:*(*(&v27 + 1) + 8 * j), v27];
          [v23 addContentOverlap:a3 - v7];
          v25 = v24;
          [(UIStatusBarLayoutManager *)self _processDelta:v23 forView:?];
          v7 = v7 - v25;
        }

        v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v20);
    }
  }

  return v7;
}

- (double)removeOverlap:(double)a3 fromItems:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = 0.0;
  do
  {
    if (v7 >= a3)
    {
      break;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (!v8)
    {
      break;
    }

    v9 = v8;
    v10 = 0;
    v11 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = [(UIStatusBarLayoutManager *)self _viewForItem:*(*(&v17 + 1) + 8 * i)];
        [v13 currentOverlap];
        if (v14 > 0.0 && v7 < a3)
        {
          [v13 setCurrentOverlap:v14 + -1.0];
          v7 = v7 + 1.0;
          v10 = 1;
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  while ((v10 & 1) != 0);

  return v7;
}

- (CGRect)rectForItems:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] arrayWithArray:a3];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __41__UIStatusBarLayoutManager_rectForItems___block_invoke;
  v33[3] = &unk_1E7122678;
  v33[4] = self;
  [v4 sortUsingComparator:v33];
  [(UIStatusBarLayoutManager *)self _startPosition];
  v6 = v5;
  v7 = *(MEMORY[0x1E695F058] + 16);
  v32.origin = *MEMORY[0x1E695F058];
  v32.size = v7;
  [(UIStatusBarLayoutManager *)self _setOrigin:&v32 forPoint:v5];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    v12 = 1;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [(UIStatusBarLayoutManager *)self _viewForItem:*(*(&v28 + 1) + 8 * v13), v28];
        [(UIStatusBarLayoutManager *)self _frameForItemView:v14 startPosition:v12 & 1 firstView:v6];
        v38.origin.x = v15;
        v38.origin.y = v16;
        v38.size.width = v17;
        v38.size.height = v18;
        v32 = CGRectUnion(v32, v38);
        [(UIStatusBarLayoutManager *)self _positionAfterPlacingItemView:v14 startPosition:v12 & 1 firstView:v6];
        v6 = v19;

        v12 = 0;
        ++v13;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
      v12 = 0;
    }

    while (v10);
  }

  v36 = CGRectStandardize(v32);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;

  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

uint64_t __41__UIStatusBarLayoutManager_rectForItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  if (v7 == 2)
  {
    v8 = [v5 compareCenterOrder:v6];
  }

  else if (v7 == 1)
  {
    v8 = [v5 compareRightOrder:v6];
  }

  else
  {
    if (v7)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v8 = [v5 compareLeftOrder:v6];
  }

  v9 = v8;
LABEL_9:

  return v9;
}

- (BOOL)itemIsVisible:(id)a3
{
  v3 = [(UIStatusBarLayoutManager *)self _viewForItem:a3];
  v4 = [v3 isVisible];

  return v4;
}

- (void)itemView:(id)a3 sizeChangedBy:(double)a4
{
  v5 = a3;
  [v5 frame];
  [UIStatusBarLayoutManager _repositionedNewFrame:"_repositionedNewFrame:sizeDelta:" sizeDelta:?];
  [v5 setFrame:?];
  v6 = [v5 isVisible];

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_foregroundView);
    [WeakRetained reflowItemViews:1];
  }
}

- (double)_sizeNeededForItemView:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [v4 frame];
    [(UIStatusBarLayoutManager *)self _dimensionForSize:v5, v6];
    v8 = v7;
    [v4 standardPadding];
    v10 = v8 + v9;
    [v4 extraLeftPadding];
    v12 = v10 + v11;
    [v4 extraRightPadding];
    v14 = v12 + v13;
    [v4 currentOverlap];
    v16 = v14 - v15;
    [v4 shadowPadding];
    v18 = v17;

    v19 = v16 - (v18 + v18);
  }

  else
  {
    v19 = 0.0;
  }

  return ceil(v19);
}

- (id)_viewForItem:(id)a3
{
  v3 = self->_itemViews[[a3 type]];

  return v3;
}

- (id)_createViewForItem:(id)a3 withData:(id)a4 actions:(int)a5
{
  v5 = *&a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 type];
  WeakRetained = objc_loadWeakRetained(&self->_foregroundView);
  v12 = [WeakRetained foregroundStyle];
  v13 = [UIStatusBarItemView createViewForItem:v9 withData:v8 actions:v5 foregroundStyle:v12];

  [v13 setLayoutManager:self];
  [v13 setPersistentAnimationsEnabled:self->_persistentAnimationsEnabled];
  objc_storeStrong(&self->_itemViews[v10], v13);
  region = self->_region;
  v15 = [(UIStatusBarLayoutManager *)self usesVerticalLayout];
  v16 = 8;
  if (v15)
  {
    v16 = 6;
  }

  v17 = 7;
  if (v15)
  {
    v17 = 5;
  }

  v18 = 7;
  if (v15)
  {
    v18 = 5;
  }

  if (!region)
  {
    v17 = v18;
  }

  if (region == 1)
  {
    v19 = v16;
  }

  else
  {
    v19 = v17;
  }

  [v13 setContentMode:v19];

  return v13;
}

- (id)_itemViews
{
  v3 = [MEMORY[0x1E695DF70] array];
  for (i = 16; i != 432; i += 8)
  {
    if (*(&self->super.isa + i))
    {
      [v3 addObject:?];
    }
  }

  return v3;
}

- (id)_itemViewsSortedForLayout
{
  v3 = [(UIStatusBarLayoutManager *)self _itemViews];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__UIStatusBarLayoutManager__itemViewsSortedForLayout__block_invoke;
  v5[3] = &unk_1E71226A0;
  v5[4] = self;
  [v3 sortUsingComparator:v5];

  return v3;
}

uint64_t __53__UIStatusBarLayoutManager__itemViewsSortedForLayout__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 item];
  v7 = [v5 item];

  v8 = *(*(a1 + 32) + 8);
  if (v8 == 2)
  {
    v9 = [v6 compareCenterOrder:v7];
  }

  else if (v8 == 1)
  {
    v9 = [v6 compareRightOrder:v7];
  }

  else
  {
    if (v8)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v9 = [v6 compareLeftOrder:v7];
  }

  v10 = v9;
LABEL_9:

  return v10;
}

- (double)_startPosition
{
  v32 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_foregroundView);
  [WeakRetained bounds];
  [(UIStatusBarLayoutManager *)self _dimensionForSize:v4, v5];
  v7 = v6;
  region = self->_region;
  if (region == 2)
  {
    v9 = v6 * 0.5;
    if ([(UIStatusBarLayoutManager *)self usesVerticalLayout])
    {
      v12 = [(UIStatusBarLayoutManager *)self assignedStartPosition];

      if (v12)
      {
        v13 = [(UIStatusBarLayoutManager *)self assignedStartPosition];
        [v13 floatValue];
      }

      v14 = [(UIStatusBarLayoutManager *)self _itemViewsSortedForLayout];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v28;
        v18 = 0.0;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v28 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v27 + 1) + 8 * i);
            if ([v20 isVisible])
            {
              [(UIStatusBarLayoutManager *)self _sizeNeededForItemView:v20];
              v18 = v18 + v21;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v16);
      }

      v22 = [v14 lastObject];
      [v22 standardPadding];
      v23 = [v14 lastObject];
      [v23 extraRightPadding];

      v24 = +[UIScreen _carScreen];
      UIRoundToScreenScale(v24);
      v9 = v25;
    }
  }

  else if (region == 1)
  {
    [WeakRetained rightEdgePadding];
    v9 = v7 - v11;
  }

  else
  {
    v9 = 0.0;
    if (!region)
    {
      [WeakRetained leftEdgePadding];
      v9 = v10;
    }
  }

  return floor(v9);
}

- (CGRect)_frameForItemView:(id)a3 startPosition:(double)a4 firstView:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    [v8 frame];
    v11 = v10;
    v13 = v12;
    v42.x = v14;
    v42.y = v15;
    *&v43 = v10;
    *(&v43 + 1) = v12;
  }

  else
  {
    v16 = *(MEMORY[0x1E695F058] + 16);
    v42 = *MEMORY[0x1E695F058];
    v43 = v16;
    v13 = *(&v16 + 1);
    v11 = *&v16;
  }

  [(UIStatusBarLayoutManager *)self _dimensionForSize:v11, v13, v42];
  v18 = v17;
  v19 = +[UIStatusBar _deviceUserInterfaceLayoutDirection];
  if (v19 && ![(UIStatusBarLayoutManager *)self usesVerticalLayout])
  {
    [v9 extraRightPadding];
    v21 = v23;
    [v9 extraLeftPadding];
  }

  else
  {
    [v9 extraLeftPadding];
    v21 = v20;
    [v9 extraRightPadding];
  }

  v24 = v22;
  region = self->_region;
  switch(region)
  {
    case 2:
      if ([(UIStatusBarLayoutManager *)self usesVerticalLayout])
      {
        [v9 extraLeftPadding];
        v27 = v28 + a4;
        goto LABEL_18;
      }

      if (v5)
      {
        v29 = a4 - floor(v18 * 0.5) + 2.0;
LABEL_20:
        [(UIStatusBarLayoutManager *)self _setOrigin:&v42 forPoint:v29];
        v13 = *(&v43 + 1);
        v11 = *&v43;
        break;
      }

      if (v19)
      {
        v27 = v24 + a4;
        goto LABEL_18;
      }

LABEL_19:
      [v9 currentRightOverlap];
      v32 = a4 - (v18 + v24) + v31;
      [v9 shadowPadding];
      v29 = v32 + v33;
      goto LABEL_20;
    case 1:
      goto LABEL_19;
    case 0:
      [v9 currentLeftOverlap];
      v27 = v21 + a4 - v26;
LABEL_18:
      [v9 shadowPadding];
      v29 = v27 - v30;
      goto LABEL_20;
  }

  v44.origin = v42;
  v44.size.width = v11;
  v44.size.height = v13;
  v45 = CGRectIntegral(v44);
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;

  v38 = x;
  v39 = y;
  v40 = width;
  v41 = height;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (double)_positionAfterPlacingItemView:(id)a3 startPosition:(double)a4 firstView:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = v8;
  v10 = 0.0;
  v11 = 0.0;
  if (v8)
  {
    [v8 frame];
    [(UIStatusBarLayoutManager *)self _dimensionForSize:v12, v13];
    v11 = v14 * 0.5;
  }

  v15 = +[UIStatusBar _deviceUserInterfaceLayoutDirection];
  region = self->_region;
  if (region != 2)
  {
    if (region != 1)
    {
      if (region)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    [(UIStatusBarLayoutManager *)self _sizeNeededForItemView:v9];
    goto LABEL_8;
  }

  v18 = v15;
  if ([(UIStatusBarLayoutManager *)self usesVerticalLayout])
  {
LABEL_10:
    [(UIStatusBarLayoutManager *)self _sizeNeededForItemView:v9];
LABEL_11:
    v10 = v17 + a4;
    goto LABEL_12;
  }

  if (!v5)
  {
    [(UIStatusBarLayoutManager *)self _sizeNeededForItemView:v9];
    if (v18)
    {
      goto LABEL_11;
    }

LABEL_8:
    v10 = a4 - v17;
    goto LABEL_12;
  }

  v20 = floor(v11);
  [(UIStatusBarLayoutManager *)self _sizeNeededForItemView:v9];
  if (v18)
  {
    v10 = a4 - v20 + v21;
  }

  else
  {
    v10 = v20 + a4 - v21;
  }

LABEL_12:

  return floor(v10);
}

- (CGRect)_repositionedNewFrame:(CGRect)a3 sizeDelta:(double)a4
{
  v5 = a3;
  region = self->_region;
  if (region == 1)
  {
    goto LABEL_4;
  }

  if (region == 2)
  {
    a4 = floor(a4 * 0.5);
LABEL_4:
    [(UIStatusBarLayoutManager *)self _addOriginDelta:&v5 toPoint:-a4];
    a3 = v5;
  }

  return CGRectIntegral(a3);
}

- (void)setPersistentAnimationsEnabled:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_persistentAnimationsEnabled != a3)
  {
    v3 = a3;
    self->_persistentAnimationsEnabled = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(UIStatusBarLayoutManager *)self _itemViews];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) setPersistentAnimationsEnabled:v3];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (id)visibleItemViewAtPoint:(CGPoint)a3 inForegroundView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = [(UIStatusBarLayoutManager *)self foregroundView];

  if (v9 != v8)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"UIStatusBarLayoutManager.m" lineNumber:620 description:{@"%s passed bogus foreground view %@", sel_getName(a2), v8}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_foregroundView);
  v11 = [WeakRetained foregroundStyle];
  [v11 standardPadding];
  v13 = v12;

  v14 = 0;
  v15 = 1.79769313e308;
  for (i = 16; i != 432; i += 8)
  {
    v17 = *(&self->super.isa + i);
    v18 = [v17 superview];
    if (v18 != v8 || ![v17 isVisible])
    {
      v27 = v15;
LABEL_12:

      v15 = v27;
      goto LABEL_13;
    }

    [v17 frame];
    IsEmpty = CGRectIsEmpty(v32);

    if (!IsEmpty)
    {
      [v8 convertPoint:v17 toView:{x, y}];
      v21 = v20;
      if ([v17 pointInside:0 withEvent:?])
      {
        goto LABEL_23;
      }

      [v17 bounds];
      MinX = CGRectGetMinX(v33);
      [v17 bounds];
      if (v21 <= MinX)
      {
        v27 = CGRectGetMinX(*&v23) - v21;
      }

      else if (v21 >= CGRectGetMaxX(*&v23))
      {
        [v17 bounds];
        v27 = v21 - CGRectGetMaxX(v34);
      }

      else
      {
        v27 = 1.79769313e308;
      }

      if (v27 < v13 && v27 < v15)
      {
        v18 = v14;
        v14 = v17;
        goto LABEL_12;
      }
    }

LABEL_13:
  }

  v14 = v14;
  v17 = v14;
LABEL_23:

  return v17;
}

- (UIStatusBarForegroundView)foregroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_foregroundView);

  return WeakRetained;
}

@end