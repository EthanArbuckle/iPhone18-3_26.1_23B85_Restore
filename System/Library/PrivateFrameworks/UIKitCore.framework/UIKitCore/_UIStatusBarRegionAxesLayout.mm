@interface _UIStatusBarRegionAxesLayout
- (BOOL)canOverflowItems;
- (BOOL)fitsAllItems;
- (BOOL)mayFitDisplayItems:(id)items inContainerItem:(id)item;
- (_UIStatusBarRegion)region;
- (void)_updateConstraints;
- (void)setDisplayItems:(id)items;
- (void)setHorizontalLayout:(id)layout;
- (void)setRegion:(id)region;
- (void)setVerticalLayout:(id)layout;
@end

@implementation _UIStatusBarRegionAxesLayout

- (void)setRegion:(id)region
{
  obj = region;
  WeakRetained = objc_loadWeakRetained(&self->_region);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_region, obj);
    [(_UIStatusBarRegionAxesLayout *)self _updateConstraints];
    v5 = obj;
  }
}

- (void)setDisplayItems:(id)items
{
  itemsCopy = items;
  if (self->_displayItems != itemsCopy)
  {
    v6 = itemsCopy;
    objc_storeStrong(&self->_displayItems, items);
    [(_UIStatusBarRegionAxesLayout *)self _updateConstraints];
    itemsCopy = v6;
  }
}

- (void)setHorizontalLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_horizontalLayout != layoutCopy)
  {
    v6 = layoutCopy;
    objc_storeStrong(&self->_horizontalLayout, layout);
    [(_UIStatusBarRegionAxesLayout *)self _updateConstraints];
    layoutCopy = v6;
  }
}

- (void)setVerticalLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_verticalLayout != layoutCopy)
  {
    v6 = layoutCopy;
    objc_storeStrong(&self->_verticalLayout, layout);
    [(_UIStatusBarRegionAxesLayout *)self _updateConstraints];
    layoutCopy = v6;
  }
}

- (void)_updateConstraints
{
  v42 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_horizontalConstraints count])
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:self->_horizontalConstraints];
  }

  if ([(NSArray *)self->_verticalConstraints count])
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:self->_verticalConstraints];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = self->_layoutGuides;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v37;
    do
    {
      v8 = 0;
      do
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v36 + 1) + 8 * v8++) _ui_removeFromParentLayoutItem];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v6);
  }

  region = [(_UIStatusBarRegionAxesLayout *)self region];
  containerItem = [region containerItem];

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  if (containerItem && [(NSArray *)self->_displayItems count])
  {
    displayItems = self->_displayItems;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __50___UIStatusBarRegionAxesLayout__updateConstraints__block_invoke;
    v34[3] = &unk_1E711FD88;
    v15 = containerItem;
    v35 = v15;
    [(NSArray *)displayItems enumerateObjectsUsingBlock:v34];
    if (!self->_horizontalLayout)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarRegionAxesLayout.m" lineNumber:94 description:{@"%@ has no horizontal layout", self}];
    }

    if (!self->_verticalLayout)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIStatusBarRegionAxesLayout.m" lineNumber:95 description:{@"%@ has no vertical layout", self}];
    }

    v16 = [(_UIStatusBarRegionAxisLayout *)self->_horizontalLayout constraintsForDisplayItems:self->_displayItems layoutGuides:array inContainerItem:v15 axis:0];
    [(NSArray *)array2 addObjectsFromArray:v16];

    v17 = [(_UIStatusBarRegionAxisLayout *)self->_verticalLayout constraintsForDisplayItems:self->_displayItems layoutGuides:array inContainerItem:v15 axis:1];
    [(NSArray *)array3 addObjectsFromArray:v17];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = array;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        v22 = 0;
        do
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [v15 _ui_addSubLayoutItem:*(*(&v30 + 1) + 8 * v22++)];
        }

        while (v20 != v22);
        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v20);
    }

    [MEMORY[0x1E69977A0] activateConstraints:array2];
    [MEMORY[0x1E69977A0] activateConstraints:array3];
  }

  horizontalConstraints = self->_horizontalConstraints;
  self->_horizontalConstraints = array2;
  v24 = array2;

  verticalConstraints = self->_verticalConstraints;
  self->_verticalConstraints = array3;
  v26 = array3;

  layoutGuides = self->_layoutGuides;
  self->_layoutGuides = array;
}

- (BOOL)mayFitDisplayItems:(id)items inContainerItem:(id)item
{
  itemsCopy = items;
  itemCopy = item;
  v8 = ((objc_opt_respondsToSelector() & 1) == 0 || [(_UIStatusBarRegionAxisLayout *)self->_horizontalLayout mayFitDisplayItems:itemsCopy inContainerItem:itemCopy axis:0]) && ((objc_opt_respondsToSelector() & 1) == 0 || [(_UIStatusBarRegionAxisLayout *)self->_verticalLayout mayFitDisplayItems:itemsCopy inContainerItem:itemCopy axis:1]);

  return v8;
}

- (BOOL)fitsAllItems
{
  displayItems = [(_UIStatusBarRegionAxesLayout *)self displayItems];
  v4 = [displayItems count];

  if (!v4)
  {
    return 1;
  }

  region = [(_UIStatusBarRegionAxesLayout *)self region];
  containerItem = [region containerItem];
  [containerItem _ui_bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if ([(_UIStatusBarRegionAxisLayout *)self->_horizontalLayout canOverflowItems])
  {
    v15 = -0.001;
  }

  else
  {
    v15 = -1000000.0;
  }

  if ([(_UIStatusBarRegionAxisLayout *)self->_verticalLayout canOverflowItems])
  {
    v16 = -0.001;
  }

  else
  {
    v16 = -1000000.0;
  }

  v37.origin.x = v8;
  v37.origin.y = v10;
  v37.size.width = v12;
  v37.size.height = v14;
  v38 = CGRectInset(v37, v15, v16);
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  displayItems2 = [(_UIStatusBarRegionAxesLayout *)self displayItems];
  firstObject = [displayItems2 firstObject];
  layoutItem = [firstObject layoutItem];
  [layoutItem _ui_frame];
  v41.origin.x = v24;
  v41.origin.y = v25;
  v41.size.width = v26;
  v41.size.height = v27;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  if (CGRectContainsRect(v39, v41))
  {
    displayItems3 = [(_UIStatusBarRegionAxesLayout *)self displayItems];
    lastObject = [displayItems3 lastObject];
    layoutItem2 = [lastObject layoutItem];
    [layoutItem2 _ui_frame];
    v42.origin.x = v31;
    v42.origin.y = v32;
    v42.size.width = v33;
    v42.size.height = v34;
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v35 = CGRectContainsRect(v40, v42);
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (BOOL)canOverflowItems
{
  if (([(_UIStatusBarRegionAxisLayout *)self->_horizontalLayout canOverflowItems]& 1) != 0)
  {
    return 1;
  }

  verticalLayout = self->_verticalLayout;

  return [(_UIStatusBarRegionAxisLayout *)verticalLayout canOverflowItems];
}

- (_UIStatusBarRegion)region
{
  WeakRetained = objc_loadWeakRetained(&self->_region);

  return WeakRetained;
}

@end