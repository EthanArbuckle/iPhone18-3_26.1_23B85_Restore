@interface TUIAssistantButtonBarGroupView
- (BOOL)_canBeCollapsed;
- (BOOL)containsFlexibleItems;
- (BOOL)isCollapsed;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)_preferredSizeForItems:(id)items fittingWidth:(double)width;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)visibleButtons;
- (TUIAssistantButtonBarGroupView)initWithBarButtonItemGroup:(id)group visualProvider:(id)provider buttonProvider:(id)buttonProvider;
- (TUIButtonBarViewProvider)buttonProvider;
- (id)_buttonBarItemViewForBarButtonItem:(id)item;
- (id)_visibleItemsAllowingCollapse:(BOOL)collapse;
- (void)_ensureVisibleButtonsForVisibleItems;
- (void)_groupDidUpdateItems:(id)items removedItems:(id)removedItems;
- (void)_groupDidUpdateRepresentative:(id)representative fromRepresentative:(id)fromRepresentative;
- (void)_groupDidUpdateVisibility:(id)visibility;
- (void)_itemCustomViewDidChange:(id)change fromView:(id)view;
- (void)_itemDidChangeHiddenState:(id)state;
- (void)_itemDidChangeWidth:(id)width;
- (void)_itemStandardViewNeedsUpdate:(id)update;
- (void)_updateViewForBarButtonItem:(id)item;
- (void)layoutSubviews;
- (void)setBarButtonItemGroup:(id)group;
- (void)setCollapsed:(BOOL)collapsed;
- (void)setItemSpacing:(double)spacing;
@end

@implementation TUIAssistantButtonBarGroupView

- (TUIButtonBarViewProvider)buttonProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonProvider);

  return WeakRetained;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  visibleButtons = [(TUIAssistantButtonBarGroupView *)self visibleButtons];
  v9 = [visibleButtons count];

  if (v9 == 1 && (-[TUIAssistantButtonBarGroupView visibleButtons](self, "visibleButtons"), v10 = objc_claimAutoreleasedReturnValue(), [v10 firstObject], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "barButtonView"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, v12))
  {
    visibleButtons2 = [(TUIAssistantButtonBarGroupView *)self visibleButtons];
    firstObject = [visibleButtons2 firstObject];
    barButtonView = [firstObject barButtonView];
    [barButtonView _buttonBarHitRect];
    v19.x = x;
    v19.y = y;
    v16 = CGRectContainsPoint(v20, v19);
  }

  else
  {
    v18.receiver = self;
    v18.super_class = TUIAssistantButtonBarGroupView;
    v16 = [(TUIAssistantButtonBarGroupView *)&v18 pointInside:eventCopy withEvent:x, y];
  }

  return v16;
}

- (void)_itemDidChangeHiddenState:(id)state
{
  stateCopy = state;
  [(TUIAssistantButtonBarGroupView *)self setNeedsLayout];
  buttonProvider = [(TUIAssistantButtonBarGroupView *)self buttonProvider];
  [buttonProvider preferredSizeDidChangeForButtonBarItem:stateCopy];
}

- (void)_itemDidChangeWidth:(id)width
{
  widthCopy = width;
  [(TUIAssistantButtonBarGroupView *)self setNeedsLayout];
  buttonProvider = [(TUIAssistantButtonBarGroupView *)self buttonProvider];
  [buttonProvider preferredSizeDidChangeForButtonBarItem:widthCopy];
}

- (void)_itemStandardViewNeedsUpdate:(id)update
{
  updateCopy = update;
  [(TUIAssistantButtonBarGroupView *)self _updateViewForBarButtonItem:updateCopy];
  [(TUIAssistantButtonBarGroupView *)self setNeedsLayout];
  buttonProvider = [(TUIAssistantButtonBarGroupView *)self buttonProvider];
  [buttonProvider preferredSizeDidChangeForButtonBarItem:updateCopy];
}

- (void)_itemCustomViewDidChange:(id)change fromView:(id)view
{
  changeCopy = change;
  v8 = [(TUIAssistantButtonBarGroupView *)self _buttonBarItemViewForBarButtonItem:changeCopy];
  customView = [changeCopy customView];
  [v8 setCustomView:customView];

  buttonProvider = [(TUIAssistantButtonBarGroupView *)self buttonProvider];
  [buttonProvider preferredSizeDidChangeForButtonBarItem:changeCopy];
}

- (void)_updateViewForBarButtonItem:(id)item
{
  itemCopy = item;
  v4 = [(TUIAssistantButtonBarGroupView *)self _buttonBarItemViewForBarButtonItem:?];
  if (v4)
  {
    buttonProvider = [(TUIAssistantButtonBarGroupView *)self buttonProvider];
    barButtonItemGroup = [(TUIAssistantButtonBarGroupView *)self barButtonItemGroup];
    [buttonProvider configureButtonBarItemView:v4 forItem:itemCopy group:barButtonItemGroup];
  }
}

- (void)_groupDidUpdateVisibility:(id)visibility
{
  visibilityCopy = visibility;
  buttonProvider = [(TUIAssistantButtonBarGroupView *)self buttonProvider];
  [buttonProvider preferredSizeDidChangeForGroup:visibilityCopy];
}

- (void)_groupDidUpdateRepresentative:(id)representative fromRepresentative:(id)fromRepresentative
{
  representativeCopy = representative;
  buttonProvider = [(TUIAssistantButtonBarGroupView *)self buttonProvider];
  [buttonProvider preferredSizeDidChangeForGroup:representativeCopy];
}

- (void)_groupDidUpdateItems:(id)items removedItems:(id)removedItems
{
  itemsCopy = items;
  buttonProvider = [(TUIAssistantButtonBarGroupView *)self buttonProvider];
  [buttonProvider preferredSizeDidChangeForGroup:itemsCopy];
}

- (void)layoutSubviews
{
  v38 = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = TUIAssistantButtonBarGroupView;
  [(TUIAssistantButtonBarGroupView *)&v36 layoutSubviews];
  [(TUIAssistantButtonBarGroupView *)self _ensureVisibleButtonsForVisibleItems];
  [(TUIAssistantButtonBarGroupView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _visibleItems = [(TUIAssistantButtonBarGroupView *)self _visibleItems];
  [(TUIAssistantButtonBarGroupView *)self sizeThatFits:v8, v10];
  if (v12 <= v8)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = v8 / v12;
  }

  v14 = 0.0;
  if ([(TUIAssistantButtonBarGroupView *)self containsFlexibleItems])
  {
    [(TUIAssistantButtonBarGroupView *)self itemSpacing];
    v16 = v8 - v15 * ([_visibleItems count] - 1);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    _visibleItems2 = [(TUIAssistantButtonBarGroupView *)self _visibleItems];
    v18 = [_visibleItems2 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v33;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(_visibleItems2);
          }

          v23 = *(*(&v32 + 1) + 8 * i);
          buttonProvider = [(TUIAssistantButtonBarGroupView *)self buttonProvider];
          [buttonProvider preferredSizeForButtonBarItem:v23];
          v26 = v25;

          v27 = v16 - v26 * v13;
          if (v26 > 0.0)
          {
            v16 = v16 - v26 * v13;
          }

          else
          {
            ++v20;
          }
        }

        v19 = [_visibleItems2 countByEnumeratingWithState:&v32 objects:v37 count:{16, v27}];
      }

      while (v19);
      v28 = v20;
    }

    else
    {
      v28 = 0.0;
    }

    v14 = fmax(v16 / v28, 15.0);
  }

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = 0;
  effectiveUserInterfaceLayoutDirection = [(TUIAssistantButtonBarGroupView *)self effectiveUserInterfaceLayoutDirection];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __48__TUIAssistantButtonBarGroupView_layoutSubviews__block_invoke;
  v30[3] = &unk_1E72D7A90;
  *&v30[6] = v13;
  *&v30[7] = v14;
  v30[4] = self;
  v30[5] = v31;
  v30[8] = v4;
  v30[9] = v6;
  *&v30[10] = v8;
  *&v30[11] = v10;
  [_visibleItems enumerateObjectsWithOptions:2 * (effectiveUserInterfaceLayoutDirection == 1) usingBlock:v30];
  _Block_object_dispose(v31, 8);
}

void __48__TUIAssistantButtonBarGroupView_layoutSubviews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  v5 = [*(a1 + 32) visibleButtons];
  v6 = [v5 objectAtIndex:a3];

  v7 = [*(a1 + 32) buttonProvider];
  v8 = [*(a1 + 32) barButtonItemGroup];
  [v7 configureButtonBarItemView:v6 forItem:v15 group:v8];

  v9 = [v15 customView];
  if (v9)
  {
  }

  else if (objc_opt_respondsToSelector())
  {
    [v15 _setViewOwner:*(a1 + 32)];
  }

  v10 = [*(a1 + 32) buttonProvider];
  [v10 preferredSizeForButtonBarItem:v15];

  v11 = *(*(*(a1 + 40) + 8) + 24);
  UIRoundToViewScale();
  [v6 setFrame:{v11, 0.0, v12, *(a1 + 88)}];
  [v6 frame];
  Width = CGRectGetWidth(v17);
  [*(a1 + 32) itemSpacing];
  *(*(*(a1 + 40) + 8) + 24) = Width + v14 + *(*(*(a1 + 40) + 8) + 24);
}

- (id)_buttonBarItemViewForBarButtonItem:(id)item
{
  v17 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_visibleButtons;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        associatedItem = [v9 associatedItem];

        if (associatedItem == itemCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (NSArray)visibleButtons
{
  [(TUIAssistantButtonBarGroupView *)self _ensureVisibleButtonsForVisibleItems];
  visibleButtons = self->_visibleButtons;

  return visibleButtons;
}

- (void)_ensureVisibleButtonsForVisibleItems
{
  _visibleItems = [(TUIAssistantButtonBarGroupView *)self _visibleItems];
  while (1)
  {
    v3 = [(NSMutableArray *)self->_visibleButtons count];
    if (v3 <= [_visibleItems count])
    {
      break;
    }

    lastObject = [(NSMutableArray *)self->_visibleButtons lastObject];
    [lastObject removeFromSuperview];
    [(NSMutableArray *)self->_visibleButtons removeObject:lastObject];
  }

  v5 = [(NSMutableArray *)self->_visibleButtons count];
  if (v5 < [_visibleItems count])
  {
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v10 = [[TUIButtonBarItemView alloc] initWithFrame:v6, v7, v8, v9];
      [(NSMutableArray *)self->_visibleButtons addObject:v10];
      [(TUIAssistantButtonBarGroupView *)self addSubview:v10];

      v11 = [(NSMutableArray *)self->_visibleButtons count];
    }

    while (v11 < [_visibleItems count]);
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(TUIAssistantButtonBarGroupView *)self _visibleItems:fits.width];
  [(TUIAssistantButtonBarGroupView *)self _preferredSizeForItems:v5 fittingWidth:width];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)intrinsicContentSize
{
  barButtonItemGroup = [(TUIAssistantButtonBarGroupView *)self barButtonItemGroup];
  _shouldAlwaysCollapse = [barButtonItemGroup _shouldAlwaysCollapse];

  v5 = [(TUIAssistantButtonBarGroupView *)self _visibleItemsAllowingCollapse:_shouldAlwaysCollapse];
  [(TUIAssistantButtonBarGroupView *)self _preferredSizeForItems:v5 fittingWidth:3.40282347e38];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)_preferredSizeForItems:(id)items fittingWidth:(double)width
{
  v34 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v7 = [itemsCopy count];
  v8 = *MEMORY[0x1E69DE788];
  v9 = *MEMORY[0x1E69DE788];
  if (v7)
  {
    v10 = v7;
    [(TUIAssistantButtonBarGroupView *)self itemSpacing];
    v12 = v11;
    v13 = v10 - 1;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = itemsCopy;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      v18 = 0.0;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          WeakRetained = objc_loadWeakRetained(&self->_buttonProvider);
          [WeakRetained preferredSizeForButtonBarItem:{v20, v29}];
          v23 = v22;

          if (v23 <= 0.0)
          {
            v24 = 15.0;
          }

          else
          {
            v24 = v23;
          }

          v18 = v18 + v24;
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }

    else
    {
      v18 = 0.0;
    }

    v25 = v13;
    v9 = v18 + v12 * v13;
    if (v9 > width)
    {
      v26 = fmax((width - v18) / v25, 0.0);
      [(TUIAssistantButtonBarGroupView *)self setItemSpacing:v26];
      v9 = v18 + v26 * v25;
    }
  }

  v27 = v9;
  v28 = v8;
  result.height = v28;
  result.width = v27;
  return result;
}

- (BOOL)containsFlexibleItems
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _visibleItems = [(TUIAssistantButtonBarGroupView *)self _visibleItems];
  v4 = [_visibleItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(_visibleItems);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        WeakRetained = objc_loadWeakRetained(&self->_buttonProvider);
        [WeakRetained preferredSizeForButtonBarItem:v8];
        v11 = v10;

        if (v11 <= 0.0)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v5 = [_visibleItems countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_visibleItemsAllowingCollapse:(BOOL)collapse
{
  collapseCopy = collapse;
  v23[1] = *MEMORY[0x1E69E9840];
  if ([(TUIAssistantButtonBarGroupView *)self isCollapsed]&& [(TUIAssistantButtonBarGroupView *)self _canBeCollapsed]&& collapseCopy)
  {
    barButtonItemGroup = [(TUIAssistantButtonBarGroupView *)self barButtonItemGroup];
    representativeItem = [barButtonItemGroup representativeItem];
    _hidden = [representativeItem _hidden];

    if (_hidden)
    {
      array = MEMORY[0x1E695E0F0];
      goto LABEL_18;
    }

    barButtonItemGroup2 = [(TUIAssistantButtonBarGroupView *)self barButtonItemGroup];
    representativeItem2 = [barButtonItemGroup2 representativeItem];
    v23[0] = representativeItem2;
    array = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    barButtonItemGroup3 = [(TUIAssistantButtonBarGroupView *)self barButtonItemGroup];
    barButtonItemGroup2 = [barButtonItemGroup3 barButtonItems];

    v11 = [barButtonItemGroup2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(barButtonItemGroup2);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          if (([v15 _hidden] & 1) == 0)
          {
            [array addObject:v15];
          }
        }

        v12 = [barButtonItemGroup2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

LABEL_18:

  return array;
}

- (void)setItemSpacing:(double)spacing
{
  if (self->_itemSpacing != spacing)
  {
    self->_itemSpacing = spacing;
    [(TUIAssistantButtonBarGroupView *)self setNeedsLayout];
  }
}

- (void)setCollapsed:(BOOL)collapsed
{
  if (self->_collapsed != collapsed)
  {
    self->_collapsed = collapsed;
    [(TUIAssistantButtonBarGroupView *)self setNeedsLayout];
  }
}

- (BOOL)isCollapsed
{
  if (self->_collapsed)
  {
    return 1;
  }

  barButtonItemGroup = [(TUIAssistantButtonBarGroupView *)self barButtonItemGroup];
  _shouldAlwaysCollapse = [barButtonItemGroup _shouldAlwaysCollapse];

  return _shouldAlwaysCollapse;
}

- (void)setBarButtonItemGroup:(id)group
{
  groupCopy = group;
  if (self->_barButtonItemGroup != groupCopy)
  {
    v6 = groupCopy;
    objc_storeStrong(&self->_barButtonItemGroup, group);
    if (objc_opt_respondsToSelector())
    {
      [(UIBarButtonItemGroup *)v6 _setOwner:self];
    }

    [(TUIAssistantButtonBarGroupView *)self setNeedsLayout];
    groupCopy = v6;
  }
}

- (BOOL)_canBeCollapsed
{
  barButtonItemGroup = [(TUIAssistantButtonBarGroupView *)self barButtonItemGroup];
  representativeItem = [barButtonItemGroup representativeItem];
  if (representativeItem)
  {
    barButtonItemGroup2 = [(TUIAssistantButtonBarGroupView *)self barButtonItemGroup];
    barButtonItems = [barButtonItemGroup2 barButtonItems];
    v7 = [barButtonItems count] > 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (TUIAssistantButtonBarGroupView)initWithBarButtonItemGroup:(id)group visualProvider:(id)provider buttonProvider:(id)buttonProvider
{
  groupCopy = group;
  providerCopy = provider;
  buttonProviderCopy = buttonProvider;
  v16.receiver = self;
  v16.super_class = TUIAssistantButtonBarGroupView;
  v12 = [(TUIAssistantButtonBarGroupView *)&v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    visibleButtons = v12->_visibleButtons;
    v12->_visibleButtons = v13;

    objc_storeStrong(&v12->_barButtonItemGroup, group);
    if (objc_opt_respondsToSelector())
    {
      [(UIBarButtonItemGroup *)v12->_barButtonItemGroup _setOwner:v12];
    }

    objc_storeWeak(&v12->_buttonProvider, buttonProviderCopy);
    objc_storeStrong(&v12->_visualProvider, provider);
  }

  return v12;
}

@end