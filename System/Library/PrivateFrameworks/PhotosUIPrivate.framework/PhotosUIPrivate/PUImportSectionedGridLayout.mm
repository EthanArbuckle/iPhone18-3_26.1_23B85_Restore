@interface PUImportSectionedGridLayout
- (PUImportSectionedGridLayout)init;
- (id)createLayoutAttributesForSectionBackgroundAtSection:(unint64_t)section;
- (id)indexPathsToDeleteForDecorationViewOfKind:(id)kind;
- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (void)finalizeCollectionViewUpdates;
- (void)prepareForCollectionViewUpdates:(id)updates;
- (void)prepareLayout;
- (void)recreateSectionDecorationAttributes;
- (void)setDelegate:(id)delegate;
@end

@implementation PUImportSectionedGridLayout

- (id)indexPathsToDeleteForDecorationViewOfKind:(id)kind
{
  v25 = *MEMORY[0x1E69E9840];
  kindCopy = kind;
  v23.receiver = self;
  v23.super_class = PUImportSectionedGridLayout;
  v5 = [(PUImportSectionedGridLayout *)&v23 indexPathsToDeleteForDecorationViewOfKind:kindCopy];
  v6 = [v5 mutableCopy];

  if ([kindCopy isEqualToString:@"PUImportSectionedGridLayoutDecorationKindSectionBackground"])
  {
    v18 = kindCopy;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    sectionIndexPathsBeingDeleted = [(PUImportSectionedGridLayout *)self sectionIndexPathsBeingDeleted];
    v8 = [sectionIndexPathsBeingDeleted countByEnumeratingWithState:&v19 objects:v24 count:16];
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
            objc_enumerationMutation(sectionIndexPathsBeingDeleted);
          }

          section = [*(*(&v19 + 1) + 8 * i) section];
          preUpdateSectionDecorationAttributesBySection = [(PUImportSectionedGridLayout *)self preUpdateSectionDecorationAttributesBySection];
          v14 = [MEMORY[0x1E696AD98] numberWithInteger:section];
          v15 = [preUpdateSectionDecorationAttributesBySection objectForKeyedSubscript:v14];

          if (v15)
          {
            indexPath = [v15 indexPath];
            [v6 addObject:indexPath];
          }
        }

        v9 = [sectionIndexPathsBeingDeleted countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v9);
    }

    kindCopy = v18;
  }

  return v6;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  section = [pathCopy section];
  if ([kindCopy isEqualToString:@"PUImportSectionedGridLayoutDecorationKindSectionBackground"])
  {
    v9 = [(PUImportSectionedGridLayout *)self createLayoutAttributesForSectionBackgroundAtSection:section];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PUImportSectionedGridLayout;
    v9 = [(PUImportSectionedGridLayout *)&v12 layoutAttributesForDecorationViewOfKind:kindCopy atIndexPath:pathCopy];
  }

  v10 = v9;

  return v10;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = PUImportSectionedGridLayout;
  v8 = [(PUSectionedGridLayout *)&v21 layoutAttributesForElementsInRect:?];
  v9 = [v8 mutableCopy];

  sectionDecorationAttributesBySection = [(PUImportSectionedGridLayout *)self sectionDecorationAttributesBySection];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [sectionDecorationAttributesBySection countByEnumeratingWithState:&v17 objects:v22 count:16];
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
          objc_enumerationMutation(sectionDecorationAttributesBySection);
        }

        v15 = [sectionDecorationAttributesBySection objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i)];
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

      v12 = [sectionDecorationAttributesBySection countByEnumeratingWithState:&v17 objects:v22 count:16];
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

- (void)prepareForCollectionViewUpdates:(id)updates
{
  v20 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = updatesCopy;
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
        indexPathBeforeUpdate = [v11 indexPathBeforeUpdate];
        if ([indexPathBeforeUpdate section] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(indexPathBeforeUpdate, "item") == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([v11 updateAction] == 1)
          {
            [v5 addObject:indexPathBeforeUpdate];
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

- (id)createLayoutAttributesForSectionBackgroundAtSection:(unint64_t)section
{
  [(PUSectionedGridLayout *)self globalTopPadding];
  v6 = v5;
  [(PUSectionedGridLayout *)self sectionTopPadding];
  v8 = v7;
  sectionHeaderElementKind = [(PUSectionedGridLayout *)self sectionHeaderElementKind];
  v10 = [MEMORY[0x1E696AC88] indexPathWithIndex:section];
  v48 = sectionHeaderElementKind;
  v11 = [(PUSectionedGridLayout *)self layoutAttributesForSupplementaryViewOfKind:sectionHeaderElementKind atIndexPath:v10];
  [v11 frame];
  v16 = v12;
  if (section)
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
  collectionView = [(PUImportSectionedGridLayout *)self collectionView];
  dataSource = [collectionView dataSource];
  collectionView2 = [(PUImportSectionedGridLayout *)self collectionView];
  v24 = [dataSource collectionView:collectionView2 numberOfItemsInSection:section];

  if (v24 <= 0)
  {
    v42 = 0.0;
  }

  else
  {
    v47 = v8;
    rect = *(MEMORY[0x1E695F058] + 24);
    v25 = [MEMORY[0x1E696AC88] indexPathForItem:v24 - 1 inSection:section];
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
  emphasizedSectionBackgroundColor = [(PUImportSectionedGridLayout *)self emphasizedSectionBackgroundColor];
  [v20 setBackgroundColor:emphasizedSectionBackgroundColor];

  [(PUImportSectionedGridLayout *)self emphasizedSectionBottomStrokeWidth];
  [v20 setStrokeWidth:?];
  emphasizedSectionBottomStrokeColor = [(PUImportSectionedGridLayout *)self emphasizedSectionBottomStrokeColor];
  [v20 setBottomStrokeColor:emphasizedSectionBottomStrokeColor];

  [v20 setZIndex:-1];

  return v20;
}

- (void)recreateSectionDecorationAttributes
{
  sectionDecorationAttributesBySection = [(PUImportSectionedGridLayout *)self sectionDecorationAttributesBySection];
  [sectionDecorationAttributesBySection removeAllObjects];

  collectionView = [(PUImportSectionedGridLayout *)self collectionView];
  dataSource = [collectionView dataSource];
  collectionView2 = [(PUImportSectionedGridLayout *)self collectionView];
  v7 = [dataSource numberOfSectionsInCollectionView:collectionView2];

  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if (self->_delegateSupportsPerSectionHighlight)
      {
        delegate = [(PUSectionedGridLayout *)self delegate];
        v10 = [delegate importSectionedGridLayout:self shouldEmphasizeSection:i];
      }

      else
      {
        v10 = 0;
      }

      collectionView3 = [(PUImportSectionedGridLayout *)self collectionView];
      dataSource2 = [collectionView3 dataSource];
      collectionView4 = [(PUImportSectionedGridLayout *)self collectionView];
      v14 = [dataSource2 collectionView:collectionView4 numberOfItemsInSection:i];

      if (v10)
      {
        if (v14 >= 1)
        {
          v15 = [(PUImportSectionedGridLayout *)self createLayoutAttributesForSectionBackgroundAtSection:i];
          sectionDecorationAttributesBySection2 = [(PUImportSectionedGridLayout *)self sectionDecorationAttributesBySection];
          v17 = [MEMORY[0x1E696AD98] numberWithInteger:i];
          [sectionDecorationAttributesBySection2 setObject:v15 forKeyedSubscript:v17];
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
  sectionDecorationAttributesBySection = [(PUImportSectionedGridLayout *)self sectionDecorationAttributesBySection];
  v4 = [sectionDecorationAttributesBySection mutableCopy];
  [(PUImportSectionedGridLayout *)self setPreUpdateSectionDecorationAttributesBySection:v4];

  [(PUImportSectionedGridLayout *)self recreateSectionDecorationAttributes];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(PUSectionedGridLayout *)self delegate];

  if (delegate != delegateCopy)
  {
    v9.receiver = self;
    v9.super_class = PUImportSectionedGridLayout;
    [(PUSectionedGridLayout *)&v9 setDelegate:delegateCopy];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    sectionDecorationAttributesBySection = self->_sectionDecorationAttributesBySection;
    self->_sectionDecorationAttributesBySection = dictionary;

    delegate2 = [(PUSectionedGridLayout *)self delegate];
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
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    emphasizedSectionBackgroundColor = v2->_emphasizedSectionBackgroundColor;
    v2->_emphasizedSectionBackgroundColor = secondarySystemBackgroundColor;

    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    emphasizedSectionBottomStrokeColor = v2->_emphasizedSectionBottomStrokeColor;
    v2->_emphasizedSectionBottomStrokeColor = separatorColor;

    px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [px_mainScreen scale];
    v2->_emphasizedSectionBottomStrokeWidth = 1.0 / v8;
  }

  return v2;
}

@end