@interface PUHorizontalCollectionViewLayout
- (BOOL)_shouldInvalidateCachedLayoutForBoundsChange:(CGRect)a3;
- (CGRect)collectionViewBounds;
- (CGSize)collectionViewContentSize;
- (CGSize)itemSize;
- (PUHorizontalCollectionViewLayout)init;
- (PUHorizontalCollectionViewLayoutDelegate)delegate;
- (UIEdgeInsets)itemsContentInset;
- (id)_layoutAttributesForItemAtIndexPath:(id)a3;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)prepareLayout;
- (void)setInteritemSpacing:(double)a3;
- (void)setItemSize:(CGSize)a3;
- (void)setItemsContentInset:(UIEdgeInsets)a3;
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
  v2 = [(PUHorizontalCollectionViewLayout *)self collectionView];
  [v2 bounds];
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

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_lastRequestedRect = &self->_lastRequestedRect;
  if (CGRectEqualToRect(a3, self->_lastRequestedRect) && (lastRequestedLayoutAttributesInRect = self->_lastRequestedLayoutAttributesInRect) != 0)
  {
    v10 = lastRequestedLayoutAttributesInRect;
  }

  else
  {
    v10 = [MEMORY[0x1E695DF70] array];
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
          v24 = v10;
          v25 = v15;
          v26 = v22;
        }

        else
        {
          PUInsertObjectsInRange(v10, v15, v20, [v15 count] - v20);
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

              [(NSArray *)v10 addObjectsFromArray:v28];
              ++v27;
              v15 = v28;
            }

            while (v17 != v27);
          }

          v15 = [(NSArray *)self->_cachedItemLayoutAttributes objectAtIndexedSubscript:v17];

          v23 = v19 + 1;
          v24 = v10;
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
    objc_storeStrong(&self->_lastRequestedLayoutAttributesInRect, v10);
  }

  return v10;
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
    v69 = [(PUHorizontalCollectionViewLayout *)self collectionView];
    v3 = [(PUHorizontalCollectionViewLayout *)self delegate];
    v4 = [v69 numberOfSections];
    v57 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
    v58 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
    [(PUHorizontalCollectionViewLayout *)self interitemSpacing];
    [(PUHorizontalCollectionViewLayout *)self itemsContentInset];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v55 = v11;
    [(PUHorizontalCollectionViewLayout *)self collectionViewBounds];
    v70 = v12 - (v6 + v10);
    [v69 px_screenScale];
    [(PUHorizontalCollectionViewLayout *)self itemSize];
    v56 = v4;
    if (v4 >= 1)
    {
      v13 = 0;
      v14 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
      do
      {
        v17 = [v69 numberOfItemsInSection:v13];
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
            if (v3)
            {
              [v3 layout:self collectionView:v69 sizeForItemAtIndexPath:{v20, MaxX}];
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
        v27 = [v18 firstObject];
        [v27 frame];
        v29 = v28;
        v65 = v31;
        v67 = v30;
        v63 = v32;

        v33 = [v18 lastObject];
        [v33 frame];
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

    v44 = [(NSArray *)self->_cachedItemLayoutAttributes lastObject];

    v45 = [v44 lastObject];
    [v45 frame];
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

- (void)invalidateLayoutWithContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PUHorizontalCollectionViewLayout;
  [(PUHorizontalCollectionViewLayout *)&v9 invalidateLayoutWithContext:v4];
  if (([v4 invalidateCachedLayout] & 1) != 0 || (objc_msgSend(v4, "invalidateDataSourceCounts") & 1) != 0 || objc_msgSend(v4, "invalidateEverything"))
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

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = PUHorizontalCollectionViewLayout;
  v8 = [(PUHorizontalCollectionViewLayout *)&v11 invalidationContextForBoundsChange:?];
  v9 = ([v8 invalidateDataSourceCounts] & 1) != 0 || (objc_msgSend(v8, "invalidateEverything") & 1) != 0 || -[PUHorizontalCollectionViewLayout _shouldInvalidateCachedLayoutForBoundsChange:](self, "_shouldInvalidateCachedLayoutForBoundsChange:", x, y, width, height);
  [v8 _setInvalidateCachedLayout:v9];

  return v8;
}

- (BOOL)_shouldInvalidateCachedLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  [(PUHorizontalCollectionViewLayout *)self collectionViewBounds:a3.origin.x];
  return v4 != height;
}

- (void)setItemsContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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

- (void)setInteritemSpacing:(double)a3
{
  [(PUHorizontalCollectionViewLayout *)self interitemSpacing];
  if (v5 != a3)
  {
    self->_interitemSpacing = a3;

    [(PUHorizontalCollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setItemSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PUHorizontalCollectionViewLayout *)self itemSize];
  if (v7 != width || v6 != height)
  {
    self->_itemSize.width = width;
    self->_itemSize.height = height;

    [(PUHorizontalCollectionViewLayout *)self invalidateLayout];
  }
}

- (id)_layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [v4 item];

  if (v5 >= [(NSArray *)self->_cachedItemLayoutAttributes count])
  {
    v9 = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_cachedItemLayoutAttributes objectAtIndexedSubscript:v5];
    if (v6 >= [v7 count])
    {
      v9 = 0;
    }

    else
    {
      v8 = [(NSArray *)self->_cachedItemLayoutAttributes objectAtIndexedSubscript:v5];
      v9 = [v8 objectAtIndexedSubscript:v6];
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