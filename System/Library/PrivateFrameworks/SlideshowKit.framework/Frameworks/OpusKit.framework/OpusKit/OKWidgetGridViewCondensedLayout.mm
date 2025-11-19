@interface OKWidgetGridViewCondensedLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (BOOL)shouldUpdateVisibleCellLayoutAttributes;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4;
- (CGSize)collectionViewContentSize;
- (OKWidgetGridViewCondensedLayout)init;
- (float)spacingRatio;
- (id)indexPathsForItemsInRect:(CGRect)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (unint64_t)numberOfRows;
- (void)dealloc;
- (void)finalizeAnimatedBoundsChange;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)prepareLayout;
- (void)setNumberOfRows:(unint64_t)a3;
- (void)setSpacingRatio:(float)a3;
@end

@implementation OKWidgetGridViewCondensedLayout

- (OKWidgetGridViewCondensedLayout)init
{
  v5.receiver = self;
  v5.super_class = OKWidgetGridViewCondensedLayout;
  v2 = [(OKWidgetGridViewCondensedLayout *)&v5 init];
  if (v2)
  {
    *(v2 + 37) = objc_alloc_init(MEMORY[0x277CBEB18]);
    *(v2 + 38) = 0;
    *(v2 + 312) = *MEMORY[0x277CBF3A8];
    *(v2 + 68) = 1028443341;
    *(v2 + 35) = 3;
    v2[288] = 0;
    v3 = *(MEMORY[0x277CBF3A0] + 16);
    *(v2 + 328) = *MEMORY[0x277CBF3A0];
    *(v2 + 344) = v3;
  }

  return v2;
}

- (void)dealloc
{
  attributes = self->_attributes;
  if (attributes)
  {

    self->_attributes = 0;
  }

  v4.receiver = self;
  v4.super_class = OKWidgetGridViewCondensedLayout;
  [(OKWidgetGridViewCondensedLayout *)&v4 dealloc];
}

- (float)spacingRatio
{
  objc_sync_enter(self);
  spacingRatio = self->_spacingRatio;
  objc_sync_exit(self);
  return spacingRatio;
}

- (void)setSpacingRatio:(float)a3
{
  objc_sync_enter(self);
  if (self->_spacingRatio != a3)
  {
    self->_spacingRatio = a3;
    [(OKWidgetGridViewCondensedLayout *)self invalidateLayout];
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

- (void)setNumberOfRows:(unint64_t)a3
{
  objc_sync_enter(self);
  if (self->_numberOfRows != a3)
  {
    self->_numberOfRows = a3;
    [(OKWidgetGridViewCondensedLayout *)self invalidateLayout];
  }

  objc_sync_exit(self);
}

- (id)indexPathsForItemsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  objc_sync_enter(self);
  v8 = [(NSMutableArray *)self->_attributes count];
  v9 = v8;
  if (v8)
  {
    v10 = 0;
    if (v8 == 1)
    {
      goto LABEL_15;
    }

    v11 = 0;
    v12 = x + width;
    v13 = v8;
    while (1)
    {
      v10 = llroundf(vcvts_n_f32_u64(v13 + v11 - 1, 1uLL));
      v14 = [(NSMutableArray *)self->_attributes objectAtIndex:v10];
      [v14 frame];
      if (v15 >= x)
      {
        [v14 frame];
        if (v16 <= v12)
        {
          break;
        }
      }

      [v14 frame];
      v18 = v17;
      [v14 frame];
      if (v18 + v19 >= x)
      {
        [v14 frame];
        v21 = v20;
        [v14 frame];
        if (v21 + v22 <= v12)
        {
          break;
        }
      }

      v66.origin.x = x;
      v66.origin.y = y;
      v66.size.width = width;
      v66.size.height = height;
      MidX = CGRectGetMidX(v66);
      [v14 frame];
      if (MidX > CGRectGetMidX(v67))
      {
        v11 = v10;
      }

      else
      {
        v13 = v10;
      }

      if (v13 - v11 <= 1)
      {
        goto LABEL_14;
      }
    }

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_15:
      v24 = [MEMORY[0x277CBEB18] array];
      v68.origin.x = x;
      v68.origin.y = y;
      v68.size.width = width;
      v68.size.height = height;
      v69 = CGRectInset(v68, -self->_largestWidth, 0.0);
      v25 = v69.origin.x;
      v26 = v69.origin.x + v69.size.width;
      if ((v10 & 0x8000000000000000) == 0)
      {
        v27 = x + width;
        for (i = v10; ; --i)
        {
          v29 = [(NSMutableArray *)self->_attributes objectAtIndex:i];
          [v29 frame];
          if (v30 >= x)
          {
            [v29 frame];
            if (v31 <= v27)
            {
              break;
            }
          }

          [v29 frame];
          v33 = v32;
          [v29 frame];
          v31 = v33 + v34;
          if (v33 + v34 >= x)
          {
            [v29 frame];
            v36 = v35;
            [v29 frame];
            v31 = v36 + v37;
            if (v36 + v37 <= v27)
            {
              break;
            }
          }

          [v29 frame];
          if (v38 >= v25)
          {
            [v29 frame];
            if (v69.origin.x <= v26)
            {
              goto LABEL_31;
            }
          }

          [v29 frame];
          v40 = v39;
          [v29 frame];
          v69.origin.x = v40 + v41;
          if (v40 + v41 < v25)
          {
            goto LABEL_33;
          }

          [v29 frame];
          v43 = v42;
          [v29 frame];
          v69.origin.x = v43 + v44;
          if (v43 + v44 > v26 || i <= 0)
          {
            goto LABEL_33;
          }

LABEL_32:
          ;
        }

        [v24 addObject:{objc_msgSend(v29, "indexPath", v31)}];
LABEL_31:
        if (i < 1)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

LABEL_33:
      v46 = v10 + 1;
      if (v46 >= v9)
      {
        goto LABEL_49;
      }

      v47 = x + width;
      while (1)
      {
        while (1)
        {
          v48 = [(NSMutableArray *)self->_attributes objectAtIndex:v46, v69.origin.x, v69.origin.y];
          [v48 frame];
          if (v49 < x || ([v48 frame], v50 > v47))
          {
            [v48 frame];
            v52 = v51;
            [v48 frame];
            v50 = v52 + v53;
            if (v52 + v53 < x)
            {
              break;
            }

            [v48 frame];
            v55 = v54;
            [v48 frame];
            v50 = v55 + v56;
            if (v55 + v56 > v47)
            {
              break;
            }
          }

          [v24 addObject:{objc_msgSend(v48, "indexPath", v50)}];
LABEL_48:
          if (++v46 >= v9)
          {
            goto LABEL_49;
          }
        }

        [v48 frame];
        if (v57 >= v25)
        {
          [v48 frame];
          if (v69.origin.x <= v26)
          {
            goto LABEL_48;
          }
        }

        [v48 frame];
        v59 = v58;
        [v48 frame];
        if (v59 + v60 >= v25)
        {
          [v48 frame];
          v62 = v61;
          [v48 frame];
          v69.origin.x = v62 + v63;
          ++v46;
          if (v62 + v63 <= v26 && v46 < v9)
          {
            continue;
          }
        }

        goto LABEL_49;
      }
    }
  }

LABEL_14:
  v24 = 0;
LABEL_49:
  objc_sync_exit(self);
  return v24;
}

- (void)invalidateLayoutWithContext:(id)a3
{
  objc_sync_enter(self);
  [(NSMutableArray *)self->_attributes removeAllObjects];
  self->_largestWidth = 0.0;
  self->_contentSize = *MEMORY[0x277CBF3A8];
  objc_sync_exit(self);
  v5.receiver = self;
  v5.super_class = OKWidgetGridViewCondensedLayout;
  [(OKWidgetGridViewCondensedLayout *)&v5 invalidateLayoutWithContext:a3];
}

- (void)prepareLayout
{
  v36.receiver = self;
  v36.super_class = OKWidgetGridViewCondensedLayout;
  [(OKWidgetGridViewCondensedLayout *)&v36 prepareLayout];
  objc_sync_enter(self);
  [(NSMutableArray *)self->_attributes removeAllObjects];
  if ([-[OKWidgetGridViewCondensedLayout collectionView](self "collectionView")])
  {
    v35 = [objc_msgSend(-[OKWidgetGridViewCondensedLayout collectionView](self "collectionView")];
    [-[OKWidgetGridViewCondensedLayout collectionView](self "collectionView")];
    p_contentSize = &self->_contentSize;
    v5 = MEMORY[0x277CBF3A8];
    self->_contentSize = *MEMORY[0x277CBF3A8];
    if (v35 >= 1)
    {
      v6 = 0;
      v7 = v3;
      numberOfRows = self->_numberOfRows;
      v9 = (self->_spacingRatio * v7) / numberOfRows;
      v10 = ceilf((v7 - (v9 * (numberOfRows + 1))) / numberOfRows);
      v34 = *v5;
      v11 = v9;
      v12 = v7;
      while (1)
      {
        v13 = [objc_msgSend(-[OKWidgetGridViewCondensedLayout collectionView](self collectionView];
        width = p_contentSize->width;
        [-[OKWidgetGridViewCondensedLayout collectionView](self "collectionView")];
        p_contentSize->width = v34 + width;
        self->_contentSize.height = v15;
        v16 = malloc_type_calloc(self->_numberOfRows, 4uLL, 0x100004052888210uLL);
        v17 = v16;
        if (v13 >= 1)
        {
          break;
        }

        v33 = 0.0;
        if (v16)
        {
          goto LABEL_20;
        }

LABEL_21:
        p_contentSize->width = p_contentSize->width + v33 + v11;
        self->_contentSize.height = v12;
        if (++v6 == v35)
        {
          goto LABEL_22;
        }
      }

      v18 = 0;
      v19 = 0;
      v20 = 0.0;
      do
      {
        v21 = [MEMORY[0x277CCAA70] indexPathForItem:v19 inSection:v6];
        v22 = [MEMORY[0x277D75308] layoutAttributesForCellWithIndexPath:v21];
        [-[OKWidgetGridViewCondensedLayout collectionView](self "collectionView")];
        if (objc_opt_respondsToSelector())
        {
          v23 = [objc_msgSend(-[OKWidgetGridViewCondensedLayout collectionView](self "collectionView")];
        }

        else
        {
          v23 = 0;
        }

        v24 = v17[v18];
        [v23 contentAspectRatio];
        v26 = ceilf(v10 * v25);
        v27 = p_contentSize->width + ceilf(v9 + v24);
        v28 = v11 + v26 + v17[v18];
        v17[v18] = v28;
        [v22 setFrame:{v27, ceilf(v9 + ((v9 + v10) * v18))}];
        largestWidth = self->_largestWidth;
        if (largestWidth == 0.0 || ([v22 frame], largestWidth < v30))
        {
          [v22 frame];
          self->_largestWidth = v31;
        }

        [(NSMutableArray *)self->_attributes addObject:v22];
        v32 = v17[v18];
        if (v32 >= v20)
        {
          if (v18 + 1 < self->_numberOfRows)
          {
            ++v18;
          }

          else
          {
            v18 = 0;
          }

          v20 = v32;
        }

        ++v19;
      }

      while (v13 != v19);
      v33 = v20;
LABEL_20:
      free(v17);
      goto LABEL_21;
    }
  }

LABEL_22:
  objc_sync_exit(self);
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v23 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [(OKWidgetGridViewCondensedLayout *)self indexPathsForItemsInRect:x, y, width, height];
  v10 = [MEMORY[0x277CBEB58] set];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [MEMORY[0x277CCAA70] indexPathWithIndex:{objc_msgSend(v14, "section")}];
        if (([v10 containsObject:v15] & 1) == 0)
        {
          [v10 addObject:v15];
        }

        v16 = [(OKWidgetGridViewCondensedLayout *)self layoutAttributesForItemAtIndexPath:v14];
        if (v16)
        {
          [v8 addObject:v16];
        }

        else if (*MEMORY[0x277D62808] >= 4)
        {
          [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Widgets/OKWidgetGridViewCondensedLayout.m" line:358 andFormat:@"%s layout missing", "-[OKWidgetGridViewCondensedLayout layoutAttributesForElementsInRect:]"];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  objc_sync_exit(self);
  return v8;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  objc_sync_enter(self);
  v6 = [(NSMutableArray *)self->_attributes count];
  v7 = [a3 row];
  if (v6 > v7)
  {
    v3 = -[NSMutableArray objectAtIndex:](self->_attributes, "objectAtIndex:", [a3 row]);
  }

  objc_sync_exit(self);
  if (v6 <= v7)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (CGSize)collectionViewContentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  [-[OKWidgetGridViewCondensedLayout collectionView](self "collectionView")];
  if (v5 > width)
  {
    [-[OKWidgetGridViewCondensedLayout collectionView](self "collectionView")];
    width = v6;
  }

  [-[OKWidgetGridViewCondensedLayout collectionView](self "collectionView")];
  if (v7 > height)
  {
    [-[OKWidgetGridViewCondensedLayout collectionView](self "collectionView")];
    height = v8;
  }

  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (BOOL)shouldUpdateVisibleCellLayoutAttributes
{
  Height = CGRectGetHeight(self->_oldBounds);
  [-[OKWidgetGridViewCondensedLayout collectionView](self "collectionView")];
  return Height != CGRectGetHeight(v5);
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  Height = CGRectGetHeight(a3);
  [-[OKWidgetGridViewCondensedLayout collectionView](self "collectionView")];
  return Height != CGRectGetHeight(v6);
}

- (void)finalizeAnimatedBoundsChange
{
  v2 = *(MEMORY[0x277CBF3A0] + 16);
  self->_oldBounds.origin = *MEMORY[0x277CBF3A0];
  self->_oldBounds.size = v2;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4
{
  y = a3.y;
  x = a3.x;
  v37 = *MEMORY[0x277D85DE8];
  if (self->_snappingEnabled)
  {
    [-[OKWidgetGridViewCondensedLayout collectionView](self collectionView];
    Width = CGRectGetWidth(v39);
    [-[OKWidgetGridViewCondensedLayout collectionView](self "collectionView")];
    v9 = v8;
    [-[OKWidgetGridViewCondensedLayout collectionView](self "collectionView")];
    v11 = v10;
    v12 = [(OKWidgetGridViewCondensedLayout *)self layoutAttributesForElementsInRect:x, 0.0, v9];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = x + Width * 0.5;
      v16 = *v33;
      v17 = 3.40282347e38;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v32 + 1) + 8 * i);
          if (![objc_msgSend(v19 "indexPath")])
          {
            [v19 frame];
            if (x < CGRectGetWidth(v40) * 0.330000013)
            {
              x = 0.0;
              goto LABEL_26;
            }
          }

          v20 = [objc_msgSend(v19 "indexPath")];
          if (v20 == [-[OKWidgetGridViewCondensedLayout collectionView](self "collectionView")] - 1)
          {
            [-[OKWidgetGridViewCondensedLayout collectionView](self "collectionView")];
            v22 = v21;
            v41.origin.y = 0.0;
            v41.origin.x = x;
            v41.size.width = v9;
            v41.size.height = v11;
            v23 = v22 - CGRectGetMaxX(v41);
            [v19 frame];
            if (v23 < CGRectGetWidth(v42) * 0.330000013)
            {
              [-[OKWidgetGridViewCondensedLayout collectionView](self "collectionView")];
              v29 = v28;
              [-[OKWidgetGridViewCondensedLayout collectionView](self "collectionView")];
              x = v29 - CGRectGetWidth(v43);
              goto LABEL_26;
            }
          }

          [v19 center];
          v25 = v24 - v15;
          v26 = -v25;
          if (v25 >= 0.0)
          {
            v26 = v25;
          }

          v27 = -v17;
          if (v17 >= 0.0)
          {
            v27 = v17;
          }

          if (v26 < v27)
          {
            v17 = v25;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v17 = 3.40282347e38;
    }

    if (x + v17 >= 0.0)
    {
      x = x + v17;
    }

    else
    {
      x = 0.0;
    }
  }

LABEL_26:
  v30 = x;
  v31 = y;
  result.y = v31;
  result.x = v30;
  return result;
}

@end