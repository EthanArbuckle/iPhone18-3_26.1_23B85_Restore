@interface SKUIIndexBarControl
- (BOOL)_reloadLineSpacing;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_visibleBounds;
- (CGSize)_sizeForEntries:(id)a3;
- (CGSize)_sizeForEntryAtIndexPath:(id)a3;
- (CGSize)_totalSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIIndexBarControl)initWithCoder:(id)a3;
- (SKUIIndexBarControl)initWithFrame:(CGRect)a3;
- (SKUIIndexBarControlDataSource)dataSource;
- (SKUIIndexBarControlDelegate)delegate;
- (UIEdgeInsets)contentEdgeInsets;
- (UIEdgeInsets)hitTestEdgeInsets;
- (id)_allEntries;
- (id)_allRequiredEntries;
- (id)_combinedEntry;
- (id)_displayEntries;
- (id)_displayEntriesThatFitInViewForGroupedEntries;
- (id)_entryAtIndexPath:(id)a3;
- (int64_t)_numberOfEntriesInSection:(int64_t)a3;
- (int64_t)_numberOfSections;
- (int64_t)_totalEntryCount;
- (void)_configureNewEntry:(id)a3;
- (void)_enumerateEntryIndexPathsUsingBlock:(id)a3;
- (void)_invalidateDisplayEntries;
- (void)_invalidateForChangedLayoutProperties;
- (void)_sendSelectionForTouch:(id)a3 withEvent:(id)a4;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)drawRect:(CGRect)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)reloadCombinedEntry;
- (void)reloadData;
- (void)reloadEntryAtIndexPath:(id)a3;
- (void)reloadSections:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setContentEdgeInsets:(UIEdgeInsets)a3;
- (void)setDataSource:(id)a3;
- (void)setDefaultTextAttributes:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setTransform:(CGAffineTransform *)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SKUIIndexBarControl

- (SKUIIndexBarControl)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SKUIIndexBarControl;
  v3 = [(SKUIIndexBarControl *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    _SKUIIndexBarControlInitialization(v3);
  }

  return v4;
}

- (SKUIIndexBarControl)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SKUIIndexBarControl;
  v3 = [(SKUIIndexBarControl *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    _SKUIIndexBarControlInitialization(v3);
  }

  return v4;
}

- (void)drawRect:(CGRect)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = [(SKUIIndexBarControl *)self _displayEntries:a3.origin.x];
  [(SKUIIndexBarControl *)self _visibleBounds];
  width = v35.size.width;
  height = v35.size.height;
  y = v35.origin.y;
  x = v35.origin.x;
  MinY = CGRectGetMinY(v35);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        [v13 size];
        v15 = v14;
        v36.origin.x = x;
        v36.origin.y = y;
        v36.size.width = width;
        v36.size.height = height;
        CGRectGetMinX(v36);
        v16 = [(SKUIIndexBarControl *)self traitCollection];
        [v16 displayScale];
        v26 = v17;
        UIRectCenteredXInRectScale();
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        [v13 _drawInRect:{v19, v21, v23, v25, v26}];
        MinY = MinY + v15 + self->_lineSpacing;
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(SKUIIndexBarControl *)self bounds];
  top = self->_hitTestEdgeInsets.top;
  left = self->_hitTestEdgeInsets.left;
  v10 = v9 + left;
  v12 = v11 + top;
  v14 = v13 - (left + self->_hitTestEdgeInsets.right);
  v16 = v15 - (top + self->_hitTestEdgeInsets.bottom);
  v17 = x;
  v18 = y;

  return CGRectContainsPoint(*&v10, *&v17);
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SKUIIndexBarControl *)self bounds];
  v9 = v8;
  v11 = v10;
  v15.receiver = self;
  v15.super_class = SKUIIndexBarControl;
  [(SKUIIndexBarControl *)&v15 setBounds:x, y, width, height];
  [(SKUIIndexBarControl *)self bounds];
  if (v9 != v13 || v11 != v12)
  {
    [(SKUIIndexBarControl *)self _invalidateForChangedLayoutProperties];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SKUIIndexBarControl *)self frame];
  v9 = v8;
  v11 = v10;
  v15.receiver = self;
  v15.super_class = SKUIIndexBarControl;
  [(SKUIIndexBarControl *)&v15 setFrame:x, y, width, height];
  [(SKUIIndexBarControl *)self frame];
  if (v9 != v13 || v11 != v12)
  {
    [(SKUIIndexBarControl *)self _invalidateForChangedLayoutProperties];
  }
}

- (void)setTransform:(CGAffineTransform *)a3
{
  memset(&v9, 0, sizeof(v9));
  [(SKUIIndexBarControl *)self transform];
  v8.receiver = self;
  v8.super_class = SKUIIndexBarControl;
  v5 = *&a3->c;
  *&t2.a = *&a3->a;
  *&t2.c = v5;
  *&t2.tx = *&a3->tx;
  [(SKUIIndexBarControl *)&v8 setTransform:&t2];
  [(SKUIIndexBarControl *)self transform];
  v6 = v9;
  if (!CGAffineTransformEqualToTransform(&v6, &t2))
  {
    [(SKUIIndexBarControl *)self _invalidateForChangedLayoutProperties];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(SKUIIndexBarControl *)self _totalSize];
  if (width < v5)
  {
    v5 = width;
  }

  v7 = round(v5);
  if (height < v6)
  {
    v6 = height;
  }

  v8 = round(v6);
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)tintColorDidChange
{
  v15 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = SKUIIndexBarControl;
  [(SKUIIndexBarControl *)&v13 tintColorDidChange];
  v3 = [(SKUIIndexBarControl *)self tintColor];
  if ([(NSMapTable *)self->_indexPathToEntryMapTable count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [(NSMapTable *)self->_indexPathToEntryMapTable objectEnumerator];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
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

          [*(*(&v9 + 1) + 8 * v8++) setTintColor:v3];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
      }

      while (v6);
    }
  }

  [(SKUIIndexBarControl *)self setNeedsDisplay];
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = SKUIIndexBarControl;
  v4 = a3;
  [(SKUIIndexBarControl *)&v10 traitCollectionDidChange:v4];
  v5 = [(SKUIIndexBarControl *)self traitCollection:v10.receiver];
  [v5 displayScale];
  v7 = v6;
  [v4 displayScale];
  v9 = v8;

  if (vabdd_f64(v7, v9) > 0.00000011920929)
  {
    [(SKUIIndexBarControl *)self setNeedsDisplay];
  }
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = SKUIIndexBarControl;
  v6 = a4;
  v7 = a3;
  [(SKUIIndexBarControl *)&v9 beginTrackingWithTouch:v7 withEvent:v6];
  [(SKUIIndexBarControl *)self _sendSelectionForTouch:v7 withEvent:v6, v9.receiver, v9.super_class];

  return 1;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = SKUIIndexBarControl;
  v6 = a4;
  v7 = a3;
  [(SKUIIndexBarControl *)&v9 continueTrackingWithTouch:v7 withEvent:v6];
  [(SKUIIndexBarControl *)self _sendSelectionForTouch:v7 withEvent:v6, v9.receiver, v9.super_class];

  return 1;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = SKUIIndexBarControl;
  v6 = a4;
  v7 = a3;
  [(SKUIIndexBarControl *)&v9 endTrackingWithTouch:v7 withEvent:v6];
  [(SKUIIndexBarControl *)self _sendSelectionForTouch:v7 withEvent:v6, v9.receiver, v9.super_class];

  lastSelectedIndexPath = self->_lastSelectedIndexPath;
  self->_lastSelectedIndexPath = 0;

  self->_didSendPastBottom = 0;
  self->_didSendPastTop = 0;
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v5.receiver = self;
  v5.super_class = SKUIIndexBarControl;
  [(SKUIIndexBarControl *)&v5 cancelTrackingWithEvent:a3];
  lastSelectedIndexPath = self->_lastSelectedIndexPath;
  self->_lastSelectedIndexPath = 0;

  self->_didSendPastBottom = 0;
  self->_didSendPastTop = 0;
}

- (void)setContentEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentEdgeInsets.top, v3), vceqq_f64(*&self->_contentEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentEdgeInsets = a3;
    self->_hasValidTotalSize = 0;
    [(SKUIIndexBarControl *)self _invalidateDisplayEntries];
  }
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_dataSource, obj);
    *&self->_dataSourceDelegateFlags = *&self->_dataSourceDelegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;

    v6 = objc_loadWeakRetained(&self->_dataSource);
    if (objc_opt_respondsToSelector())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *&self->_dataSourceDelegateFlags = *&self->_dataSourceDelegateFlags & 0xFD | v7;

    [(SKUIIndexBarControl *)self reloadData];
  }
}

- (void)setDefaultTextAttributes:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  defaultTextAttributes = self->_defaultTextAttributes;
  if (defaultTextAttributes != v5 && ![(NSDictionary *)defaultTextAttributes isEqualToDictionary:v5])
  {
    objc_storeStrong(&self->_defaultTextAttributes, a3);
    if ([(NSMapTable *)self->_indexPathToEntryMapTable count])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = [(NSMapTable *)self->_indexPathToEntryMapTable objectEnumerator];
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v11 = *v15;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v14 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v13 setDefaultTextAttributes:self->_defaultTextAttributes];
              v10 = 1;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);

        if (v10)
        {
          [(SKUIIndexBarControl *)self setNeedsDisplay];
        }
      }

      else
      {
      }
    }
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_dataSourceDelegateFlags = *&self->_dataSourceDelegateFlags & 0xFB | v6;

    v7 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    *&self->_dataSourceDelegateFlags = *&self->_dataSourceDelegateFlags & 0xF7 | v8;

    v9 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v10 = 16;
    }

    else
    {
      v10 = 0;
    }

    *&self->_dataSourceDelegateFlags = *&self->_dataSourceDelegateFlags & 0xEF | v10;
  }
}

- (void)reloadCombinedEntry
{
  combinedEntry = self->_combinedEntry;
  self->_combinedEntry = 0;

  if (self->_hasValidCombinedEntry)
  {
    self->_hasValidCombinedEntry = 0;

    [(SKUIIndexBarControl *)self _invalidateDisplayEntries];
  }
}

- (void)reloadData
{
  combinedEntry = self->_combinedEntry;
  self->_combinedEntry = 0;

  self->_hasValidCombinedEntry = 0;
  self->_hasValidNumberOfSections = 0;
  self->_hasValidTotalSize = 0;
  indexPathToEntryMapTable = self->_indexPathToEntryMapTable;
  self->_indexPathToEntryMapTable = 0;

  sectionIndexToNumberOfEntriesMapTable = self->_sectionIndexToNumberOfEntriesMapTable;
  self->_sectionIndexToNumberOfEntriesMapTable = 0;

  self->_hasValidTotalEntryCount = 0;
  self->_totalEntryCount = 0;

  [(SKUIIndexBarControl *)self _invalidateDisplayEntries];
}

- (void)reloadEntryAtIndexPath:(id)a3
{
  v6 = a3;
  if (v6)
  {
    sectionIndexToNumberOfEntriesMapTable = self->_sectionIndexToNumberOfEntriesMapTable;
    self->_sectionIndexToNumberOfEntriesMapTable = 0;

    v5 = [(NSMapTable *)self->_sectionIndexToNumberOfEntriesMapTable objectForKey:v6];

    if (v5)
    {
      [(NSMapTable *)self->_sectionIndexToNumberOfEntriesMapTable removeObjectForKey:v6];
      self->_hasValidTotalSize = 0;
      [(SKUIIndexBarControl *)self _invalidateDisplayEntries];
    }
  }
}

- (void)reloadSections:(id)a3
{
  v4 = a3;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__SKUIIndexBarControl_reloadSections___block_invoke;
  v5[3] = &unk_2781FCC68;
  v5[4] = self;
  v5[5] = &v6;
  [v4 enumerateIndexesUsingBlock:v5];
  if (*(v7 + 24) == 1)
  {
    self->_hasValidTotalEntryCount = 0;
    self->_totalEntryCount = 0;
    self->_hasValidTotalSize = 0;
    [(SKUIIndexBarControl *)self _invalidateDisplayEntries];
  }

  _Block_object_dispose(&v6, 8);
}

void __38__SKUIIndexBarControl_reloadSections___block_invoke(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = *(*(a1 + 32) + 488);
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        if ([v10 section] == a2)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * j);
        *(*(*(a1 + 40) + 8) + 24) = 1;
        [*(*(a1 + 32) + 488) removeObjectForKey:{v16, v21}];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v13);
  }

  if (![*(*(a1 + 32) + 488) count])
  {
    v17 = *(a1 + 32);
    v18 = *(v17 + 488);
    *(v17 + 488) = 0;
  }

  if (*(*(a1 + 32) + 520))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    NSMapRemove(*(*(a1 + 32) + 520), (a2 + 1));
    if (![*(*(a1 + 32) + 520) count])
    {
      v19 = *(a1 + 32);
      v20 = *(v19 + 520);
      *(v19 + 520) = 0;
    }
  }
}

- (id)_allEntries
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__46;
  v9 = __Block_byref_object_dispose__46;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__SKUIIndexBarControl__allEntries__block_invoke;
  v4[3] = &unk_2781FD440;
  v4[4] = self;
  v4[5] = &v5;
  [(SKUIIndexBarControl *)self _enumerateEntryIndexPathsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __34__SKUIIndexBarControl__allEntries__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v8;
  }

  v7 = [*(a1 + 32) _entryAtIndexPath:v3];
  if (v7)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
  }
}

- (id)_allRequiredEntries
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__46;
  v9 = __Block_byref_object_dispose__46;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__SKUIIndexBarControl__allRequiredEntries__block_invoke;
  v4[3] = &unk_2781FD440;
  v4[4] = self;
  v4[5] = &v5;
  [(SKUIIndexBarControl *)self _enumerateEntryIndexPathsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __42__SKUIIndexBarControl__allRequiredEntries__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v9;
  }

  v7 = [*(a1 + 32) _entryAtIndexPath:v3];
  v8 = v7;
  if (v7 && [v7 visibilityPriority] == 1000)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
  }
}

- (void)_enumerateEntryIndexPathsUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SKUIIndexBarControl *)self _numberOfSections];
    v13 = 0;
    if (v5 >= 1)
    {
      v6 = v5;
      v7 = 0;
      do
      {
        v8 = [(SKUIIndexBarControl *)self _numberOfEntriesInSection:v7];
        v9 = v13;
        if (v8 >= 1 && (v13 & 1) == 0)
        {
          v10 = v8;
          v11 = 1;
          do
          {
            v12 = [MEMORY[0x277CCAA70] indexPathForItem:v11 - 1 inSection:v7];
            v4[2](v4, v12, &v13);

            v9 = v13;
            if (v11 >= v10)
            {
              break;
            }

            ++v11;
          }

          while ((v13 & 1) == 0);
        }

        ++v7;
      }

      while (v7 < v6 && (v9 & 1) == 0);
    }
  }
}

- (int64_t)_numberOfEntriesInSection:(int64_t)a3
{
  sectionIndexToNumberOfEntriesMapTable = self->_sectionIndexToNumberOfEntriesMapTable;
  if (!sectionIndexToNumberOfEntriesMapTable || (v6 = NSMapGet(sectionIndexToNumberOfEntriesMapTable, (a3 + 1))) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v8 = [WeakRetained indexBarControl:self numberOfEntriesInSection:a3];

    if (!self->_sectionIndexToNumberOfEntriesMapTable)
    {
      v9 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:1282 valueOptions:0 capacity:{-[SKUIIndexBarControl _numberOfSections](self, "_numberOfSections")}];
      v10 = self->_sectionIndexToNumberOfEntriesMapTable;
      self->_sectionIndexToNumberOfEntriesMapTable = v9;
    }

    v6 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
    NSMapInsert(self->_sectionIndexToNumberOfEntriesMapTable, (a3 + 1), v6);
  }

  v11 = [v6 integerValue];

  return v11;
}

- (id)_combinedEntry
{
  if (!self->_hasValidCombinedEntry)
  {
    if (*&self->_dataSourceDelegateFlags)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      v5 = [WeakRetained combinedEntryForIndexBarControl:self];
      combinedEntry = self->_combinedEntry;
      self->_combinedEntry = v5;
    }

    else
    {
      v3 = +[SKUIIndexBarEntry systemCombinedEntry];
      WeakRetained = self->_combinedEntry;
      self->_combinedEntry = v3;
    }

    if (self->_combinedEntry)
    {
      [(SKUIIndexBarControl *)self _configureNewEntry:?];
    }

    self->_hasValidCombinedEntry = 1;
  }

  v7 = self->_combinedEntry;

  return v7;
}

- (void)_configureNewEntry:(id)a3
{
  v6 = a3;
  v4 = [(SKUIIndexBarControl *)self tintColor];
  [v6 setTintColor:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SKUIIndexBarControl *)self defaultTextAttributes];
    [v6 setDefaultTextAttributes:v5];
  }
}

- (id)_displayEntries
{
  v66 = *MEMORY[0x277D85DE8];
  displayEntries = self->_displayEntries;
  if (self->_hasValidDisplayEntries)
  {
    v3 = displayEntries;
  }

  else
  {
    self->_displayEntries = 0;

    self->_hasValidDisplayEntries = 1;
    [(SKUIIndexBarControl *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    top = self->_contentEdgeInsets.top;
    left = self->_contentEdgeInsets.left;
    bottom = self->_contentEdgeInsets.bottom;
    right = self->_contentEdgeInsets.right;
    v51 = self;
    v45 = [(SKUIIndexBarControl *)self _allEntries];
    v17 = v45;
    if ([v45 count])
    {
      v18 = v6 + left;
      v19 = v8 + top;
      v20 = v10 - (left + right);
      v21 = v12 - (top + bottom);
      [(SKUIIndexBarControl *)v51 _sizeForEntries:v45];
      v23 = v22;
      v68.origin.x = v18;
      v68.origin.y = v19;
      v68.size.width = v20;
      v68.size.height = v21;
      if (v23 <= CGRectGetHeight(v68))
      {
        objc_storeStrong(&v51->_displayEntries, v45);
      }

      else
      {
        v61 = 0;
        v62 = &v61;
        v63 = 0x2020000000;
        v64 = 0;
        v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v60[0] = 0;
        v60[1] = v60;
        v60[2] = 0x2020000000;
        v60[3] = 0;
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __38__SKUIIndexBarControl__displayEntries__block_invoke;
        v56[3] = &unk_2781FD468;
        v58 = &v61;
        v59 = v60;
        v44 = v24;
        v57 = v44;
        [v45 enumerateObjectsUsingBlock:v56];
        v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
        if (v62[3])
        {
          v26 = 1;
          v46 = 2;
          do
          {
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            obj = v44;
            v27 = [obj countByEnumeratingWithState:&v52 objects:v65 count:16];
            if (v27)
            {
              v48 = *v53;
              do
              {
                v49 = v27;
                for (i = 0; i != v49; ++i)
                {
                  if (*v53 != v48)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v29 = *(*(&v52 + 1) + 8 * i);
                  v50 = [v29 firstObject];
                  if ([v50 visibilityPriority] == 1000)
                  {
                    [v25 addObjectsFromArray:v29];
                  }

                  else
                  {
                    v30 = [v29 count];
                    v31 = v30;
                    if (v26 >= v30)
                    {
                      goto LABEL_20;
                    }

                    v32 = 0;
                    v33 = v46 - v30;
                    v34 = v26;
                    do
                    {
                      v35 = [(SKUIIndexBarControl *)v51 _combinedEntry];
                      if (v35)
                      {
                        [v25 addObject:v35];
                      }

                      v36 = [v29 objectAtIndex:v34];
                      [v25 addObject:v36];

                      v32 |= v33 == 0;
                      v34 += v26;
                      v33 += v26;
                    }

                    while (v34 < v31);
                    if ((v32 & 1) == 0)
                    {
LABEL_20:
                      v37 = [(SKUIIndexBarControl *)v51 _combinedEntry];
                      if (v37)
                      {
                        [v25 addObject:v37];
                      }
                    }
                  }
                }

                v27 = [obj countByEnumeratingWithState:&v52 objects:v65 count:16];
              }

              while (v27);
            }

            [(SKUIIndexBarControl *)v51 _sizeForEntries:v25];
            v39 = v38;
            v69.origin.x = v18;
            v69.origin.y = v19;
            v69.size.width = v20;
            v69.size.height = v21;
            if (v39 <= CGRectGetHeight(v69))
            {
              break;
            }

            [v25 removeAllObjects];
            ++v46;
          }

          while (v26++ < v62[3]);
        }

        if ([v25 count])
        {
          v41 = v25;
        }

        else
        {
          v41 = [(SKUIIndexBarControl *)v51 _displayEntriesThatFitInViewForGroupedEntries];
        }

        v42 = v51->_displayEntries;
        v51->_displayEntries = v41;

        _Block_object_dispose(v60, 8);
        _Block_object_dispose(&v61, 8);
      }

      v17 = v45;
    }

    v3 = v51->_displayEntries;
  }

  return v3;
}

void __38__SKUIIndexBarControl__displayEntries__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [v8 visibilityPriority];
  v6 = v5;
  if (v5)
  {
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (v5 == *(*(*(a1 + 48) + 8) + 24))
  {
    v7 = [*(a1 + 32) lastObject];
    [v7 addObject:v8];
    goto LABEL_8;
  }

LABEL_7:
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  [v7 addObject:v8];
  [*(a1 + 32) addObject:v7];
  *(*(*(a1 + 48) + 8) + 24) = v6;
LABEL_8:
}

- (id)_displayEntriesThatFitInViewForGroupedEntries
{
  v3 = [(SKUIIndexBarControl *)self _allRequiredEntries];
  v4 = [v3 count];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(SKUIIndexBarControl *)self bounds];
  if (v4 >= 2)
  {
    top = self->_contentEdgeInsets.top;
    left = self->_contentEdgeInsets.left;
    v12 = v9 - (top + self->_contentEdgeInsets.bottom);
    v13 = v8 - (left + self->_contentEdgeInsets.right);
    v14 = v7 + top;
    v15 = v6 + left;
    v16 = 1;
    v17 = 2;
    do
    {
      v18 = 0;
      v19 = v4 + ~v16++;
      do
      {
        v20 = [v3 objectAtIndex:v18];
        [v5 addObject:v20];

        v21 = [(SKUIIndexBarControl *)self _combinedEntry];
        if (v21 && v18 < v19)
        {
          [v5 addObject:v21];
        }

        v18 += v17;
      }

      while (v18 < v4);
      [(SKUIIndexBarControl *)self _sizeForEntries:v5];
      v23 = v22;
      v27.origin.x = v15;
      v27.origin.y = v14;
      v27.size.width = v13;
      v27.size.height = v12;
      if (v23 <= CGRectGetHeight(v27))
      {
        break;
      }

      [v5 removeAllObjects];
      ++v17;
    }

    while (v16 != v4);
  }

  if ([v5 count])
  {
    v24 = v5;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  return v24;
}

- (id)_entryAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_indexPathToEntryMapTable objectForKey:v4];
  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v5 = [WeakRetained indexBarControl:self entryAtIndexPath:v4];

    [(SKUIIndexBarControl *)self _configureNewEntry:v5];
    indexPathToEntryMapTable = self->_indexPathToEntryMapTable;
    if (!indexPathToEntryMapTable)
    {
      v8 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:1];
      v9 = self->_indexPathToEntryMapTable;
      self->_indexPathToEntryMapTable = v8;

      indexPathToEntryMapTable = self->_indexPathToEntryMapTable;
    }

    [(NSMapTable *)indexPathToEntryMapTable setObject:v5 forKey:v4];
  }

  return v5;
}

- (void)_invalidateDisplayEntries
{
  self->_hasValidDisplayEntries = 0;
  displayEntries = self->_displayEntries;
  self->_displayEntries = 0;

  [(SKUIIndexBarControl *)self setNeedsDisplay];
}

- (void)_invalidateForChangedLayoutProperties
{
  [(SKUIIndexBarControl *)self _invalidateDisplayEntries];

  [(SKUIIndexBarControl *)self _reloadLineSpacing];
}

- (int64_t)_numberOfSections
{
  if (!self->_hasValidNumberOfSections)
  {
    if ((*&self->_dataSourceDelegateFlags & 2) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      self->_numberOfSections = [WeakRetained numberOfSectionsInIndexBarControl:self];
    }

    else
    {
      self->_numberOfSections = 1;
    }

    self->_hasValidNumberOfSections = 1;
  }

  return self->_numberOfSections;
}

- (BOOL)_reloadLineSpacing
{
  [(SKUIIndexBarControl *)self bounds];
  Height = CGRectGetHeight(v7);
  v4 = 4.0;
  if (Height + -768.0 < -0.00000011920929)
  {
    v4 = 1.0;
  }

  v5 = vabdd_f64(self->_lineSpacing, v4);
  if (v5 > 0.00000011920929)
  {
    self->_lineSpacing = v4;
    self->_hasValidTotalSize = 0;
  }

  return v5 > 0.00000011920929;
}

- (void)_sendSelectionForTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 locationInView:self];
  v9 = v8;
  [(SKUIIndexBarControl *)self _visibleBounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(SKUIIndexBarControl *)self _totalEntryCount];
  v40.origin.x = v11;
  v40.origin.y = v13;
  v40.size.width = v15;
  v40.size.height = v17;
  if (v9 < CGRectGetMinY(v40))
  {
    if (!self->_didSendPastTop)
    {
      self->_didSendPastTop = 1;
      if ((*&self->_dataSourceDelegateFlags & 0x10) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained indexBarControlDidSelectBeyondTop:self];
      }
    }

    v20 = 464;
LABEL_11:
    *(&self->super.super.super.super.isa + v20) = 0;
    lastSelectedIndexPath = self->_lastSelectedIndexPath;
    self->_lastSelectedIndexPath = 0;

    goto LABEL_24;
  }

  v41.origin.x = v11;
  v41.origin.y = v13;
  v41.size.width = v15;
  v41.size.height = v17;
  if (v9 > CGRectGetMaxY(v41))
  {
    if (!self->_didSendPastBottom)
    {
      self->_didSendPastBottom = 1;
      if ((*&self->_dataSourceDelegateFlags & 8) != 0)
      {
        v21 = objc_loadWeakRetained(&self->_delegate);
        [v21 indexBarControlDidSelectBeyondBottom:self];
      }
    }

    v20 = 465;
    goto LABEL_11;
  }

  v42.origin.x = v11;
  v42.origin.y = v13;
  v42.size.width = v15;
  v42.size.height = v17;
  v23 = v9 - CGRectGetMinY(v42);
  v43.origin.x = v11;
  v43.origin.y = v13;
  v43.size.width = v15;
  v43.size.height = v17;
  Height = CGRectGetHeight(v43);
  v25 = v18 - 1;
  v26 = llround(v23 / Height * (v18 - 1));
  if (v18 - 1 >= v26)
  {
    v25 = v26;
  }

  v27 = v25 & ~(v25 >> 63);
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__46;
  v38 = __Block_byref_object_dispose__46;
  v39 = 0;
  if (v27 < v18 && (v33[0] = 0, v33[1] = v33, v33[2] = 0x2020000000, v33[3] = 0, v32[0] = MEMORY[0x277D85DD0], v32[1] = 3221225472, v32[2] = __56__SKUIIndexBarControl__sendSelectionForTouch_withEvent___block_invoke, v32[3] = &unk_2781FD490, v32[5] = &v34, v32[6] = v27, v32[4] = v33, [(SKUIIndexBarControl *)self _enumerateEntryIndexPathsUsingBlock:v32], _Block_object_dispose(v33, 8), (v28 = v35[5]) != 0))
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  _Block_object_dispose(&v34, 8);

  v30 = self->_lastSelectedIndexPath;
  if (v30 != v29 && ([(NSIndexPath *)v30 isEqual:v29]& 1) == 0)
  {
    objc_storeStrong(&self->_lastSelectedIndexPath, v29);
    if (self->_lastSelectedIndexPath)
    {
      if ((*&self->_dataSourceDelegateFlags & 4) != 0)
      {
        v31 = objc_loadWeakRetained(&self->_delegate);
        [v31 indexBarControl:self didSelectEntryAtIndexPath:self->_lastSelectedIndexPath];
      }
    }
  }

  self->_didSendPastBottom = 0;
  self->_didSendPastTop = 0;

LABEL_24:
}

void __56__SKUIIndexBarControl__sendSelectionForTouch_withEvent___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 24);
  if (v8 == a1[6])
  {
    v9 = v6;
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    v6 = v9;
    *a3 = 1;
    v7 = *(a1[4] + 8);
    v8 = *(v7 + 24);
  }

  *(v7 + 24) = v8 + 1;
}

- (CGSize)_sizeForEntries:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3010000000;
  v14 = &unk_215F8ACD7;
  v15 = *MEMORY[0x277CBF3A8];
  v5 = [v4 count];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__SKUIIndexBarControl__sizeForEntries___block_invoke;
  v10[3] = &unk_2781FD4B8;
  v10[5] = &v11;
  v10[6] = v5;
  v10[4] = self;
  [v4 enumerateObjectsUsingBlock:v10];
  v6 = v12[4];
  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  v8 = v6;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

double __39__SKUIIndexBarControl__sizeForEntries___block_invoke(void *a1, void *a2, unint64_t a3)
{
  [a2 size];
  v7 = a1[6];
  v8 = *(a1[5] + 8);
  if (*(v8 + 32) >= v5)
  {
    v5 = *(v8 + 32);
  }

  *(v8 + 32) = v5;
  v9 = *(a1[5] + 8);
  result = v6 + *(v9 + 40);
  *(v9 + 40) = result;
  if (v7 - 1 > a3)
  {
    v11 = *(a1[5] + 8);
    result = *(a1[4] + 504) + *(v11 + 40);
    *(v11 + 40) = result;
  }

  return result;
}

- (CGSize)_sizeForEntryAtIndexPath:(id)a3
{
  v3 = [(SKUIIndexBarControl *)self _entryAtIndexPath:a3];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (int64_t)_totalEntryCount
{
  if (!self->_hasValidTotalEntryCount)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __39__SKUIIndexBarControl__totalEntryCount__block_invoke;
    v4[3] = &unk_2781FD4E0;
    v4[4] = &v5;
    [(SKUIIndexBarControl *)self _enumerateEntryIndexPathsUsingBlock:v4];
    self->_totalEntryCount = v6[3];
    _Block_object_dispose(&v5, 8);
  }

  return self->_totalEntryCount;
}

- (CGSize)_totalSize
{
  if (!self->_hasValidTotalSize)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3010000000;
    v16 = &unk_215F8ACD7;
    v17 = *MEMORY[0x277CBF3A8];
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __33__SKUIIndexBarControl__totalSize__block_invoke;
    v8[3] = &unk_2781FD508;
    v8[4] = self;
    v8[5] = &v13;
    v8[6] = &v9;
    [(SKUIIndexBarControl *)self _enumerateEntryIndexPathsUsingBlock:v8];
    v3 = v14;
    if (v10[3])
    {
      v4.f64[0] = v14[2].height - self->_lineSpacing;
      v14[2].height = v4.f64[0];
    }

    else
    {
      v4.f64[0] = v14[2].height;
    }

    v4.f64[1] = v3[2].width;
    v5 = vmaxnmq_f64(vaddq_f64(vaddq_f64(*&self->_contentEdgeInsets.top, *&self->_contentEdgeInsets.bottom), v4), 0);
    v3[2] = vextq_s8(v5, v5, 8uLL);
    self->_totalSize = v3[2];
    self->_hasValidTotalSize = 1;
    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
  }

  width = self->_totalSize.width;
  height = self->_totalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

double __33__SKUIIndexBarControl__totalSize__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _sizeForEntryAtIndexPath:a2];
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 32) >= v3)
  {
    v3 = *(v5 + 32);
  }

  *(v5 + 32) = v3;
  *(*(*(a1 + 40) + 8) + 40) = v4 + *(*(*(a1 + 40) + 8) + 40);
  v6 = *(*(a1 + 40) + 8);
  result = *(*(a1 + 32) + 504) + *(v6 + 40);
  *(v6 + 40) = result;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  return result;
}

- (CGRect)_visibleBounds
{
  v3 = [(SKUIIndexBarControl *)self _displayEntries];
  [(SKUIIndexBarControl *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v3 count];
  v30 = 0;
  v31 = &v30;
  v32 = 0x4010000000;
  v33 = &unk_215F8ACD7;
  v34 = 0u;
  v35 = 0u;
  v36.origin.x = v5;
  v36.origin.y = v7;
  v36.size.width = v9;
  v36.size.height = v11;
  v13 = CGRectGetMinX(v36) + self->_contentEdgeInsets.left;
  v37.origin.x = v5;
  v37.origin.y = v7;
  v37.size.width = v9;
  v37.size.height = v11;
  v14 = CGRectGetMinY(v37) + self->_contentEdgeInsets.top;
  *&v34 = v13;
  *(&v34 + 1) = v14;
  v35 = 0uLL;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __37__SKUIIndexBarControl__visibleBounds__block_invoke;
  v29[3] = &unk_2781FD4B8;
  v29[5] = &v30;
  v29[6] = v12;
  v29[4] = self;
  [v3 enumerateObjectsUsingBlock:v29];
  v15 = [(SKUIIndexBarControl *)self traitCollection];
  [v15 displayScale];
  UIRectCenteredIntegralRectScale();
  v16 = v31;
  v31[4] = v17;
  v16[5] = v18;
  v16[6] = v19;
  v16[7] = v20;

  v21 = *(v31 + 4);
  v22 = *(v31 + 5);
  v23 = *(v31 + 6);
  v24 = *(v31 + 7);
  _Block_object_dispose(&v30, 8);

  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

void __37__SKUIIndexBarControl__visibleBounds__block_invoke(void *a1, void *a2, unint64_t a3)
{
  [a2 size];
  v6 = v5;
  v8 = v7;
  Width = CGRectGetWidth(*(*(a1[5] + 8) + 32));
  if (Width < v6)
  {
    Width = v6;
  }

  v10 = a1[6];
  *(*(a1[5] + 8) + 48) = Width;
  *(*(a1[5] + 8) + 56) = v8 + *(*(a1[5] + 8) + 56);
  if (v10 - 1 > a3)
  {
    *(*(a1[5] + 8) + 56) = *(a1[4] + 504) + *(*(a1[5] + 8) + 56);
  }
}

- (UIEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)hitTestEdgeInsets
{
  top = self->_hitTestEdgeInsets.top;
  left = self->_hitTestEdgeInsets.left;
  bottom = self->_hitTestEdgeInsets.bottom;
  right = self->_hitTestEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (SKUIIndexBarControlDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (SKUIIndexBarControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end