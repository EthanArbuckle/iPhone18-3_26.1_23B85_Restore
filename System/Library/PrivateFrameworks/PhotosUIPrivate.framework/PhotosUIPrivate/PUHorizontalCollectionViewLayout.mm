@interface PUHorizontalCollectionViewLayout
- (BOOL)_shouldInvalidateCachedLayoutForBoundsChange:(CGRect)change;
- (CGRect)collectionViewBounds;
- (CGSize)collectionViewContentSize;
- (CGSize)itemSize;
- (PUHorizontalCollectionViewLayout)init;
- (PUHorizontalCollectionViewLayoutDelegate)delegate;
- (UIEdgeInsets)itemsContentInset;
- (id)_layoutAttributesForItemAtIndexPath:(id)path;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (void)invalidateLayoutWithContext:(id)context;
- (void)prepareLayout;
- (void)setInteritemSpacing:(double)spacing;
- (void)setItemSize:(CGSize)size;
- (void)setItemsContentInset:(UIEdgeInsets)inset;
@end

@implementation PUHorizontalCollectionViewLayout

- (PUHorizontalCollectionViewLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)itemsContentInset
{
  top = self->_itemsContentInset.top;
  left = self->_itemsContentInset.left;
  bottom = self->_itemsContentInset.bottom;
  right = self->_itemsContentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)itemSize
{
  width = self->_itemSize.width;
  height = self->_itemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)collectionViewBounds
{
  collectionView = [(PUHorizontalCollectionViewLayout *)self collectionView];
  [collectionView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_lastRequestedRect = &self->_lastRequestedRect;
  if (CGRectEqualToRect(rect, self->_lastRequestedRect) && (lastRequestedLayoutAttributesInRect = self->_lastRequestedLayoutAttributesInRect) != 0)
  {
    array = lastRequestedLayoutAttributesInRect;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v11 = objc_alloc_init(MEMORY[0x1E69DC858]);
    [v11 setFrame:{x, y, width, height}];
    v12 = [(NSArray *)self->_cachedSectionFrames count];
    v13 = [(NSArray *)self->_cachedSectionFrames indexOfObject:v11 inSortedRange:0 options:v12 usingComparator:256, &__block_literal_global_28070];
    v14 = [(NSArray *)self->_cachedSectionFrames indexOfObject:v11 inSortedRange:0 options:v12 usingComparator:512, &__block_literal_global_28070];
    v15 = 0;
    if (v13 != 0x7FFFFFFFFFFFFFFFLL && v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = v14;
      v18 = [(NSArray *)self->_cachedItemLayoutAttributes objectAtIndexedSubscript:v14];
      v19 = [v18 indexOfObject:v11 inSortedRange:0 options:objc_msgSend(v18 usingComparator:{"count"), 512, &__block_literal_global_28070}];
      v15 = [(NSArray *)self->_cachedItemLayoutAttributes objectAtIndexedSubscript:v13];

      v20 = [v15 indexOfObject:v11 inSortedRange:0 options:objc_msgSend(v15 usingComparator:{"count"), 256, &__block_literal_global_28070}];
      if (v20 != 0x7FFFFFFFFFFFFFFFLL && v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v22 = v20;
        if (v13 == v17)
        {
          v23 = v19 - v20 + 1;
          v24 = array;
          v25 = v15;
          v26 = v22;
        }

        else
        {
          PUInsertObjectsInRange(array, v15, v20, [v15 count] - v20);
          v27 = v13 + 1;
          if (v27 >= v17)
          {
            v28 = v15;
          }

          else
          {
            do
            {
              v28 = [(NSArray *)self->_cachedItemLayoutAttributes objectAtIndexedSubscript:v27];

              [(NSArray *)array addObjectsFromArray:v28];
              ++v27;
              v15 = v28;
            }

            while (v17 != v27);
          }

          v15 = [(NSArray *)self->_cachedItemLayoutAttributes objectAtIndexedSubscript:v17];

          v23 = v19 + 1;
          v24 = array;
          v25 = v15;
          v26 = 0;
        }

        PUInsertObjectsInRange(v24, v25, v26, v23);
      }
    }

    p_lastRequestedRect->origin.x = x;
    p_lastRequestedRect->origin.y = y;
    p_lastRequestedRect->size.width = width;
    p_lastRequestedRect->size.height = height;
    objc_storeStrong(&self->_lastRequestedLayoutAttributesInRect, array);
  }

  return array;
}

uint64_t __70__PUHorizontalCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  rect = v6;
  v25.origin.x = v6;
  v25.origin.y = v8;
  v25.size.width = v10;
  v25.size.height = v12;
  MaxX = CGRectGetMaxX(v25);
  v26.origin.x = v14;
  v26.origin.y = v16;
  v26.size.width = v18;
  v26.size.height = v20;
  if (MaxX < CGRectGetMinX(v26))
  {
    return -1;
  }

  v27.origin.x = rect;
  v27.origin.y = v8;
  v27.size.width = v10;
  v27.size.height = v12;
  MinX = CGRectGetMinX(v27);
  v28.origin.x = v14;
  v28.origin.y = v16;
  v28.size.width = v18;
  v28.size.height = v20;
  return MinX > CGRectGetMaxX(v28);
}

- (CGSize)collectionViewContentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)prepareLayout
{
  if (!self->_cachedItemLayoutAttributes || !self->_cachedSectionFrames)
  {
    collectionView = [(PUHorizontalCollectionViewLayout *)self collectionView];
    delegate = [(PUHorizontalCollectionViewLayout *)self delegate];
    numberOfSections = [collectionView numberOfSections];
    v57 = [MEMORY[0x1E695DF70] arrayWithCapacity:numberOfSections];
    v58 = [MEMORY[0x1E695DF70] arrayWithCapacity:numberOfSections];
    [(PUHorizontalCollectionViewLayout *)self interitemSpacing];
    [(PUHorizontalCollectionViewLayout *)self itemsContentInset];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v55 = v11;
    [(PUHorizontalCollectionViewLayout *)self collectionViewBounds];
    v70 = v12 - (v6 + v10);
    [collectionView px_screenScale];
    [(PUHorizontalCollectionViewLayout *)self itemSize];
    v56 = numberOfSections;
    if (numberOfSections >= 1)
    {
      v13 = 0;
      v14 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
      do
      {
        v17 = [collectionView numberOfItemsInSection:v13];
        v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:v17];
        if (v17 >= 1)
        {
          for (i = 0; i != v17; ++i)
          {
            v20 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:v13];
            v72.origin.x = v8;
            v72.origin.y = v14;
            v72.size.width = v15;
            v72.size.height = v16;
            MaxX = CGRectGetMaxX(v72);
            if (delegate)
            {
              [delegate layout:self collectionView:collectionView sizeForItemAtIndexPath:{v20, MaxX}];
            }

            UIRectIntegralWithScale();
            v8 = v22;
            v14 = v23;
            v15 = v24;
            v16 = v25;
            v26 = [MEMORY[0x1E69DC858] layoutAttributesForCellWithIndexPath:v20];
            [v26 setFrame:{v8, v14, v15, v16}];
            [v18 addObject:v26];
          }
        }

        [(NSArray *)v57 addObject:v18];
        firstObject = [v18 firstObject];
        [firstObject frame];
        v29 = v28;
        v65 = v31;
        v67 = v30;
        v63 = v32;

        lastObject = [v18 lastObject];
        [lastObject frame];
        v61 = v35;
        v62 = v34;
        r2 = v37;
        v60 = v36;

        v73.origin.x = v29;
        v73.size.width = v65;
        v73.origin.y = v67;
        v76.origin.x = v62;
        v73.size.height = v63;
        v76.size.width = v60;
        v76.origin.y = v61;
        v76.size.height = r2;
        v74 = CGRectUnion(v73, v76);
        x = v74.origin.x;
        width = v74.size.width;
        y = v74.origin.y;
        height = v74.size.height;
        v39 = objc_alloc_init(MEMORY[0x1E69DC858]);
        [v39 setFrame:{x, y, width, height}];
        [(NSArray *)v58 addObject:v39];

        ++v13;
      }

      while (v13 != v56);
    }

    cachedItemLayoutAttributes = self->_cachedItemLayoutAttributes;
    self->_cachedItemLayoutAttributes = v57;
    v41 = v57;

    cachedSectionFrames = self->_cachedSectionFrames;
    self->_cachedSectionFrames = v58;
    v43 = v58;

    lastObject2 = [(NSArray *)self->_cachedItemLayoutAttributes lastObject];

    v44LastObject = [lastObject2 lastObject];
    [v44LastObject frame];
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;

    p_contentSize = &self->_contentSize;
    v75.origin.x = v47;
    v75.origin.y = v49;
    v75.size.width = v51;
    v75.size.height = v53;
    p_contentSize->width = v55 + CGRectGetMaxX(v75);
    p_contentSize->height = v70;
  }
}

- (void)invalidateLayoutWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = PUHorizontalCollectionViewLayout;
  [(PUHorizontalCollectionViewLayout *)&v9 invalidateLayoutWithContext:contextCopy];
  if (([contextCopy invalidateCachedLayout] & 1) != 0 || (objc_msgSend(contextCopy, "invalidateDataSourceCounts") & 1) != 0 || objc_msgSend(contextCopy, "invalidateEverything"))
  {
    cachedItemLayoutAttributes = self->_cachedItemLayoutAttributes;
    self->_cachedItemLayoutAttributes = 0;

    cachedSectionFrames = self->_cachedSectionFrames;
    self->_cachedSectionFrames = 0;

    v7 = *(MEMORY[0x1E695F050] + 16);
    self->_lastRequestedRect.origin = *MEMORY[0x1E695F050];
    self->_lastRequestedRect.size = v7;
    lastRequestedLayoutAttributesInRect = self->_lastRequestedLayoutAttributesInRect;
    self->_lastRequestedLayoutAttributesInRect = 0;
  }
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  v11.receiver = self;
  v11.super_class = PUHorizontalCollectionViewLayout;
  v8 = [(PUHorizontalCollectionViewLayout *)&v11 invalidationContextForBoundsChange:?];
  v9 = ([v8 invalidateDataSourceCounts] & 1) != 0 || (objc_msgSend(v8, "invalidateEverything") & 1) != 0 || -[PUHorizontalCollectionViewLayout _shouldInvalidateCachedLayoutForBoundsChange:](self, "_shouldInvalidateCachedLayoutForBoundsChange:", x, y, width, height);
  [v8 _setInvalidateCachedLayout:v9];

  return v8;
}

- (BOOL)_shouldInvalidateCachedLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  [(PUHorizontalCollectionViewLayout *)self collectionViewBounds:change.origin.x];
  return v4 != height;
}

- (void)setItemsContentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  [(PUHorizontalCollectionViewLayout *)self itemsContentInset];
  if (v11 != left || v8 != top || v10 != right || v9 != bottom)
  {
    self->_itemsContentInset.top = top;
    self->_itemsContentInset.left = left;
    self->_itemsContentInset.bottom = bottom;
    self->_itemsContentInset.right = right;
    v15 = objc_alloc_init(PUHorizontalCollectionViewLayoutInvalidationContext);
    [(PUHorizontalCollectionViewLayoutInvalidationContext *)v15 _setInvalidateCachedLayout:1];
    [(PUHorizontalCollectionViewLayout *)self invalidateLayoutWithContext:v15];
  }
}

- (void)setInteritemSpacing:(double)spacing
{
  [(PUHorizontalCollectionViewLayout *)self interitemSpacing];
  if (v5 != spacing)
  {
    self->_interitemSpacing = spacing;

    [(PUHorizontalCollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setItemSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PUHorizontalCollectionViewLayout *)self itemSize];
  if (v7 != width || v6 != height)
  {
    self->_itemSize.width = width;
    self->_itemSize.height = height;

    [(PUHorizontalCollectionViewLayout *)self invalidateLayout];
  }
}

- (id)_layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  item = [pathCopy item];

  if (section >= [(NSArray *)self->_cachedItemLayoutAttributes count])
  {
    v9 = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_cachedItemLayoutAttributes objectAtIndexedSubscript:section];
    if (item >= [v7 count])
    {
      v9 = 0;
    }

    else
    {
      v8 = [(NSArray *)self->_cachedItemLayoutAttributes objectAtIndexedSubscript:section];
      v9 = [v8 objectAtIndexedSubscript:item];
    }
  }

  return v9;
}

- (PUHorizontalCollectionViewLayout)init
{
  v6.receiver = self;
  v6.super_class = PUHorizontalCollectionViewLayout;
  v2 = [(PUHorizontalCollectionViewLayout *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = *(MEMORY[0x1E695F050] + 16);
    v2->_lastRequestedRect.origin = *MEMORY[0x1E695F050];
    v2->_lastRequestedRect.size = v4;
    [(PUHorizontalCollectionViewLayout *)v2 setItemSize:50.0, 50.0];
  }

  return v3;
}

@end