@interface PUHorizontalTiledCollectionViewLayout
- (BOOL)_shouldInvalidateCachedLayoutForBoundsChange:(CGRect)change;
- (BOOL)_updateLayoutData:(id)data inDirection:(int64_t)direction outDeltaOriginX:(double *)x;
- (CGSize)collectionViewContentSize;
- (PUHorizontalTiledCollectionViewLayout)init;
- (PUHorizontalTiledCollectionViewLayoutDelegate)delegate;
- (UIEdgeInsets)itemsContentInset;
- (id)_layoutAttributesForItemAtIndexPath:(id)path;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForItemsInRect:(CGRect)rect;
- (void)_ensureIndexPath:(id)path inData:(id)data;
- (void)_ensureRect:(CGRect)rect inData:(id)data outDeltaOriginX:(double *)x;
- (void)invalidateLayoutWithContext:(id)context;
- (void)prepareLayout;
- (void)setInteritemSpacing:(double)spacing;
- (void)setItemsContentInset:(UIEdgeInsets)inset;
@end

@implementation PUHorizontalTiledCollectionViewLayout

- (PUHorizontalTiledCollectionViewLayoutDelegate)delegate
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

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  data = self->_data;
  pathCopy = path;
  [(PUHorizontalTiledCollectionViewLayout *)self _ensureIndexPath:pathCopy inData:data];
  v6 = [(PUHorizontalTiledCollectionViewLayout *)self _layoutAttributesForItemAtIndexPath:pathCopy];

  return v6;
}

- (CGSize)collectionViewContentSize
{
  [(PUCollectionViewData *)self->_data currentContentBounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MaxX = CGRectGetMaxX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MaxY = CGRectGetMaxY(v14);
  [(PUHorizontalTiledCollectionViewLayout *)self itemsContentInset];
  v10 = MaxX + v9;
  v11 = MaxY;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)prepareLayout
{
  collectionView = [(PUHorizontalTiledCollectionViewLayout *)self collectionView];
  [collectionView bounds];
  [(PUHorizontalTiledCollectionViewLayout *)self _ensureRect:self->_data inData:0 outDeltaOriginX:?];
}

- (void)invalidateLayoutWithContext:(id)context
{
  contextCopy = context;
  v5.receiver = self;
  v5.super_class = PUHorizontalTiledCollectionViewLayout;
  [(PUHorizontalTiledCollectionViewLayout *)&v5 invalidateLayoutWithContext:contextCopy];
  if (([contextCopy invalidateCachedLayout] & 1) != 0 || (objc_msgSend(contextCopy, "invalidateDataSourceCounts") & 1) != 0 || objc_msgSend(contextCopy, "invalidateEverything"))
  {
    [(PUHorizontalTiledCollectionViewLayout *)self invalidateCachedLayout];
  }
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  v11.receiver = self;
  v11.super_class = PUHorizontalTiledCollectionViewLayout;
  v8 = [(PUHorizontalTiledCollectionViewLayout *)&v11 invalidationContextForBoundsChange:?];
  v9 = ([v8 invalidateDataSourceCounts] & 1) != 0 || (objc_msgSend(v8, "invalidateEverything") & 1) != 0 || -[PUHorizontalTiledCollectionViewLayout _shouldInvalidateCachedLayoutForBoundsChange:](self, "_shouldInvalidateCachedLayoutForBoundsChange:", x, y, width, height);
  [v8 _setInvalidateCachedLayout:v9];

  return v8;
}

- (id)layoutAttributesForItemsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = 0.0;
  [(PUHorizontalTiledCollectionViewLayout *)self _ensureRect:self->_data inData:&v15 outDeltaOriginX:?];
  [(UICollectionViewLayoutAttributes *)self->_dummyAttrs setFrame:x + v15, y, width, height];
  itemLayoutAttributes = [(PUCollectionViewData *)self->_data itemLayoutAttributes];
  v9 = [itemLayoutAttributes count];
  v10 = [itemLayoutAttributes indexOfObject:self->_dummyAttrs inSortedRange:0 options:v9 usingComparator:{256, &__block_literal_global_28234}];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL || (v11 = v10, v12 = [itemLayoutAttributes indexOfObject:self->_dummyAttrs inSortedRange:v10 options:v9 - v10 usingComparator:{512, &__block_literal_global_28234}], v12 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v13 = 0;
  }

  else
  {
    v13 = [itemLayoutAttributes subarrayWithRange:{v11, v12 - v11 + 1}];
  }

  return v13;
}

uint64_t __72__PUHorizontalTiledCollectionViewLayout_layoutAttributesForItemsInRect___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)_shouldInvalidateCachedLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  v4 = [(PUHorizontalTiledCollectionViewLayout *)self collectionView:change.origin.x];
  [v4 bounds];
  v6 = v5;

  return v6 != height;
}

- (void)setItemsContentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  [(PUHorizontalTiledCollectionViewLayout *)self itemsContentInset];
  if (v11 != left || v8 != top || v10 != right || v9 != bottom)
  {
    self->_itemsContentInset.top = top;
    self->_itemsContentInset.left = left;
    self->_itemsContentInset.bottom = bottom;
    self->_itemsContentInset.right = right;
    [(PUHorizontalTiledCollectionViewLayout *)self invalidateCachedLayout];

    [(PUHorizontalTiledCollectionViewLayout *)self invalidateLayout];
  }
}

- (void)setInteritemSpacing:(double)spacing
{
  [(PUHorizontalTiledCollectionViewLayout *)self interitemSpacing];
  if (v5 != spacing)
  {
    self->_interitemSpacing = spacing;
    [(PUHorizontalTiledCollectionViewLayout *)self invalidateCachedLayout];

    [(PUHorizontalTiledCollectionViewLayout *)self invalidateLayout];
  }
}

- (id)_layoutAttributesForItemAtIndexPath:(id)path
{
  data = self->_data;
  pathCopy = path;
  itemLayoutAttributesByIndexPath = [(PUCollectionViewData *)data itemLayoutAttributesByIndexPath];
  v6 = [itemLayoutAttributesByIndexPath objectForKey:pathCopy];

  return v6;
}

- (void)_ensureIndexPath:(id)path inData:(id)data
{
  pathCopy = path;
  dataCopy = data;
  itemLayoutAttributes = [dataCopy itemLayoutAttributes];
  v8 = [itemLayoutAttributes count];

  if (!v8)
  {
    [(PUHorizontalTiledCollectionViewLayout *)self _updateLayoutData:dataCopy inDirection:1 outDeltaOriginX:0];
  }

  itemLayoutAttributes2 = [dataCopy itemLayoutAttributes];
  firstObject = [itemLayoutAttributes2 firstObject];
  indexPath = [firstObject indexPath];

  while ([pathCopy compare:indexPath] == -1)
  {
    v12 = [(PUHorizontalTiledCollectionViewLayout *)self _updateLayoutData:dataCopy inDirection:-1 outDeltaOriginX:0];
    itemLayoutAttributes3 = [dataCopy itemLayoutAttributes];
    firstObject2 = [itemLayoutAttributes3 firstObject];
    indexPath2 = [firstObject2 indexPath];

    indexPath = indexPath2;
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  indexPath2 = indexPath;
LABEL_8:
  itemLayoutAttributes4 = [dataCopy itemLayoutAttributes];
  lastObject = [itemLayoutAttributes4 lastObject];
  indexPath3 = [lastObject indexPath];

  while ([pathCopy compare:indexPath3] == 1)
  {
    v19 = [(PUHorizontalTiledCollectionViewLayout *)self _updateLayoutData:dataCopy inDirection:1 outDeltaOriginX:0];
    itemLayoutAttributes5 = [dataCopy itemLayoutAttributes];
    lastObject2 = [itemLayoutAttributes5 lastObject];
    indexPath4 = [lastObject2 indexPath];

    indexPath3 = indexPath4;
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  indexPath4 = indexPath3;
LABEL_13:
}

- (void)_ensureRect:(CGRect)rect inData:(id)data outDeltaOriginX:(double *)x
{
  height = rect.size.height;
  width = rect.size.width;
  rect = rect.origin.y;
  x = rect.origin.x;
  dataCopy = data;
  v11 = dataCopy;
  if (width < 0.0 || height < 0.0)
  {
    if (x)
    {
      *x = 0.0;
    }
  }

  else
  {
    v35 = 0.0;
    [dataCopy currentContentBounds];
    v12 = v36.origin.x;
    y = v36.origin.y;
    v14 = v36.size.width;
    v15 = v36.size.height;
    if (CGRectIsEmpty(v36))
    {
      [(PUHorizontalTiledCollectionViewLayout *)self _updateLayoutData:v11 inDirection:1 outDeltaOriginX:&v35];
      [v11 currentContentBounds];
      v12 = v16;
      y = v17;
      v14 = v18;
      v15 = v19;
      v20 = v35;
    }

    else
    {
      v20 = 0.0;
    }

    v21 = x + v20;
    do
    {
      v37.origin.x = v21;
      v37.origin.y = rect;
      v37.size.width = width;
      v37.size.height = height;
      MinX = CGRectGetMinX(v37);
      v38.origin.x = v12;
      v38.origin.y = y;
      v38.size.width = v14;
      v38.size.height = v15;
      if (MinX >= CGRectGetMinX(v38))
      {
        break;
      }

      v23 = [(PUHorizontalTiledCollectionViewLayout *)self _updateLayoutData:v11 inDirection:-1 outDeltaOriginX:&v35];
      v21 = v21 + v35;
      [v11 currentContentBounds];
      v12 = v24;
      y = v25;
      v14 = v26;
      v15 = v27;
    }

    while (v23);
    do
    {
      v39.origin.x = v21;
      v39.origin.y = rect;
      v39.size.width = width;
      v39.size.height = height;
      MaxX = CGRectGetMaxX(v39);
      v40.origin.x = v12;
      v40.origin.y = y;
      v40.size.width = v14;
      v40.size.height = v15;
      if (MaxX <= CGRectGetMaxX(v40))
      {
        break;
      }

      v28 = [(PUHorizontalTiledCollectionViewLayout *)self _updateLayoutData:v11 inDirection:1 outDeltaOriginX:&v35];
      v21 = v21 + v35;
      [v11 currentContentBounds];
      v12 = v29;
      y = v30;
      v14 = v31;
      v15 = v32;
    }

    while (v28);
  }
}

- (BOOL)_updateLayoutData:(id)data inDirection:(int64_t)direction outDeltaOriginX:(double *)x
{
  v111 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  delegate = [(PUHorizontalTiledCollectionViewLayout *)self delegate];
  selfCopy = self;
  collectionView = [(PUHorizontalTiledCollectionViewLayout *)self collectionView];
  [collectionView bounds];
  v88 = v11;
  v13 = v12;
  v92 = v15;
  v93 = v14;
  cachedPageCount = [(PUCollectionViewData *)dataCopy cachedPageCount];
  [(PUCollectionViewData *)dataCopy currentContentBounds];
  MidX = v17;
  MidY = v19;
  width = v21;
  height = v23;
  itemLayoutAttributes = [(PUCollectionViewData *)dataCopy itemLayoutAttributes];
  itemLayoutAttributesByIndexPath = [(PUCollectionViewData *)dataCopy itemLayoutAttributesByIndexPath];
  if (direction == 1)
  {
    [itemLayoutAttributes lastObject];
  }

  else
  {
    [itemLayoutAttributes firstObject];
  }
  v26 = ;
  indexPath = [v26 indexPath];
  [v26 frame];
  v101 = v29;
  v102 = v28;
  v31 = v30;
  v33 = v32;
  v109 = 0.0;
  v34 = v26 == 0;
  if (!v26)
  {
    if ([itemLayoutAttributes count] || objc_msgSend(itemLayoutAttributesByIndexPath, "count") || (v112.origin.x = MidX, v112.origin.y = MidY, v112.size.width = width, v112.size.height = height, !CGRectIsEmpty(v112)))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PUHorizontalTiledCollectionViewLayout.m" lineNumber:114 description:0];
    }

    v35 = [delegate layout:selfCopy collectionView:collectionView referenceIndexPathWithOffsetX:&v109];

    v113.origin.x = v88;
    v113.origin.y = v13;
    v113.size.width = v93;
    v113.size.height = v92;
    MidX = CGRectGetMidX(v113);
    v114.origin.x = v88;
    v114.origin.y = v13;
    v114.size.width = v93;
    v114.size.height = v92;
    MidY = CGRectGetMidY(v114);
    height = 0.0;
    width = 0.0;
    if (v35)
    {
      goto LABEL_6;
    }

LABEL_12:
    v51 = 0;
    v52 = 0.0;
    if (!x)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v35 = [collectionView next:direction indexPathFromIndexPath:indexPath];

  if (!v35)
  {
    goto LABEL_12;
  }

LABEL_6:
  v87 = v13;
  xCopy = x;
  [(PUHorizontalTiledCollectionViewLayout *)selfCopy interitemSpacing];
  v97 = v36;
  [(PUHorizontalTiledCollectionViewLayout *)selfCopy itemsContentInset];
  v85 = v37;
  v96 = v38;
  v40 = v38 + v39;
  [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v90 = dataCopy;
  v42 = v41 = cachedPageCount;
  firstObject = [itemLayoutAttributes firstObject];
  indexPath2 = [firstObject indexPath];
  v89 = v42;
  v86 = [indexPath2 isEqual:v42];

  v45 = v93 * v41;
  v46 = MidX;
  v47 = MidY;
  v48 = width;
  v49 = height;
  if (direction == 1)
  {
    v50 = v45 + CGRectGetMaxX(*&v46);
  }

  else
  {
    v50 = CGRectGetMinX(*&v46) - v45;
  }

  v51 = 0;
  v94 = v92 - v40;
  v95 = v50;
  while (1)
  {
    v115.origin.x = MidX;
    v115.origin.y = MidY;
    v115.size.width = width;
    v115.size.height = height;
    if (v50 >= CGRectGetMinX(v115))
    {
      v116.origin.x = MidX;
      v116.origin.y = MidY;
      v116.size.width = width;
      v116.size.height = height;
      if (v50 <= CGRectGetMaxX(v116))
      {
        break;
      }
    }

    v103 = MidY;
    v53 = height;
    [delegate layout:selfCopy collectionView:collectionView sizeForItemAtIndexPath:v35];
    v55 = v54;
    v57 = v56;
    if (v54 <= 0.0)
    {
      v58 = 0.0;
    }

    else
    {
      v58 = v97;
    }

    if (v34)
    {
      v59 = MidX + v54 * -0.5 + v109;
    }

    else
    {
      v61 = v101;
      v60 = v102;
      v62 = v31;
      v63 = v33;
      if (direction == 1)
      {
        v59 = v58 + CGRectGetMaxX(*&v60);
      }

      else
      {
        v64 = CGRectGetMinX(*&v60) - v58;
        v117.origin.x = v102;
        v117.origin.y = v31;
        v117.size.width = v55;
        v117.size.height = v57;
        v59 = v64 - CGRectGetWidth(v117);
      }
    }

    if (PUMainScreenScale_onceToken != -1)
    {
      dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
    }

    v65 = round(*&PUMainScreenScale_screenScale * v59) / *&PUMainScreenScale_screenScale;
    v31 = round(*&PUMainScreenScale_screenScale * (v96 + (v94 - v57) * 0.5)) / *&PUMainScreenScale_screenScale;
    v66 = [MEMORY[0x1E69DC858] layoutAttributesForCellWithIndexPath:v35];

    [v66 setFrame:{v65, v31, v55, v57}];
    v118.origin.x = v65;
    v118.origin.y = v31;
    v118.size.width = v55;
    v118.size.height = v57;
    IsEmpty = CGRectIsEmpty(v118);
    [v66 setHidden:IsEmpty];
    [v66 setAlpha:(IsEmpty ^ 1)];
    if (direction == 1)
    {
      v68 = [itemLayoutAttributes count];
    }

    else
    {
      v68 = 0;
    }

    [itemLayoutAttributes insertObject:v66 atIndex:v68];
    [itemLayoutAttributesByIndexPath setObject:v66 forKey:v35];
    v119.origin.x = MidX;
    v119.origin.y = v103;
    v119.size.width = width;
    v119.size.height = v53;
    v102 = v65;
    v121.origin.x = v65;
    v121.origin.y = v31;
    v121.size.width = v55;
    v121.size.height = v57;
    v120 = CGRectUnion(v119, v121);
    MidX = v120.origin.x;
    MidY = v120.origin.y;
    width = v120.size.width;
    height = v120.size.height;
    v69 = [collectionView next:direction indexPathFromIndexPath:v35];

    v34 = 0;
    v51 = 1;
    v26 = v66;
    v35 = v69;
    v101 = v55;
    v33 = v57;
    v50 = v95;
    if (!v69)
    {
      v26 = v66;
      break;
    }
  }

  firstObject2 = [itemLayoutAttributes firstObject];
  indexPath3 = [firstObject2 indexPath];
  v72 = v89;
  v73 = [indexPath3 isEqual:v89];

  dataCopy = v90;
  if (MidX <= 0.0 || (v52 = 0.0, v73))
  {
    v74 = -MidX;
    v109 = -MidX;
    x = xCopy;
    if (!(v86 & 1 | ((v73 & 1) == 0)))
    {
      v74 = v85 - MidX;
      v109 = v85 - MidX;
      width = v85 + width;
    }

    if (v74 != 0.0)
    {
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v75 = itemLayoutAttributes;
      v76 = [v75 countByEnumeratingWithState:&v105 objects:v110 count:16];
      if (v76)
      {
        v77 = v76;
        v78 = *v106;
        do
        {
          for (i = 0; i != v77; ++i)
          {
            if (*v106 != v78)
            {
              objc_enumerationMutation(v75);
            }

            v80 = *(*(&v105 + 1) + 8 * i);
            [v80 frame];
            [v80 setFrame:v109 + v81];
          }

          v77 = [v75 countByEnumeratingWithState:&v105 objects:v110 count:16];
        }

        while (v77);
      }

      dataCopy = v90;
      x = xCopy;
      v72 = v89;
      if (selfCopy->_data == v90)
      {
        [(PUHorizontalTiledCollectionViewLayout *)selfCopy invalidateLayout];
        collectionViewLayout = [collectionView collectionViewLayout];

        v83 = collectionViewLayout == selfCopy;
        x = xCopy;
        if (v83)
        {
          [collectionView setBounds:{v88 + v109, v87, v93, v92}];
        }
      }
    }

    MidX = 0.0;
    v52 = v109;
  }

  else
  {
    x = xCopy;
  }

  [(PUCollectionViewData *)dataCopy setCurrentContentBounds:MidX, MidY, width, height];

  if (x)
  {
LABEL_52:
    *x = v52;
  }

LABEL_53:

  return v51 & 1;
}

- (PUHorizontalTiledCollectionViewLayout)init
{
  v8.receiver = self;
  v8.super_class = PUHorizontalTiledCollectionViewLayout;
  v2 = [(PUHorizontalTiledCollectionViewLayout *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(PUCollectionViewData);
    data = v2->_data;
    v2->_data = v3;

    v5 = objc_alloc_init(MEMORY[0x1E69DC858]);
    dummyAttrs = v2->_dummyAttrs;
    v2->_dummyAttrs = v5;
  }

  return v2;
}

@end