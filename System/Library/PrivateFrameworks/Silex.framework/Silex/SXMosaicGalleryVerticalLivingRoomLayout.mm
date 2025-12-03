@interface SXMosaicGalleryVerticalLivingRoomLayout
- (SXMosaicGalleryVerticalLivingRoomLayout)initWithCluster:(id)cluster numberOfColumns:(unint64_t)columns columnLayout:(id)layout;
- (_NSRange)columnRangeForItem:(id)item;
- (double)calculateHeight;
- (double)largeItemHeight;
- (double)smallItemHeight;
- (id)calculateFrames;
@end

@implementation SXMosaicGalleryVerticalLivingRoomLayout

- (SXMosaicGalleryVerticalLivingRoomLayout)initWithCluster:(id)cluster numberOfColumns:(unint64_t)columns columnLayout:(id)layout
{
  v6.receiver = self;
  v6.super_class = SXMosaicGalleryVerticalLivingRoomLayout;
  result = [(SXMosaicGalleryGroupLayout *)&v6 initWithCluster:cluster numberOfColumns:columns columnLayout:layout];
  if (result)
  {
    result->_largeItemHeight = 1.79769313e308;
    result->_smallItemHeight = 1.79769313e308;
  }

  return result;
}

- (double)calculateHeight
{
  [(SXMosaicGalleryVerticalLivingRoomLayout *)self largeItemHeight];
  v4 = v3;
  columnLayout = [(SXMosaicGalleryGroupLayout *)self columnLayout];
  [columnLayout gutter];
  v7 = v4 + v6;
  [(SXMosaicGalleryVerticalLivingRoomLayout *)self smallItemHeight];
  v9 = v7 + v8;

  return v9;
}

- (id)calculateFrames
{
  v35 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  cluster = [(SXMosaicGalleryGroupLayout *)self cluster];
  items = [cluster items];

  v6 = [items countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(items);
        }

        v11 = [(SXMosaicGalleryVerticalLivingRoomLayout *)self columnRangeForItem:*(*(&v30 + 1) + 8 * i)];
        v12 = v10;
        if (v10 == 1)
        {
          [(SXMosaicGalleryVerticalLivingRoomLayout *)self smallItemHeight];
          v15 = v16;
          [(SXMosaicGalleryVerticalLivingRoomLayout *)self largeItemHeight];
          v18 = v17;
          columnLayout = [(SXMosaicGalleryGroupLayout *)self columnLayout];
          [columnLayout gutter];
          v13 = v18 + v20;
        }

        else
        {
          v13 = 0.0;
          if (v10 == 2)
          {
            [(SXMosaicGalleryVerticalLivingRoomLayout *)self largeItemHeight];
            v15 = v14;
          }

          else
          {
            v15 = 0.0;
          }
        }

        columnLayout2 = [(SXMosaicGalleryGroupLayout *)self columnLayout];
        [columnLayout2 widthForColumnRange:v11 numberOfColumns:{v12, -[SXMosaicGalleryGroupLayout numberOfColumns](self, "numberOfColumns")}];
        v23 = v22;

        columnLayout3 = [(SXMosaicGalleryGroupLayout *)self columnLayout];
        [columnLayout3 positionForColumnRange:v11 numberOfColumns:{v12, -[SXMosaicGalleryGroupLayout numberOfColumns](self, "numberOfColumns")}];
        v26 = v25;

        v27 = [MEMORY[0x1E696B098] valueWithCGRect:{v26, v13, v23, v15}];
        [array addObject:v27];
      }

      v7 = [items countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  return v28;
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
    if (v7)
    {
      rangeValue = v7 - 1;
    }

    else
    {
      rangeValue = 0;
    }

    if (v7)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    columnRanges2 = [(SXMosaicGalleryGroupLayout *)self columnRanges];
    v14 = [MEMORY[0x1E696B098] valueWithRange:{rangeValue, v12}];
    [columnRanges2 replaceObjectAtIndex:v7 withObject:v14];
  }

  v15 = rangeValue;
  v16 = v12;
  result.length = v16;
  result.location = v15;
  return result;
}

- (double)largeItemHeight
{
  result = self->_largeItemHeight;
  if (result == 1.79769313e308)
  {
    cluster = [(SXMosaicGalleryGroupLayout *)self cluster];
    items = [cluster items];
    firstObject = [items firstObject];

    [(SXMosaicGalleryGroupLayout *)self desiredHeightForItem:firstObject];
    self->_largeItemHeight = v7;

    return self->_largeItemHeight;
  }

  return result;
}

- (double)smallItemHeight
{
  v41 = *MEMORY[0x1E69E9840];
  smallItemHeight = self->_smallItemHeight;
  if (smallItemHeight == 1.79769313e308)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    cluster = [(SXMosaicGalleryGroupLayout *)self cluster];
    items = [cluster items];
    v6 = [items subarrayWithRange:{1, 2}];

    v7 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v36;
      v10 = 1.79769313e308;
      v11 = 2.22507386e-308;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(SXMosaicGalleryGroupLayout *)self desiredHeightForItem:*(*(&v35 + 1) + 8 * i)];
          if (v10 >= v13)
          {
            v10 = v13;
          }

          if (v11 < v13)
          {
            v11 = v13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v8);

      smallItemHeight = 0.0;
      if (v10 <= v11)
      {
        v14 = 1.79769313e308;
        do
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          cluster2 = [(SXMosaicGalleryGroupLayout *)self cluster];
          items2 = [cluster2 items];

          v17 = [items2 countByEnumeratingWithState:&v31 objects:v39 count:16];
          v18 = 0.0;
          if (v17)
          {
            v19 = v17;
            v20 = *v32;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v32 != v20)
                {
                  objc_enumerationMutation(items2);
                }

                v22 = *(*(&v31 + 1) + 8 * j);
                v23 = [(SXMosaicGalleryVerticalLivingRoomLayout *)self columnRangeForItem:v22];
                v25 = v24;
                columnLayout = [(SXMosaicGalleryGroupLayout *)self columnLayout];
                [columnLayout widthForColumnRange:v23 numberOfColumns:{v25, -[SXMosaicGalleryGroupLayout numberOfColumns](self, "numberOfColumns")}];
                v28 = v27;

                [v22 aspectRatio];
                v18 = v18 + (v28 + -v10 * v29) * (v28 + -v10 * v29);
              }

              v19 = [items2 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v19);
          }

          if (v14 >= v18)
          {
            v14 = v18;
          }

          if (v14 == v18)
          {
            smallItemHeight = v10;
          }

          v10 = v10 + 1.0;
        }

        while (v10 <= v11);
      }
    }

    else
    {

      smallItemHeight = 0.0;
    }

    self->_smallItemHeight = smallItemHeight;
  }

  return smallItemHeight;
}

@end