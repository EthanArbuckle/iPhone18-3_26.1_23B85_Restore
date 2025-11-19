@interface PUImportSectionedGridLayout
- (PUImportSectionedGridLayout)init;
- (id)createLayoutAttributesForSectionBackgroundAtSection:(unint64_t)a3;
- (id)indexPathsToDeleteForDecorationViewOfKind:(id)a3;
- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (void)finalizeCollectionViewUpdates;
- (void)prepareForCollectionViewUpdates:(id)a3;
- (void)prepareLayout;
- (void)recreateSectionDecorationAttributes;
- (void)setDelegate:(id)a3;
@end

@implementation PUImportSectionedGridLayout

- (id)indexPathsToDeleteForDecorationViewOfKind:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PUImportSectionedGridLayout;
  v5 = [(PUImportSectionedGridLayout *)&v23 indexPathsToDeleteForDecorationViewOfKind:v4];
  v6 = [v5 mutableCopy];

  if ([v4 isEqualToString:@"PUImportSectionedGridLayoutDecorationKindSectionBackground"])
  {
    v18 = v4;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [(PUImportSectionedGridLayout *)self sectionIndexPathsBeingDeleted];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v19 + 1) + 8 * i) section];
          v13 = [(PUImportSectionedGridLayout *)self preUpdateSectionDecorationAttributesBySection];
          v14 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
          v15 = [v13 objectForKeyedSubscript:v14];

          if (v15)
          {
            v16 = [v15 indexPath];
            [v6 addObject:v16];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v9);
    }

    v4 = v18;
  }

  return v6;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if ([v6 isEqualToString:@"PUImportSectionedGridLayoutDecorationKindSectionBackground"])
  {
    v9 = [(PUImportSectionedGridLayout *)self createLayoutAttributesForSectionBackgroundAtSection:v8];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PUImportSectionedGridLayout;
    v9 = [(PUImportSectionedGridLayout *)&v12 layoutAttributesForDecorationViewOfKind:v6 atIndexPath:v7];
  }

  v10 = v9;

  return v10;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = PUImportSectionedGridLayout;
  v8 = [(PUSectionedGridLayout *)&v21 layoutAttributesForElementsInRect:?];
  v9 = [v8 mutableCopy];

  v10 = [(PUImportSectionedGridLayout *)self sectionDecorationAttributesBySection];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v10 objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i)];
        [v15 frame];
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        if (CGRectIntersectsRect(v25, v26))
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v12);
  }

  return v9;
}

- (void)finalizeCollectionViewUpdates
{
  v3.receiver = self;
  v3.super_class = PUImportSectionedGridLayout;
  [(PUSectionedGridLayout *)&v3 finalizeCollectionViewUpdates];
  [(PUImportSectionedGridLayout *)self setSectionIndexPathsBeingDeleted:0];
  [(PUImportSectionedGridLayout *)self setPreUpdateSectionDecorationAttributesBySection:0];
}

- (void)prepareForCollectionViewUpdates:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 indexPathBeforeUpdate];
        if ([v12 section] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v12, "item") == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([v11 updateAction] == 1)
          {
            [v5 addObject:v12];
          }

          else
          {
            [v11 updateAction];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];
  [(PUImportSectionedGridLayout *)self setSectionIndexPathsBeingDeleted:v13];

  v14.receiver = self;
  v14.super_class = PUImportSectionedGridLayout;
  [(PUSectionedGridLayout *)&v14 prepareForCollectionViewUpdates:v6];
}

- (id)createLayoutAttributesForSectionBackgroundAtSection:(unint64_t)a3
{
  [(PUSectionedGridLayout *)self globalTopPadding];
  v6 = v5;
  [(PUSectionedGridLayout *)self sectionTopPadding];
  v8 = v7;
  v9 = [(PUSectionedGridLayout *)self sectionHeaderElementKind];
  v10 = [MEMORY[0x1E696AC88] indexPathWithIndex:a3];
  v48 = v9;
  v11 = [(PUSectionedGridLayout *)self layoutAttributesForSupplementaryViewOfKind:v9 atIndexPath:v10];
  [v11 frame];
  v16 = v12;
  if (a3)
  {
    v17 = CGRectGetMinY(*&v12) - v8 - v6;
  }

  else
  {
    v17 = 0.0;
  }

  [v11 size];
  v19 = v18;
  v20 = [(UICollectionViewLayoutAttributes *)PUImportSectionedGridLayoutAttributes layoutAttributesForDecorationViewOfKind:@"PUImportSectionedGridLayoutDecorationKindSectionBackground" withIndexPath:v10];
  v21 = [(PUImportSectionedGridLayout *)self collectionView];
  v22 = [v21 dataSource];
  v23 = [(PUImportSectionedGridLayout *)self collectionView];
  v24 = [v22 collectionView:v23 numberOfItemsInSection:a3];

  if (v24 <= 0)
  {
    v42 = 0.0;
  }

  else
  {
    v47 = v8;
    rect = *(MEMORY[0x1E695F058] + 24);
    v25 = [MEMORY[0x1E696AC88] indexPathForItem:v24 - 1 inSection:a3];
    v26 = [(PUSectionedGridLayout *)self layoutAttributesForItemAtIndexPath:v25];
    [v26 frame];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    [(PUSectionedGridLayout *)self itemSize];
    v36 = v35;
    v50.origin.x = v28;
    v50.origin.y = v30;
    v50.size.width = v32;
    v50.size.height = v34;
    if (CGRectGetHeight(v50) < v36)
    {
      PXRectGetCenter();
      PXRectWithCenterAndSize();
      v28 = v37;
      v30 = v38;
      v32 = v39;
      v34 = v40;
    }

    v51.origin.x = v28;
    v51.origin.y = v30;
    v51.size.width = v32;
    v51.size.height = v34;
    v41 = v47 + CGRectGetMaxY(v51);
    v52.origin.x = v16;
    v52.origin.y = v17;
    v52.size.width = v19;
    v52.size.height = rect;
    v42 = v41 - CGRectGetMinY(v52);
  }

  [v20 setFrame:{v16, v17, v19, v42}];
  v43 = [(PUImportSectionedGridLayout *)self emphasizedSectionBackgroundColor];
  [v20 setBackgroundColor:v43];

  [(PUImportSectionedGridLayout *)self emphasizedSectionBottomStrokeWidth];
  [v20 setStrokeWidth:?];
  v44 = [(PUImportSectionedGridLayout *)self emphasizedSectionBottomStrokeColor];
  [v20 setBottomStrokeColor:v44];

  [v20 setZIndex:-1];

  return v20;
}

- (void)recreateSectionDecorationAttributes
{
  v3 = [(PUImportSectionedGridLayout *)self sectionDecorationAttributesBySection];
  [v3 removeAllObjects];

  v4 = [(PUImportSectionedGridLayout *)self collectionView];
  v5 = [v4 dataSource];
  v6 = [(PUImportSectionedGridLayout *)self collectionView];
  v7 = [v5 numberOfSectionsInCollectionView:v6];

  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if (self->_delegateSupportsPerSectionHighlight)
      {
        v9 = [(PUSectionedGridLayout *)self delegate];
        v10 = [v9 importSectionedGridLayout:self shouldEmphasizeSection:i];
      }

      else
      {
        v10 = 0;
      }

      v11 = [(PUImportSectionedGridLayout *)self collectionView];
      v12 = [v11 dataSource];
      v13 = [(PUImportSectionedGridLayout *)self collectionView];
      v14 = [v12 collectionView:v13 numberOfItemsInSection:i];

      if (v10)
      {
        if (v14 >= 1)
        {
          v15 = [(PUImportSectionedGridLayout *)self createLayoutAttributesForSectionBackgroundAtSection:i];
          v16 = [(PUImportSectionedGridLayout *)self sectionDecorationAttributesBySection];
          v17 = [MEMORY[0x1E696AD98] numberWithInteger:i];
          [v16 setObject:v15 forKeyedSubscript:v17];
        }
      }
    }
  }
}

- (void)prepareLayout
{
  v5.receiver = self;
  v5.super_class = PUImportSectionedGridLayout;
  [(PUSectionedGridLayout *)&v5 prepareLayout];
  v3 = [(PUImportSectionedGridLayout *)self sectionDecorationAttributesBySection];
  v4 = [v3 mutableCopy];
  [(PUImportSectionedGridLayout *)self setPreUpdateSectionDecorationAttributesBySection:v4];

  [(PUImportSectionedGridLayout *)self recreateSectionDecorationAttributes];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(PUSectionedGridLayout *)self delegate];

  if (v5 != v4)
  {
    v9.receiver = self;
    v9.super_class = PUImportSectionedGridLayout;
    [(PUSectionedGridLayout *)&v9 setDelegate:v4];
    v6 = [MEMORY[0x1E695DF90] dictionary];
    sectionDecorationAttributesBySection = self->_sectionDecorationAttributesBySection;
    self->_sectionDecorationAttributesBySection = v6;

    v8 = [(PUSectionedGridLayout *)self delegate];
    self->_delegateSupportsPerSectionHighlight = objc_opt_respondsToSelector() & 1;

    [(PUImportSectionedGridLayout *)self invalidateLayout];
  }
}

- (PUImportSectionedGridLayout)init
{
  v10.receiver = self;
  v10.super_class = PUImportSectionedGridLayout;
  v2 = [(PUSectionedGridLayout *)&v10 init];
  if (v2)
  {
    [(PUImportSectionedGridLayout *)v2 registerClass:objc_opt_class() forDecorationViewOfKind:@"PUImportSectionedGridLayoutDecorationKindSectionBackground"];
    v3 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    emphasizedSectionBackgroundColor = v2->_emphasizedSectionBackgroundColor;
    v2->_emphasizedSectionBackgroundColor = v3;

    v5 = [MEMORY[0x1E69DC888] separatorColor];
    emphasizedSectionBottomStrokeColor = v2->_emphasizedSectionBottomStrokeColor;
    v2->_emphasizedSectionBottomStrokeColor = v5;

    v7 = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [v7 scale];
    v2->_emphasizedSectionBottomStrokeWidth = 1.0 / v8;
  }

  return v2;
}

@end