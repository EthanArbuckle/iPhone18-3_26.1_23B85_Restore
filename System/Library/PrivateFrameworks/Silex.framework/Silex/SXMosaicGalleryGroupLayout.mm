@interface SXMosaicGalleryGroupLayout
- (CGRect)frameForItemAtIndex:(unint64_t)a3;
- (NSArray)frames;
- (NSMutableArray)columnRanges;
- (SXMosaicGalleryGroupLayout)initWithCluster:(id)a3 numberOfColumns:(unint64_t)a4 columnLayout:(id)a5;
- (_NSRange)columnRangeForItem:(id)a3;
- (double)calculateHeight;
- (double)desiredHeightForItem:(id)a3;
- (double)height;
- (id)calculateFrames;
@end

@implementation SXMosaicGalleryGroupLayout

- (SXMosaicGalleryGroupLayout)initWithCluster:(id)a3 numberOfColumns:(unint64_t)a4 columnLayout:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SXMosaicGalleryGroupLayout;
  v11 = [(SXMosaicGalleryGroupLayout *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_cluster, a3);
    objc_storeStrong(&v12->_columnLayout, a5);
    v12->_height = 1.79769313e308;
    v12->_numberOfColumns = a4;
  }

  return v12;
}

- (CGRect)frameForItemAtIndex:(unint64_t)a3
{
  v4 = [(SXMosaicGalleryGroupLayout *)self frames];
  v5 = [v4 objectAtIndex:a3];

  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (double)height
{
  result = self->_height;
  if (result == 1.79769313e308)
  {
    [(SXMosaicGalleryGroupLayout *)self calculateHeight];
    self->_height = result;
  }

  return result;
}

- (NSArray)frames
{
  frames = self->_frames;
  if (!frames)
  {
    v4 = [(SXMosaicGalleryGroupLayout *)self calculateFrames];
    v5 = self->_frames;
    self->_frames = v4;

    frames = self->_frames;
  }

  return frames;
}

- (double)calculateHeight
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = [(SXMosaicGalleryGroupLayout *)self numberOfColumns];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v4 = [(SXMosaicGalleryGroupLayout *)self cluster];
  v5 = [v4 items];

  v6 = [v5 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    v9 = 1.79769313e308;
    v10 = 2.22507386e-308;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SXMosaicGalleryGroupLayout *)self desiredHeightForItem:*(*(&v39 + 1) + 8 * i)];
        if (v9 >= v12)
        {
          v9 = v12;
        }

        if (v10 < v12)
        {
          v10 = v12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v7);

    v13 = 0.0;
    if (v9 <= v10)
    {
      v14 = 1.79769313e308;
      do
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v15 = [(SXMosaicGalleryGroupLayout *)self cluster];
        v16 = [v15 items];

        v17 = [v16 countByEnumeratingWithState:&v35 objects:v43 count:16];
        v18 = 0.0;
        if (v17)
        {
          v19 = v17;
          v20 = *v36;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v36 != v20)
              {
                objc_enumerationMutation(v16);
              }

              v22 = *(*(&v35 + 1) + 8 * j);
              v23 = [(SXMosaicGalleryGroupLayout *)self columnRangeForItem:v22];
              v25 = v24;
              v26 = [(SXMosaicGalleryGroupLayout *)self columnLayout];
              [v26 widthForColumnRange:v23 numberOfColumns:{v25, v3}];
              v28 = v27;

              [v22 aspectRatio];
              v30 = v28 + -v9 * v29;
              if (v30 >= 0.0)
              {
                v31 = v30;
              }

              else
              {
                v31 = -v30;
              }

              [(SXMosaicGalleryGroupLayout *)self desiredHeightForItem:v22];
              v33 = v9 - v32;
              if (v33 < 0.0)
              {
                v33 = -v33;
              }

              if (v33 < 1.0)
              {
                v33 = 1.0;
              }

              v18 = v18 + v31 * v33 * (v31 * v33);
            }

            v19 = [v16 countByEnumeratingWithState:&v35 objects:v43 count:16];
          }

          while (v19);
        }

        if (v14 >= v18)
        {
          v14 = v18;
        }

        if (v14 == v18)
        {
          v13 = v9;
        }

        v9 = v9 + 1.0;
      }

      while (v9 <= v10);
    }
  }

  else
  {

    return 0.0;
  }

  return v13;
}

- (id)calculateFrames
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(SXMosaicGalleryGroupLayout *)self cluster];
  v5 = [v4 items];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v12 = [MEMORY[0x1E696B098] valueWithCGRect:{v8, v9, v10, v11}];
      [v3 addObject:v12];

      ++v7;
      v13 = [(SXMosaicGalleryGroupLayout *)self cluster];
      v14 = [v13 items];
      v15 = [v14 count];
    }

    while (v7 < v15);
  }

  v16 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];

  return v16;
}

- (double)desiredHeightForItem:(id)a3
{
  v4 = a3;
  v5 = [(SXMosaicGalleryGroupLayout *)self columnRangeForItem:v4];
  v7 = v6;
  [v4 aspectRatio];
  v9 = v8;

  v10 = [(SXMosaicGalleryGroupLayout *)self columnLayout];
  [v10 widthForColumnRange:v5 numberOfColumns:{v7, -[SXMosaicGalleryGroupLayout numberOfColumns](self, "numberOfColumns")}];
  v12 = v11;

  return round(v12 / v9);
}

- (_NSRange)columnRangeForItem:(id)a3
{
  v3 = 0;
  v4 = 0;
  result.length = v4;
  result.location = v3;
  return result;
}

- (NSMutableArray)columnRanges
{
  columnRanges = self->_columnRanges;
  if (!columnRanges)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [(SXMosaicGalleryGroupLayout *)self cluster];
    v6 = [v5 items];
    v7 = [v6 count];

    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = [MEMORY[0x1E696B098] valueWithRange:{0, 0}];
        [(NSMutableArray *)v4 addObject:v9];

        ++v8;
        v10 = [(SXMosaicGalleryGroupLayout *)self cluster];
        v11 = [v10 items];
        v12 = [v11 count];
      }

      while (v8 < v12);
    }

    v13 = self->_columnRanges;
    self->_columnRanges = v4;

    columnRanges = self->_columnRanges;
  }

  return columnRanges;
}

@end