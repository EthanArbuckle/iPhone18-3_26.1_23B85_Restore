@interface UIDebuggingInformationHierarchyLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGSize)collectionViewContentSize;
- (UIDebuggingInformationHierarchyLayoutDelegate)delegate;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)_recomputeAttributes;
- (void)invalidateLayout;
- (void)prepareForCollectionViewUpdates:(id)a3;
- (void)prepareLayout;
- (void)setDelegate:(id)a3;
@end

@implementation UIDebuggingInformationHierarchyLayout

- (void)prepareLayout
{
  v3.receiver = self;
  v3.super_class = UIDebuggingInformationHierarchyLayout;
  [(UICollectionViewLayout *)&v3 prepareLayout];
  [(UIDebuggingInformationHierarchyLayout *)self _recomputeAttributes];
}

- (void)prepareForCollectionViewUpdates:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = UIDebuggingInformationHierarchyLayout;
  [(UICollectionViewLayout *)&v25 prepareForCollectionViewUpdates:v4];
  indexPathsToDelete = self->_indexPathsToDelete;
  if (indexPathsToDelete)
  {
    [(NSMutableArray *)indexPathsToDelete removeAllObjects];
  }

  else
  {
    v6 = objc_opt_new();
    v7 = self->_indexPathsToDelete;
    self->_indexPathsToDelete = v6;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        allLineAttributes = self->_allLineAttributes;
        v15 = [v13 indexPathBeforeUpdate];
        v16 = [(NSMutableDictionary *)allLineAttributes objectForKeyedSubscript:v15];

        if (v16)
        {
          v17 = self->_indexPathsToDelete;
          v18 = [v13 indexPathBeforeUpdate];
          [(NSMutableArray *)v17 addObject:v18];

          v19 = self->_allLineAttributes;
          v20 = [v13 indexPathBeforeUpdate];
          [(NSMutableDictionary *)v19 removeObjectForKey:v20];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v10);
  }
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);

  [(UIDebuggingInformationHierarchyLayout *)self invalidateLayout];
}

- (void)_recomputeAttributes
{
  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v33 = [(UICollectionViewLayout *)self collectionView];
  if ([v33 numberOfSections])
  {
    v3 = 0;
    v4 = -1.0;
    v5 = 0x1E696A000uLL;
    v6 = 0.0;
    do
    {
      if ([v33 numberOfItemsInSection:v3])
      {
        v7 = 0;
        do
        {
          v8 = [*(v5 + 3208) indexPathForRow:v7 inSection:v3];
          v9 = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:v8];
          [v33 bounds];
          Width = CGRectGetWidth(v35);
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v12 = [WeakRetained indentationLevelForIndexPath:v8];
          v13 = v12;

          [v9 setZIndex:2];
          [v9 setFrame:{v13 * 10.0, v6, Width - v13 * 10.0, 32.0}];
          v14 = objc_loadWeakRetained(&self->_delegate);
          [v9 setHidden:{objc_msgSend(v14, "shouldCollapseAtIndexPath:", v8)}];

          [(NSDictionary *)v32 setObject:v9 forKeyedSubscript:v8];
          v15 = [(UICollectionViewLayoutAttributes *)UIDebuggingInformationHierarchyLayoutAttributes layoutAttributesForSupplementaryViewOfKind:@"line" withIndexPath:v8];
          v16 = objc_loadWeakRetained(&self->_delegate);
          v17 = [v16 colorForIndentationLevel:v12];
          [v15 setLineColor:v17];

          if (v12 < 2 || v4 == v13)
          {
            ++v7;
            v5 = 0x1E696A000;
          }

          else
          {
            v18 = [MEMORY[0x1E696AC88] indexPathForRow:v7 + 1 inSection:v3];
            v19 = objc_loadWeakRetained(&self->_delegate);
            v20 = [v19 indentationLevelForIndexPath:v18];

            if (v20 >= v13)
            {
              v21 = 32.0;
              v22 = v18;
              v5 = 0x1E696A000uLL;
              do
              {
                v23 = objc_loadWeakRetained(&self->_delegate);
                v24 = [v23 shouldCollapseAtIndexPath:v22];

                if (!v24)
                {
                  v21 = v21 + 35.0;
                }

                v18 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(v22 inSection:{"row") + 1, v3}];

                v25 = objc_loadWeakRetained(&self->_delegate);
                v26 = [v25 indentationLevelForIndexPath:v18];

                v22 = v18;
              }

              while (v26 >= v13);
            }

            else
            {
              v21 = 32.0;
              v5 = 0x1E696A000;
            }

            [v15 setFrame:{v13 * 10.0 + -10.0, v6 + 0.0, 2.0, v21}];
            [v15 setSize:{2.0, v21}];
            v27 = objc_loadWeakRetained(&self->_delegate);
            [v15 setHidden:{objc_msgSend(v27, "shouldCollapseAtIndexPath:", v8)}];

            [v15 setZIndex:1];
            [(NSMutableDictionary *)v31 setObject:v15 forKeyedSubscript:v8];

            ++v7;
          }

          if (![v9 isHidden])
          {
            v6 = v6 + 35.0;
          }

          v4 = v13;
        }

        while (v7 < [v33 numberOfItemsInSection:v3]);
      }

      else
      {
        v13 = v4;
      }

      ++v3;
      v4 = v13;
    }

    while (v3 < [v33 numberOfSections]);
  }

  allAttributes = self->_allAttributes;
  self->_allAttributes = v32;
  v29 = v32;

  allLineAttributes = self->_allLineAttributes;
  self->_allLineAttributes = v31;
}

- (void)invalidateLayout
{
  v3.receiver = self;
  v3.super_class = UIDebuggingInformationHierarchyLayout;
  [(UICollectionViewLayout *)&v3 invalidateLayout];
  [(UIDebuggingInformationHierarchyLayout *)self _recomputeAttributes];
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  Width = CGRectGetWidth(a3);
  v5 = [(UICollectionViewLayout *)self collectionView];
  [v5 bounds];
  v6 = Width != CGRectGetWidth(v8);

  return v6;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(UIDebuggingInformationHierarchyLayout *)self allAttributes];
    v6 = [v5 objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = [(UIDebuggingInformationHierarchyLayout *)self allLineAttributes];
    v7 = [v6 objectForKeyedSubscript:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [(UIDebuggingInformationHierarchyLayout *)self allAttributes];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__UIDebuggingInformationHierarchyLayout_layoutAttributesForElementsInRect___block_invoke;
  v14[3] = &unk_1E7127C10;
  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  v14[4] = self;
  v10 = v8;
  v15 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v14];

  v11 = v15;
  v12 = v10;

  return v10;
}

void __75__UIDebuggingInformationHierarchyLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  [v5 frame];
  v17.origin.x = v6;
  v17.origin.y = v7;
  v17.size.width = v8;
  v17.size.height = v9;
  if (CGRectIntersectsRect(*(a1 + 48), v17))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 280));
    v11 = [WeakRetained shouldCollapseAtIndexPath:v15];

    if ((v11 & 1) == 0)
    {
      [*(a1 + 40) addObject:v5];
      v12 = [*(*(a1 + 32) + 296) objectForKeyedSubscript:v15];

      if (v12)
      {
        v13 = *(a1 + 40);
        v14 = [*(*(a1 + 32) + 296) objectForKeyedSubscript:v15];
        [v13 addObject:v14];
      }
    }
  }
}

- (CGSize)collectionViewContentSize
{
  v3 = [(UICollectionViewLayout *)self collectionView];
  v4 = [v3 numberOfSections];

  if (v4)
  {
    v5 = 0;
    v6 = 0.0;
    do
    {
      v7 = [(UICollectionViewLayout *)self collectionView];
      v8 = [v7 numberOfItemsInSection:v5];

      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = [MEMORY[0x1E696AC88] indexPathForRow:v9 inSection:v5];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v12 = [WeakRetained shouldCollapseAtIndexPath:v10];

          if (!v12)
          {
            v6 = v6 + 35.0;
          }

          ++v9;
          v13 = [(UICollectionViewLayout *)self collectionView];
          v14 = [v13 numberOfItemsInSection:v5];
        }

        while (v9 < v14);
      }

      ++v5;
      v15 = [(UICollectionViewLayout *)self collectionView];
      v16 = [v15 numberOfSections];
    }

    while (v5 < v16);
  }

  else
  {
    v6 = 0.0;
  }

  v17 = [(UICollectionViewLayout *)self collectionView];
  [v17 bounds];
  Width = CGRectGetWidth(v22);

  v19 = Width;
  v20 = v6;
  result.height = v20;
  result.width = v19;
  return result;
}

- (UIDebuggingInformationHierarchyLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end