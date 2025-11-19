@interface SXMosaicGalleryVerticalLivingRoomLayout
- (SXMosaicGalleryVerticalLivingRoomLayout)initWithCluster:(id)a3 numberOfColumns:(unint64_t)a4 columnLayout:(id)a5;
- (_NSRange)columnRangeForItem:(id)a3;
- (double)calculateHeight;
- (double)largeItemHeight;
- (double)smallItemHeight;
- (id)calculateFrames;
@end

@implementation SXMosaicGalleryVerticalLivingRoomLayout

- (SXMosaicGalleryVerticalLivingRoomLayout)initWithCluster:(id)a3 numberOfColumns:(unint64_t)a4 columnLayout:(id)a5
{
  v6.receiver = self;
  v6.super_class = SXMosaicGalleryVerticalLivingRoomLayout;
  result = [(SXMosaicGalleryGroupLayout *)&v6 initWithCluster:a3 numberOfColumns:a4 columnLayout:a5];
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
  v5 = [(SXMosaicGalleryGroupLayout *)self columnLayout];
  [v5 gutter];
  v7 = v4 + v6;
  [(SXMosaicGalleryVerticalLivingRoomLayout *)self smallItemHeight];
  v9 = v7 + v8;

  return v9;
}

- (id)calculateFrames
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [(SXMosaicGalleryGroupLayout *)self cluster];
  v5 = [v4 items];

  v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = [(SXMosaicGalleryVerticalLivingRoomLayout *)self columnRangeForItem:*(*(&v30 + 1) + 8 * i)];
        v12 = v10;
        if (v10 == 1)
        {
          [(SXMosaicGalleryVerticalLivingRoomLayout *)self smallItemHeight];
          v15 = v16;
          [(SXMosaicGalleryVerticalLivingRoomLayout *)self largeItemHeight];
          v18 = v17;
          v19 = [(SXMosaicGalleryGroupLayout *)self columnLayout];
          [v19 gutter];
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

        v21 = [(SXMosaicGalleryGroupLayout *)self columnLayout];
        [v21 widthForColumnRange:v11 numberOfColumns:{v12, -[SXMosaicGalleryGroupLayout numberOfColumns](self, "numberOfColumns")}];
        v23 = v22;

        v24 = [(SXMosaicGalleryGroupLayout *)self columnLayout];
        [v24 positionForColumnRange:v11 numberOfColumns:{v12, -[SXMosaicGalleryGroupLayout numberOfColumns](self, "numberOfColumns")}];
        v26 = v25;

        v27 = [MEMORY[0x1E696B098] valueWithCGRect:{v26, v13, v23, v15}];
        [v3 addObject:v27];
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  v28 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];

  return v28;
}

- (_NSRange)columnRangeForItem:(id)a3
{
  v4 = a3;
  v5 = [(SXMosaicGalleryGroupLayout *)self cluster];
  v6 = [v5 items];
  v7 = [v6 indexOfObject:v4];

  v8 = [(SXMosaicGalleryGroupLayout *)self columnRanges];
  v9 = [v8 objectAtIndex:v7];
  v10 = [v9 rangeValue];
  v12 = v11;

  if (!(v10 | v12))
  {
    if (v7)
    {
      v10 = v7 - 1;
    }

    else
    {
      v10 = 0;
    }

    if (v7)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    v13 = [(SXMosaicGalleryGroupLayout *)self columnRanges];
    v14 = [MEMORY[0x1E696B098] valueWithRange:{v10, v12}];
    [v13 replaceObjectAtIndex:v7 withObject:v14];
  }

  v15 = v10;
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
    v4 = [(SXMosaicGalleryGroupLayout *)self cluster];
    v5 = [v4 items];
    v6 = [v5 firstObject];

    [(SXMosaicGalleryGroupLayout *)self desiredHeightForItem:v6];
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
    v4 = [(SXMosaicGalleryGroupLayout *)self cluster];
    v5 = [v4 items];
    v6 = [v5 subarrayWithRange:{1, 2}];

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
          v15 = [(SXMosaicGalleryGroupLayout *)self cluster];
          v16 = [v15 items];

          v17 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
                  objc_enumerationMutation(v16);
                }

                v22 = *(*(&v31 + 1) + 8 * j);
                v23 = [(SXMosaicGalleryVerticalLivingRoomLayout *)self columnRangeForItem:v22];
                v25 = v24;
                v26 = [(SXMosaicGalleryGroupLayout *)self columnLayout];
                [v26 widthForColumnRange:v23 numberOfColumns:{v25, -[SXMosaicGalleryGroupLayout numberOfColumns](self, "numberOfColumns")}];
                v28 = v27;

                [v22 aspectRatio];
                v18 = v18 + (v28 + -v10 * v29) * (v28 + -v10 * v29);
              }

              v19 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
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