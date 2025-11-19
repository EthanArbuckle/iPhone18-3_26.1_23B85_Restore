@interface UICellHighlightingSupport
- (UICellHighlightingSupport)initWithCell:(id)a3;
- (void)applyState:(unint64_t)a3 toView:(id)a4;
- (void)cacheState:(unint64_t)a3 forView:(id)a4;
- (void)dealloc;
- (void)highlightView:(id)a3;
@end

@implementation UICellHighlightingSupport

- (UICellHighlightingSupport)initWithCell:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"attempt to initialize a UICellHighlightingSupport instance for a view (%@) that isn't a cell", v4}];
    }
  }

  v8.receiver = self;
  v8.super_class = UICellHighlightingSupport;
  v5 = [(UICellHighlightingSupport *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cell, v4);
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

- (void)cacheState:(unint64_t)a3 forView:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_cell);
    v8 = [WeakRetained _shouldSaveOpaqueStateForView:v6];

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

      v11 = CFDictionaryGetValue(unhighlightedStates, v6);
      if (!v11)
      {
        v11 = objc_alloc_init(UITableViewCellUnhighlightedState);
      }

      if (a3 & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = objc_loadWeakRetained(&self->_cell);
          v13 = [v12 _isUsingOldStyleMultiselection];

          if ((v13 & 1) == 0)
          {
            -[UITableViewCellUnhighlightedState setHighlighted:](v11, "setHighlighted:", [v6 isHighlighted]);
          }
        }
      }

      if ((a3 & 2) != 0)
      {
        -[UITableViewCellUnhighlightedState setOpaque:](v11, "setOpaque:", [v6 isOpaque]);
      }

      if ((a3 & 4) != 0)
      {
        v14 = [v6 backgroundColor];
        [(UITableViewCellUnhighlightedState *)v11 setBackgroundColor:v14];
      }

      CFDictionaryAddValue(self->_unhighlightedStates, v6, v11);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v15 = objc_loadWeakRetained(&self->_cell);
      v16 = [v15 selectedBackgroundView];

      if (v16 != v6)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v17 = [v6 subviews];
        v18 = [v17 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
                objc_enumerationMutation(v17);
              }

              [(UICellHighlightingSupport *)self cacheState:a3 forView:*(*(&v22 + 1) + 8 * v21++)];
            }

            while (v19 != v21);
            v19 = [v17 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v19);
        }
      }
    }
  }
}

- (void)applyState:(unint64_t)a3 toView:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3)
  {
    v7 = CFDictionaryGetValue(self->_unhighlightedStates, v6);
    if (v7)
    {
      if (a3 & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 _isUsingOldStyleMultiselection] & 1) == 0)
          {
            [v6 setHighlighted:{objc_msgSend(v7, "highlighted")}];
          }
        }
      }

      if ((a3 & 2) != 0)
      {
        [v6 setOpaque:{objc_msgSend(v7, "opaque")}];
      }

      if ((a3 & 4) != 0)
      {
        v8 = [v7 backgroundColor];
        [v6 setBackgroundColor:v8];
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_cell);
      v10 = [WeakRetained selectedBackgroundView];

      if (v10 != v6)
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v11 = [v6 subviews];
        v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
                objc_enumerationMutation(v11);
              }

              [(UICellHighlightingSupport *)self applyState:a3 toView:*(*(&v16 + 1) + 8 * v15++)];
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
          }

          while (v13);
        }
      }
    }
  }
}

- (void)highlightView:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_cell);
  if ([WeakRetained _shouldSaveOpaqueStateForView:v4] && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      [v4 setHighlighted:1];
    }
  }

  else
  {
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v4 subviews];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = objc_loadWeakRetained(&self->_cell);
          v14 = [v13 selectedBackgroundView];

          if (v14 != v4)
          {
            [(UICellHighlightingSupport *)self highlightView:v12];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

@end