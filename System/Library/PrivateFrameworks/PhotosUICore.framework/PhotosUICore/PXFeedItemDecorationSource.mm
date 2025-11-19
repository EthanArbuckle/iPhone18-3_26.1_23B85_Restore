@interface PXFeedItemDecorationSource
- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)a3 inLayout:(id)a4;
- (PXGLayout)decoratedLayout;
- (id)_spriteIndexesForItems:(id)a3 inLayout:(id)a4;
- (id)selectedSpriteIndexesInLayout:(id)a3;
- (void)setDataSource:(id)a3 section:(int64_t)a4;
- (void)setDecoratedLayout:(id)a3;
- (void)setSelectionSnapshot:(id)a3;
@end

@implementation PXFeedItemDecorationSource

- (PXGLayout)decoratedLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_decoratedLayout);

  return WeakRetained;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = *off_1E7722000;
  v7 = *(off_1E7722000 + 1);
  v8 = *(off_1E7722000 + 2);
  v9 = *(off_1E7722000 + 3);
  v10 = v5;
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

- (id)selectedSpriteIndexesInLayout:(id)a3
{
  v5 = a3;
  v6 = [(PXFeedItemDecorationSource *)self selectionSnapshot];
  v7 = [v6 selectedIndexPaths];
  if ([v7 count] < 1)
  {
    v13 = 0;
  }

  else
  {
    v8 = [(PXFeedItemDecorationSource *)self dataSource];
    v9 = [v8 identifier];

    v10 = [v6 dataSource];
    v11 = [v10 identifier];

    if (v9 != v11)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"PXFeedItemDecorationSource.m" lineNumber:79 description:{@"identifier mismatch between dataSource of %@ and selectionSnapshot %@", self, v6}];
    }

    v12 = [v7 itemIndexSetForDataSourceIdentifier:v9 section:{-[PXFeedItemDecorationSource section](self, "section")}];
    if (v12)
    {
      v13 = [(PXFeedItemDecorationSource *)self _spriteIndexesForItems:v12 inLayout:v5];
    }

    else
    {
      v14 = [v7 sectionIndexSetForDataSourceIdentifier:v9];
      if ([v14 containsIndex:{-[PXFeedItemDecorationSource section](self, "section")}] && (objc_msgSend(v6, "dataSource"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "numberOfItemsInSection:", -[PXFeedItemDecorationSource section](self, "section")), v15, v16 >= 1))
      {
        v17 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
        v13 = [(PXFeedItemDecorationSource *)self _spriteIndexesForItems:v17 inLayout:v5];
      }

      else
      {
        v13 = 0;
      }
    }
  }

  return v13;
}

- (void)setSelectionSnapshot:(id)a3
{
  v5 = a3;
  if (self->_selectionSnapshot != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_selectionSnapshot, a3);
    v6 = [(PXFeedItemDecorationSource *)self decoratedLayout];
    [v6 invalidateDecoration];

    v5 = v7;
  }
}

- (void)setDataSource:(id)a3 section:(int64_t)a4
{
  v7 = a3;
  if (*&self->_dataSource != __PAIR128__(a4, v7))
  {
    self->_section = a4;
    v9 = v7;
    objc_storeStrong(&self->_dataSource, a3);
    v8 = [(PXFeedItemDecorationSource *)self decoratedLayout];
    [v8 invalidateDecoration];

    v7 = v9;
  }
}

- (void)setDecoratedLayout:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_decoratedLayout);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_decoratedLayout, obj);
    v6 = [(PXFeedItemDecorationSource *)self decoratedLayout];
    [v6 invalidateDecoration];

    v5 = obj;
  }
}

- (id)_spriteIndexesForItems:(id)a3 inLayout:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 spriteIndexesForItems:v5];
    }

    else
    {
      v7 = v5;
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