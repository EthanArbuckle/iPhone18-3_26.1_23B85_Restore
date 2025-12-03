@interface PXFeedItemDecorationSource
- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)index inLayout:(id)layout;
- (PXGLayout)decoratedLayout;
- (id)_spriteIndexesForItems:(id)items inLayout:(id)layout;
- (id)selectedSpriteIndexesInLayout:(id)layout;
- (void)setDataSource:(id)source section:(int64_t)section;
- (void)setDecoratedLayout:(id)layout;
- (void)setSelectionSnapshot:(id)snapshot;
@end

@implementation PXFeedItemDecorationSource

- (PXGLayout)decoratedLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_decoratedLayout);

  return WeakRetained;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)index inLayout:(id)layout
{
  v4 = *&index;
  layoutCopy = layout;
  v6 = *off_1E7722000;
  v7 = *(off_1E7722000 + 1);
  v8 = *(off_1E7722000 + 2);
  v9 = *(off_1E7722000 + 3);
  v10 = layoutCopy;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;

    if (v11)
    {
      [v11 decorationOverlayRectForSpriteIndex:v4];
      if (!CGRectIsNull(v17))
      {
        [v11 geometryForSpriteAtIndex:v4];
        PXEdgeInsetsBetweenRects();
      }
    }
  }

  else
  {

    v11 = 0;
  }

  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  result.var3 = v15;
  result.var2 = v14;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (id)selectedSpriteIndexesInLayout:(id)layout
{
  layoutCopy = layout;
  selectionSnapshot = [(PXFeedItemDecorationSource *)self selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  if ([selectedIndexPaths count] < 1)
  {
    v13 = 0;
  }

  else
  {
    dataSource = [(PXFeedItemDecorationSource *)self dataSource];
    identifier = [dataSource identifier];

    dataSource2 = [selectionSnapshot dataSource];
    identifier2 = [dataSource2 identifier];

    if (identifier != identifier2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedItemDecorationSource.m" lineNumber:79 description:{@"identifier mismatch between dataSource of %@ and selectionSnapshot %@", self, selectionSnapshot}];
    }

    v12 = [selectedIndexPaths itemIndexSetForDataSourceIdentifier:identifier section:{-[PXFeedItemDecorationSource section](self, "section")}];
    if (v12)
    {
      v13 = [(PXFeedItemDecorationSource *)self _spriteIndexesForItems:v12 inLayout:layoutCopy];
    }

    else
    {
      v14 = [selectedIndexPaths sectionIndexSetForDataSourceIdentifier:identifier];
      if ([v14 containsIndex:{-[PXFeedItemDecorationSource section](self, "section")}] && (objc_msgSend(selectionSnapshot, "dataSource"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "numberOfItemsInSection:", -[PXFeedItemDecorationSource section](self, "section")), v15, v16 >= 1))
      {
        v17 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
        v13 = [(PXFeedItemDecorationSource *)self _spriteIndexesForItems:v17 inLayout:layoutCopy];
      }

      else
      {
        v13 = 0;
      }
    }
  }

  return v13;
}

- (void)setSelectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (self->_selectionSnapshot != snapshotCopy)
  {
    v7 = snapshotCopy;
    objc_storeStrong(&self->_selectionSnapshot, snapshot);
    decoratedLayout = [(PXFeedItemDecorationSource *)self decoratedLayout];
    [decoratedLayout invalidateDecoration];

    snapshotCopy = v7;
  }
}

- (void)setDataSource:(id)source section:(int64_t)section
{
  sourceCopy = source;
  if (*&self->_dataSource != __PAIR128__(section, sourceCopy))
  {
    self->_section = section;
    v9 = sourceCopy;
    objc_storeStrong(&self->_dataSource, source);
    decoratedLayout = [(PXFeedItemDecorationSource *)self decoratedLayout];
    [decoratedLayout invalidateDecoration];

    sourceCopy = v9;
  }
}

- (void)setDecoratedLayout:(id)layout
{
  obj = layout;
  WeakRetained = objc_loadWeakRetained(&self->_decoratedLayout);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_decoratedLayout, obj);
    decoratedLayout = [(PXFeedItemDecorationSource *)self decoratedLayout];
    [decoratedLayout invalidateDecoration];

    v5 = obj;
  }
}

- (id)_spriteIndexesForItems:(id)items inLayout:(id)layout
{
  itemsCopy = items;
  layoutCopy = layout;
  if (itemsCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [layoutCopy spriteIndexesForItems:itemsCopy];
    }

    else
    {
      v7 = itemsCopy;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end