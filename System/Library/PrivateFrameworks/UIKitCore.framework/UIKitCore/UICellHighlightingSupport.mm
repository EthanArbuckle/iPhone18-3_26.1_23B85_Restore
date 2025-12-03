@interface UICellHighlightingSupport
- (UICellHighlightingSupport)initWithCell:(id)cell;
- (void)applyState:(unint64_t)state toView:(id)view;
- (void)cacheState:(unint64_t)state forView:(id)view;
- (void)dealloc;
- (void)highlightView:(id)view;
@end

@implementation UICellHighlightingSupport

- (UICellHighlightingSupport)initWithCell:(id)cell
{
  cellCopy = cell;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"attempt to initialize a UICellHighlightingSupport instance for a view (%@) that isn't a cell", cellCopy}];
    }
  }

  v8.receiver = self;
  v8.super_class = UICellHighlightingSupport;
  v5 = [(UICellHighlightingSupport *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cell, cellCopy);
    v6->_unhighlightedStates = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  }

  return v6;
}

- (void)dealloc
{
  unhighlightedStates = self->_unhighlightedStates;
  if (unhighlightedStates)
  {
    CFRelease(unhighlightedStates);
  }

  v4.receiver = self;
  v4.super_class = UICellHighlightingSupport;
  [(UICellHighlightingSupport *)&v4 dealloc];
}

- (void)cacheState:(unint64_t)state forView:(id)view
{
  v27 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (state)
  {
    WeakRetained = objc_loadWeakRetained(&self->_cell);
    v8 = [WeakRetained _shouldSaveOpaqueStateForView:viewCopy];

    if (v8)
    {
      unhighlightedStates = self->_unhighlightedStates;
      if (!unhighlightedStates)
      {
        self->_unhighlightedStates = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
        v10 = objc_loadWeakRetained(&self->_cell);
        [v10 _setMonitorsSubtree:1];

        unhighlightedStates = self->_unhighlightedStates;
      }

      v11 = CFDictionaryGetValue(unhighlightedStates, viewCopy);
      if (!v11)
      {
        v11 = objc_alloc_init(UITableViewCellUnhighlightedState);
      }

      if (state & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = objc_loadWeakRetained(&self->_cell);
          _isUsingOldStyleMultiselection = [v12 _isUsingOldStyleMultiselection];

          if ((_isUsingOldStyleMultiselection & 1) == 0)
          {
            -[UITableViewCellUnhighlightedState setHighlighted:](v11, "setHighlighted:", [viewCopy isHighlighted]);
          }
        }
      }

      if ((state & 2) != 0)
      {
        -[UITableViewCellUnhighlightedState setOpaque:](v11, "setOpaque:", [viewCopy isOpaque]);
      }

      if ((state & 4) != 0)
      {
        backgroundColor = [viewCopy backgroundColor];
        [(UITableViewCellUnhighlightedState *)v11 setBackgroundColor:backgroundColor];
      }

      CFDictionaryAddValue(self->_unhighlightedStates, viewCopy, v11);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = objc_loadWeakRetained(&self->_cell);
      selectedBackgroundView = [v15 selectedBackgroundView];

      if (selectedBackgroundView != viewCopy)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        subviews = [viewCopy subviews];
        v18 = [subviews countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v23;
          do
          {
            v21 = 0;
            do
            {
              if (*v23 != v20)
              {
                objc_enumerationMutation(subviews);
              }

              [(UICellHighlightingSupport *)self cacheState:state forView:*(*(&v22 + 1) + 8 * v21++)];
            }

            while (v19 != v21);
            v19 = [subviews countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v19);
        }
      }
    }
  }
}

- (void)applyState:(unint64_t)state toView:(id)view
{
  v21 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (state)
  {
    v7 = CFDictionaryGetValue(self->_unhighlightedStates, viewCopy);
    if (v7)
    {
      if (state & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([viewCopy _isUsingOldStyleMultiselection] & 1) == 0)
          {
            [viewCopy setHighlighted:{objc_msgSend(v7, "highlighted")}];
          }
        }
      }

      if ((state & 2) != 0)
      {
        [viewCopy setOpaque:{objc_msgSend(v7, "opaque")}];
      }

      if ((state & 4) != 0)
      {
        backgroundColor = [v7 backgroundColor];
        [viewCopy setBackgroundColor:backgroundColor];
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_cell);
      selectedBackgroundView = [WeakRetained selectedBackgroundView];

      if (selectedBackgroundView != viewCopy)
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        subviews = [viewCopy subviews];
        v12 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v17;
          do
          {
            v15 = 0;
            do
            {
              if (*v17 != v14)
              {
                objc_enumerationMutation(subviews);
              }

              [(UICellHighlightingSupport *)self applyState:state toView:*(*(&v16 + 1) + 8 * v15++)];
            }

            while (v13 != v15);
            v13 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
          }

          while (v13);
        }
      }
    }
  }
}

- (void)highlightView:(id)view
{
  v20 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  if ([WeakRetained _shouldSaveOpaqueStateForView:viewCopy] && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      [viewCopy setHighlighted:1];
    }
  }

  else
  {
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  subviews = [viewCopy subviews];
  v8 = [subviews countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(subviews);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = objc_loadWeakRetained(&self->_cell);
          selectedBackgroundView = [v13 selectedBackgroundView];

          if (selectedBackgroundView != viewCopy)
          {
            [(UICellHighlightingSupport *)self highlightView:v12];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [subviews countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

@end