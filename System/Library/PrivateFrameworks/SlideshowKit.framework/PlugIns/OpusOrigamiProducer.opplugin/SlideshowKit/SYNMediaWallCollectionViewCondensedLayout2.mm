@interface SYNMediaWallCollectionViewCondensedLayout2
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGSize)collectionViewContentSize;
- (SYNMediaWallCollectionViewCondensedLayout2)init;
- (float)spacingRatio;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path;
- (id)indexPathsForItemsInRect:(CGRect)rect;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (unint64_t)numberOfRows;
- (void)dealloc;
- (void)finalizeAnimatedBoundsChange;
- (void)invalidateLayout;
- (void)prepareLayout;
- (void)setNumberOfRows:(unint64_t)rows;
- (void)setSpacingRatio:(float)ratio;
@end

@implementation SYNMediaWallCollectionViewCondensedLayout2

- (SYNMediaWallCollectionViewCondensedLayout2)init
{
  v5.receiver = self;
  v5.super_class = SYNMediaWallCollectionViewCondensedLayout2;
  v2 = [(SYNMediaWallCollectionViewCondensedLayout2 *)&v5 init];
  if (v2)
  {
    v2->_attributes = objc_alloc_init(NSMutableArray);
    v2->_sectionAttributes = objc_alloc_init(NSMutableArray);
    v2->_largestWidth = 0.0;
    v2->_contentSize = CGSizeZero;
    v2->_spacingRatio = 0.05;
    v2->_numberOfRows = 3;
    size = CGRectZero.size;
    v2->_oldBounds.origin = CGRectZero.origin;
    v2->_oldBounds.size = size;
  }

  return v2;
}

- (void)dealloc
{
  self->_attributes = 0;

  self->_sectionAttributes = 0;
  v3.receiver = self;
  v3.super_class = SYNMediaWallCollectionViewCondensedLayout2;
  [(SYNMediaWallCollectionViewCondensedLayout2 *)&v3 dealloc];
}

- (float)spacingRatio
{
  objc_sync_enter(self);
  spacingRatio = self->_spacingRatio;
  objc_sync_exit(self);
  return spacingRatio;
}

- (void)setSpacingRatio:(float)ratio
{
  objc_sync_enter(self);
  if (self->_spacingRatio != ratio)
  {
    self->_spacingRatio = ratio;
    [(SYNMediaWallCollectionViewCondensedLayout2 *)self invalidateLayout];
  }

  objc_sync_exit(self);
}

- (unint64_t)numberOfRows
{
  objc_sync_enter(self);
  numberOfRows = self->_numberOfRows;
  objc_sync_exit(self);
  return numberOfRows;
}

- (void)setNumberOfRows:(unint64_t)rows
{
  objc_sync_enter(self);
  if (self->_numberOfRows != rows)
  {
    self->_numberOfRows = rows;
    [(SYNMediaWallCollectionViewCondensedLayout2 *)self invalidateLayout];
  }

  objc_sync_exit(self);
}

- (id)indexPathsForItemsInRect:(CGRect)rect
{
  width = rect.size.width;
  x = rect.origin.x;
  v6 = [NSMutableArray array:rect.origin.x];
  objc_sync_enter(self);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  attributes = self->_attributes;
  v8 = [(NSMutableArray *)attributes countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    v10 = x + width;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(attributes);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        [v12 frame];
        if (v13 <= v10)
        {
          [v12 frame];
          v15 = v14;
          [v12 frame];
          v13 = v15 + v16;
          if (v15 + v16 >= x)
          {
            [v6 addObject:{objc_msgSend(v12, "indexPath", v13)}];
          }
        }
      }

      v8 = [(NSMutableArray *)attributes countByEnumeratingWithState:&v18 objects:v22 count:16, v13];
    }

    while (v8);
  }

  objc_sync_exit(self);
  return v6;
}

- (void)invalidateLayout
{
  v3.receiver = self;
  v3.super_class = SYNMediaWallCollectionViewCondensedLayout2;
  [(SYNMediaWallCollectionViewCondensedLayout2 *)&v3 invalidateLayout];
  objc_sync_enter(self);
  [(NSMutableArray *)self->_attributes removeAllObjects];
  [(NSMutableArray *)self->_sectionAttributes removeAllObjects];
  self->_largestWidth = 0.0;
  self->_contentSize = CGSizeZero;
  objc_sync_exit(self);
}

- (void)prepareLayout
{
  v41.receiver = self;
  v41.super_class = SYNMediaWallCollectionViewCondensedLayout2;
  [(SYNMediaWallCollectionViewCondensedLayout2 *)&v41 prepareLayout];
  objc_sync_enter(self);
  [(NSMutableArray *)self->_attributes removeAllObjects];
  [(NSMutableArray *)self->_sectionAttributes removeAllObjects];
  if ([-[SYNMediaWallCollectionViewCondensedLayout2 collectionView](self "collectionView")])
  {
    v37 = [objc_msgSend(-[SYNMediaWallCollectionViewCondensedLayout2 collectionView](self "collectionView")];
    [-[SYNMediaWallCollectionViewCondensedLayout2 collectionView](self "collectionView")];
    p_contentSize = &self->_contentSize;
    self->_contentSize = CGSizeZero;
    if (v37 >= 1)
    {
      v4 = v3;
      v39 = 0;
      numberOfRows = self->_numberOfRows;
      v6 = (self->_spacingRatio * v4) / numberOfRows;
      v7 = floorf((v4 - (v6 * (numberOfRows + 1))) / numberOfRows);
      v38 = v4;
      v8 = v7;
      v9 = v6 + v7;
      v10 = v6;
      do
      {
        v11 = [objc_msgSend(-[SYNMediaWallCollectionViewCondensedLayout2 collectionView](self "collectionView")];
        [-[SYNMediaWallCollectionViewCondensedLayout2 collectionView](self "collectionView")];
        objc_opt_respondsToSelector();
        [(NSMutableArray *)self->_sectionAttributes addObject:+[NSNull null]];
        width = p_contentSize->width;
        [-[SYNMediaWallCollectionViewCondensedLayout2 collectionView](self "collectionView")];
        p_contentSize->width = CGSizeZero.width + width;
        self->_contentSize.height = v13;
        v14 = malloc_type_calloc(self->_numberOfRows, 4uLL, 0x100004052888210uLL);
        v15 = objc_alloc_init(NSMutableArray);
        v17 = self->_numberOfRows;
        if (v17)
        {
          while (1)
          {
            bzero(v14, 4 * self->_numberOfRows);
            if (v11 < 1)
            {
              v35 = 0.0;
            }

            else
            {
              v18 = 0;
              v19 = 0;
              v20 = 0.0;
              do
              {
                v21 = [NSIndexPath indexPathForItem:v19 inSection:v39];
                v22 = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:v21];
                v23 = [objc_msgSend(-[SYNMediaWallCollectionViewCondensedLayout2 collectionView](self "collectionView")];
                v24 = *(v14 + v18);
                [objc_msgSend(objc_msgSend(-[SYNMediaWallCollectionViewCondensedLayout2 collectionView](self "collectionView")];
                v27 = v25 / v26 * v8;
                v28 = p_contentSize->width + (v6 + v24);
                v29 = v27 + v10 + *(v14 + v18);
                *(v14 + v18) = v29;
                [(UICollectionViewLayoutAttributes *)v22 setFrame:v28, (v6 + (v9 * v18))];
                largestWidth = self->_largestWidth;
                if (largestWidth == 0.0 || ([(UICollectionViewLayoutAttributes *)v22 frame], largestWidth < v31))
                {
                  [(UICollectionViewLayoutAttributes *)v22 frame];
                  self->_largestWidth = v32;
                }

                [v15 addObject:v22];
                v33 = *(v14 + v18);
                if (v18 + 1 < v17)
                {
                  v34 = v18 + 1;
                }

                else
                {
                  v34 = 0;
                }

                if (v33 >= v20)
                {
                  v18 = v34;
                  v20 = v33;
                }

                ++v19;
              }

              while (v11 != v19);
              v35 = v20;
            }

            [-[SYNMediaWallCollectionViewCondensedLayout2 collectionView](self "collectionView")];
            if (!--v17)
            {
              break;
            }

            v16 = v36 * 0.75;
            if (v36 * 0.75 <= v35)
            {
              break;
            }

            [v15 removeAllObjects];
          }
        }

        else
        {
          v35 = 0.0;
        }

        [(NSMutableArray *)self->_attributes addObjectsFromArray:v15, v16];

        free(v14);
        p_contentSize->width = p_contentSize->width + v35 + v10;
        self->_contentSize.height = v38;
        ++v39;
      }

      while (v39 != v37);
    }
  }

  objc_sync_exit(self);
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  objc_sync_enter(self);
  v8 = +[NSMutableArray array];
  height = [(SYNMediaWallCollectionViewCondensedLayout2 *)self indexPathsForItemsInRect:x, y, width, height];
  v10 = +[NSMutableSet set];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = [height countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v11)
  {
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(height);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = +[NSIndexPath indexPathWithIndex:](NSIndexPath, "indexPathWithIndex:", [v14 section]);
        if (([v10 containsObject:v15] & 1) == 0)
        {
          [v10 addObject:v15];
        }

        [v8 addObject:{-[SYNMediaWallCollectionViewCondensedLayout2 layoutAttributesForItemAtIndexPath:](self, "layoutAttributesForItemAtIndexPath:", v14)}];
      }

      v11 = [height countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v16)
  {
    v17 = *v27;
    v18 = x + width;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v10);
        }

        v20 = -[NSMutableArray objectAtIndex:](self->_sectionAttributes, "objectAtIndex:", [*(*(&v26 + 1) + 8 * j) indexAtPosition:0]);
        if (([v20 isEqual:{+[NSNull null](NSNull, "null")}] & 1) == 0)
        {
          [v20 frame];
          if (v21 <= v18)
          {
            [v20 frame];
            v23 = v22;
            [v20 frame];
            v21 = v23 + v24;
            if (v23 + v24 >= x)
            {
              [v8 addObject:{v20, v21}];
            }
          }
        }
      }

      v16 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:{16, v21}];
    }

    while (v16);
  }

  objc_sync_exit(self);
  return v8;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  objc_sync_enter(self);
  v5 = -[NSMutableArray objectAtIndex:](self->_attributes, "objectAtIndex:", [objc_msgSend(-[SYNMediaWallCollectionViewCondensedLayout2 collectionView](self "collectionView")]);
  objc_sync_exit(self);
  return v5;
}

- (CGSize)collectionViewContentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  [-[SYNMediaWallCollectionViewCondensedLayout2 collectionView](self "collectionView")];
  if (v5 >= width)
  {
    width = v5;
  }

  [-[SYNMediaWallCollectionViewCondensedLayout2 collectionView](self "collectionView")];
  if (v6 >= height)
  {
    v7 = v6;
  }

  else
  {
    v7 = height;
  }

  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  Height = CGRectGetHeight(change);
  [-[SYNMediaWallCollectionViewCondensedLayout2 collectionView](self "collectionView")];
  return Height != CGRectGetHeight(v6);
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  if (![kind isEqualToString:UICollectionElementKindSectionHeader])
  {
    return 0;
  }

  v6 = -[NSMutableArray objectAtIndex:](self->_sectionAttributes, "objectAtIndex:", [path indexAtPosition:0]);
  if ([v6 isEqual:{+[NSNull null](NSNull, "null")}])
  {
    return 0;
  }

  return v6;
}

- (void)finalizeAnimatedBoundsChange
{
  size = CGRectZero.size;
  self->_oldBounds.origin = CGRectZero.origin;
  self->_oldBounds.size = size;
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path
{
  v4.receiver = self;
  v4.super_class = SYNMediaWallCollectionViewCondensedLayout2;
  return [(SYNMediaWallCollectionViewCondensedLayout2 *)&v4 initialLayoutAttributesForAppearingItemAtIndexPath:path];
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path
{
  v4.receiver = self;
  v4.super_class = SYNMediaWallCollectionViewCondensedLayout2;
  return [(SYNMediaWallCollectionViewCondensedLayout2 *)&v4 finalLayoutAttributesForDisappearingItemAtIndexPath:path];
}

@end