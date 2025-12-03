@interface SXMosaicGalleryHorizontalLivingRoomLayout
- (_NSRange)columnRangeForItem:(id)item;
- (_NSRange)columnRangeForLargeItem;
- (_NSRange)columnRangeForSmallerItems;
- (double)calculateHeight;
- (double)desiredHeightForLargeItem;
- (double)desiredHeightForSmallerItems;
- (id)calculateFrames;
- (unint64_t)indexOfLargeItem;
@end

@implementation SXMosaicGalleryHorizontalLivingRoomLayout

- (double)calculateHeight
{
  v35 = *MEMORY[0x1E69E9840];
  [(SXMosaicGalleryHorizontalLivingRoomLayout *)self desiredHeightForLargeItem];
  v4 = v3;
  [(SXMosaicGalleryHorizontalLivingRoomLayout *)self desiredHeightForSmallerItems];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v4 >= v5)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = 0.0;
  if (v6 <= v7)
  {
    v9 = 1.79769313e308;
    do
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      cluster = [(SXMosaicGalleryGroupLayout *)self cluster];
      items = [cluster items];

      v12 = [items countByEnumeratingWithState:&v30 objects:v34 count:16];
      v13 = 0.0;
      if (v12)
      {
        v14 = v12;
        v15 = *v31;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v31 != v15)
            {
              objc_enumerationMutation(items);
            }

            v17 = *(*(&v30 + 1) + 8 * i);
            v18 = [(SXMosaicGalleryHorizontalLivingRoomLayout *)self columnRangeForItem:v17];
            v20 = v19;
            columnLayout = [(SXMosaicGalleryGroupLayout *)self columnLayout];
            [columnLayout widthForColumnRange:v18 numberOfColumns:{v20, -[SXMosaicGalleryGroupLayout numberOfColumns](self, "numberOfColumns")}];
            v23 = v22;

            [v17 aspectRatio];
            v25 = v23 + -v6 * v24;
            if (v25 >= 0.0)
            {
              v26 = v25;
            }

            else
            {
              v26 = -v25;
            }

            [(SXMosaicGalleryGroupLayout *)self desiredHeightForItem:v17];
            v28 = v6 - v27;
            if (v28 < 0.0)
            {
              v28 = -v28;
            }

            if (v28 < 1.0)
            {
              v28 = 1.0;
            }

            v13 = v13 + v26 * v28 * (v26 * v28);
          }

          v14 = [items countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v14);
      }

      if (v9 >= v13)
      {
        v9 = v13;
      }

      if (v9 == v13)
      {
        v8 = v6;
      }

      v6 = v6 + 1.0;
    }

    while (v6 <= v7);
  }

  return v8;
}

- (id)calculateFrames
{
  v40 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  cluster = [(SXMosaicGalleryGroupLayout *)self cluster];
  items = [cluster items];

  v6 = [items countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(items);
        }

        v11 = [(SXMosaicGalleryHorizontalLivingRoomLayout *)self columnRangeForItem:*(*(&v35 + 1) + 8 * i)];
        v13 = v12;
        columnRangeForLargeItem = [(SXMosaicGalleryHorizontalLivingRoomLayout *)self columnRangeForLargeItem];
        if (v13 == v15 && v11 == columnRangeForLargeItem)
        {
          v9 = 0.0;
        }

        columnLayout = [(SXMosaicGalleryGroupLayout *)self columnLayout];
        [columnLayout widthForColumnRange:v11 numberOfColumns:{v13, -[SXMosaicGalleryGroupLayout numberOfColumns](self, "numberOfColumns")}];
        v19 = v18;

        columnLayout2 = [(SXMosaicGalleryGroupLayout *)self columnLayout];
        [columnLayout2 positionForColumnRange:v11 numberOfColumns:{v13, -[SXMosaicGalleryGroupLayout numberOfColumns](self, "numberOfColumns")}];
        v22 = v21;

        [(SXMosaicGalleryGroupLayout *)self height];
        v24 = v23;
        if (v11 == [(SXMosaicGalleryHorizontalLivingRoomLayout *)self columnRangeForSmallerItems]&& v13 == v25)
        {
          columnLayout3 = [(SXMosaicGalleryGroupLayout *)self columnLayout];
          [columnLayout3 gutter];
          v24 = (v24 - v28) * 0.5;
        }

        v29 = [MEMORY[0x1E696B098] valueWithCGRect:{v22, v9, v19, v24}];
        [array addObject:v29];

        if (v11 == [(SXMosaicGalleryHorizontalLivingRoomLayout *)self columnRangeForSmallerItems]&& v13 == v30)
        {
          columnLayout4 = [(SXMosaicGalleryGroupLayout *)self columnLayout];
          [columnLayout4 gutter];
          v9 = v9 + v24 + v32;
        }
      }

      v7 = [items countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v7);
  }

  v33 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  return v33;
}

- (_NSRange)columnRangeForItem:(id)item
{
  itemCopy = item;
  cluster = [(SXMosaicGalleryGroupLayout *)self cluster];
  items = [cluster items];
  v7 = [items indexOfObject:itemCopy];

  columnRanges = [(SXMosaicGalleryGroupLayout *)self columnRanges];
  v9 = [columnRanges objectAtIndex:v7];
  rangeValue = [v9 rangeValue];
  v12 = v11;

  if (!(rangeValue | v12))
  {
    if (v7 == [(SXMosaicGalleryHorizontalLivingRoomLayout *)self indexOfLargeItem])
    {
      columnRangeForLargeItem = [(SXMosaicGalleryHorizontalLivingRoomLayout *)self columnRangeForLargeItem];
    }

    else
    {
      columnRangeForLargeItem = [(SXMosaicGalleryHorizontalLivingRoomLayout *)self columnRangeForSmallerItems];
    }

    rangeValue = columnRangeForLargeItem;
    v12 = v14;
    columnRanges2 = [(SXMosaicGalleryGroupLayout *)self columnRanges];
    v16 = [MEMORY[0x1E696B098] valueWithRange:{rangeValue, v12}];
    [columnRanges2 replaceObjectAtIndex:v7 withObject:v16];
  }

  v17 = rangeValue;
  v18 = v12;
  result.length = v18;
  result.location = v17;
  return result;
}

- (_NSRange)columnRangeForSmallerItems
{
  numberOfColumns = [(SXMosaicGalleryGroupLayout *)self numberOfColumns];
  if ([(SXMosaicGalleryHorizontalLivingRoomLayout *)self reverseLayout])
  {
    v4 = 0;
  }

  else
  {
    v4 = numberOfColumns - 1;
  }

  v5 = 1;
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)columnRangeForLargeItem
{
  v3 = [(SXMosaicGalleryGroupLayout *)self numberOfColumns]- 1;
  reverseLayout = [(SXMosaicGalleryHorizontalLivingRoomLayout *)self reverseLayout];
  v5 = v3;
  result.length = v5;
  result.location = reverseLayout;
  return result;
}

- (double)desiredHeightForLargeItem
{
  cluster = [(SXMosaicGalleryGroupLayout *)self cluster];
  items = [cluster items];
  v5 = [items objectAtIndex:{-[SXMosaicGalleryHorizontalLivingRoomLayout indexOfLargeItem](self, "indexOfLargeItem")}];

  [(SXMosaicGalleryGroupLayout *)self desiredHeightForItem:v5];
  v7 = v6;

  return v7;
}

- (double)desiredHeightForSmallerItems
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(SXMosaicGalleryHorizontalLivingRoomLayout *)self reverseLayout]^ 1;
  columnLayout = [(SXMosaicGalleryGroupLayout *)self columnLayout];
  [columnLayout gutter];
  v6 = v5;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  cluster = [(SXMosaicGalleryGroupLayout *)self cluster];
  items = [cluster items];
  v9 = [items subarrayWithRange:{v3, 2}];

  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(SXMosaicGalleryGroupLayout *)self desiredHeightForItem:*(*(&v16 + 1) + 8 * v13)];
        v6 = v6 + v14;
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v6;
}

- (unint64_t)indexOfLargeItem
{
  if ([(SXMosaicGalleryHorizontalLivingRoomLayout *)self reverseLayout])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

@end