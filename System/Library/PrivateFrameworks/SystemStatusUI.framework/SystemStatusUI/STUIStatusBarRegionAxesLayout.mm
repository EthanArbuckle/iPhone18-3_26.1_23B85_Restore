@interface STUIStatusBarRegionAxesLayout
- (BOOL)canOverflowItems;
- (BOOL)fitsAllItems;
- (BOOL)mayFitDisplayItems:(id)a3 inContainerItem:(id)a4;
- (STUIStatusBarRegion)region;
- (void)_updateConstraints;
- (void)setDisplayItems:(id)a3;
- (void)setHorizontalLayout:(id)a3;
- (void)setRegion:(id)a3;
- (void)setVerticalLayout:(id)a3;
@end

@implementation STUIStatusBarRegionAxesLayout

- (void)_updateConstraints
{
  v39 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_horizontalConstraints count])
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:self->_horizontalConstraints];
  }

  if ([(NSArray *)self->_verticalConstraints count])
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:self->_verticalConstraints];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = self->_layoutGuides;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    do
    {
      v7 = 0;
      do
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v33 + 1) + 8 * v7++) _ui_removeFromParentLayoutItem];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v5);
  }

  v8 = [(STUIStatusBarRegionAxesLayout *)self region];
  v9 = [v8 containerItem];

  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [MEMORY[0x277CBEB18] array];
  if (v9 && [(NSArray *)self->_displayItems count])
  {
    displayItems = self->_displayItems;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __51__STUIStatusBarRegionAxesLayout__updateConstraints__block_invoke;
    v31[3] = &unk_279D37E98;
    v14 = v9;
    v32 = v14;
    [(NSArray *)displayItems enumerateObjectsUsingBlock:v31];
    v15 = [(STUIStatusBarRegionAxisLayout *)self->_horizontalLayout constraintsForDisplayItems:self->_displayItems layoutGuides:v10 inContainerItem:v14 axis:0];
    [(NSArray *)v11 addObjectsFromArray:v15];

    v16 = [(STUIStatusBarRegionAxisLayout *)self->_verticalLayout constraintsForDisplayItems:self->_displayItems layoutGuides:v10 inContainerItem:v14 axis:1];
    [(NSArray *)v12 addObjectsFromArray:v16];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = v10;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        v21 = 0;
        do
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [v14 _ui_addSubLayoutItem:{*(*(&v27 + 1) + 8 * v21++), v27}];
        }

        while (v19 != v21);
        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v19);
    }

    [MEMORY[0x277CCAAD0] activateConstraints:v11];
    [MEMORY[0x277CCAAD0] activateConstraints:v12];
  }

  horizontalConstraints = self->_horizontalConstraints;
  self->_horizontalConstraints = v11;
  v23 = v11;

  verticalConstraints = self->_verticalConstraints;
  self->_verticalConstraints = v12;
  v25 = v12;

  layoutGuides = self->_layoutGuides;
  self->_layoutGuides = v10;
}

- (STUIStatusBarRegion)region
{
  WeakRetained = objc_loadWeakRetained(&self->_region);

  return WeakRetained;
}

void __51__STUIStatusBarRegionAxesLayout__updateConstraints__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 layoutItem];
  [v3 set_ui_usesManualLayout:0];
  [*(a1 + 32) _ui_addSubLayoutItem:v3];
}

- (BOOL)fitsAllItems
{
  v3 = [(STUIStatusBarRegionAxesLayout *)self displayItems];
  v4 = [v3 count];

  if (!v4)
  {
    return 1;
  }

  v5 = [(STUIStatusBarRegionAxesLayout *)self region];
  v6 = [v5 containerItem];
  [v6 _ui_bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if ([(STUIStatusBarRegionAxisLayout *)self->_horizontalLayout canOverflowItems])
  {
    v15 = -0.001;
  }

  else
  {
    v15 = -1000000.0;
  }

  if ([(STUIStatusBarRegionAxisLayout *)self->_verticalLayout canOverflowItems])
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
  v21 = [(STUIStatusBarRegionAxesLayout *)self displayItems];
  v22 = [v21 firstObject];
  v23 = [v22 layoutItem];
  [v23 _ui_frame];
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
    v28 = [(STUIStatusBarRegionAxesLayout *)self displayItems];
    v29 = [v28 lastObject];
    v30 = [v29 layoutItem];
    [v30 _ui_frame];
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

- (void)setRegion:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_region);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_region, obj);
    [(STUIStatusBarRegionAxesLayout *)self _updateConstraints];
    v5 = obj;
  }
}

- (void)setDisplayItems:(id)a3
{
  v5 = a3;
  p_displayItems = &self->_displayItems;
  if (self->_displayItems != v5)
  {
    v7 = v5;
    objc_storeStrong(p_displayItems, a3);
    p_displayItems = [(STUIStatusBarRegionAxesLayout *)self _updateConstraints];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](p_displayItems, v5);
}

- (void)setHorizontalLayout:(id)a3
{
  v5 = a3;
  p_horizontalLayout = &self->_horizontalLayout;
  if (self->_horizontalLayout != v5)
  {
    v7 = v5;
    objc_storeStrong(p_horizontalLayout, a3);
    p_horizontalLayout = [(STUIStatusBarRegionAxesLayout *)self _updateConstraints];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](p_horizontalLayout, v5);
}

- (void)setVerticalLayout:(id)a3
{
  v5 = a3;
  p_verticalLayout = &self->_verticalLayout;
  if (self->_verticalLayout != v5)
  {
    v7 = v5;
    objc_storeStrong(p_verticalLayout, a3);
    p_verticalLayout = [(STUIStatusBarRegionAxesLayout *)self _updateConstraints];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](p_verticalLayout, v5);
}

- (BOOL)mayFitDisplayItems:(id)a3 inContainerItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ((objc_opt_respondsToSelector() & 1) == 0 || [(STUIStatusBarRegionAxisLayout *)self->_horizontalLayout mayFitDisplayItems:v6 inContainerItem:v7 axis:0]) && ((objc_opt_respondsToSelector() & 1) == 0 || [(STUIStatusBarRegionAxisLayout *)self->_verticalLayout mayFitDisplayItems:v6 inContainerItem:v7 axis:1]);

  return v8;
}

- (BOOL)canOverflowItems
{
  if (([(STUIStatusBarRegionAxisLayout *)self->_horizontalLayout canOverflowItems]& 1) != 0)
  {
    return 1;
  }

  verticalLayout = self->_verticalLayout;

  return [(STUIStatusBarRegionAxisLayout *)verticalLayout canOverflowItems];
}

@end