@interface SXMosaicGalleryGroupLayout
- (CGRect)frameForItemAtIndex:(unint64_t)index;
- (NSArray)frames;
- (NSMutableArray)columnRanges;
- (SXMosaicGalleryGroupLayout)initWithCluster:(id)cluster numberOfColumns:(unint64_t)columns columnLayout:(id)layout;
- (_NSRange)columnRangeForItem:(id)item;
- (double)calculateHeight;
- (double)desiredHeightForItem:(id)item;
- (double)height;
- (id)calculateFrames;
@end

@implementation SXMosaicGalleryGroupLayout

- (SXMosaicGalleryGroupLayout)initWithCluster:(id)cluster numberOfColumns:(unint64_t)columns columnLayout:(id)layout
{
  clusterCopy = cluster;
  layoutCopy = layout;
  v14.receiver = self;
  v14.super_class = SXMosaicGalleryGroupLayout;
  v11 = [(SXMosaicGalleryGroupLayout *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_cluster, cluster);
    objc_storeStrong(&v12->_columnLayout, layout);
    v12->_height = 1.79769313e308;
    v12->_numberOfColumns = columns;
  }

  return v12;
}

- (CGRect)frameForItemAtIndex:(unint64_t)index
{
  frames = [(SXMosaicGalleryGroupLayout *)self frames];
  v5 = [frames objectAtIndex:index];

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
    calculateFrames = [(SXMosaicGalleryGroupLayout *)self calculateFrames];
    v5 = self->_frames;
    self->_frames = calculateFrames;

    frames = self->_frames;
  }

  return frames;
}

- (double)calculateHeight
{
  v45 = *MEMORY[0x1E69E9840];
  numberOfColumns = [(SXMosaicGalleryGroupLayout *)self numberOfColumns];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  cluster = [(SXMosaicGalleryGroupLayout *)self cluster];
  items = [cluster items];

  v6 = [items countByEnumeratingWithState:&v39 objects:v44 count:16];
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
          objc_enumerationMutation(items);
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

      v7 = [items countByEnumeratingWithState:&v39 objects:v44 count:16];
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
        cluster2 = [(SXMosaicGalleryGroupLayout *)self cluster];
        items2 = [cluster2 items];

        v17 = [items2 countByEnumeratingWithState:&v35 objects:v43 count:16];
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
                objc_enumerationMutation(items2);
              }

              v22 = *(*(&v35 + 1) + 8 * j);
              v23 = [(SXMosaicGalleryGroupLayout *)self columnRangeForItem:v22];
              v25 = v24;
              columnLayout = [(SXMosaicGalleryGroupLayout *)self columnLayout];
              [columnLayout widthForColumnRange:v23 numberOfColumns:{v25, numberOfColumns}];
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

            v19 = [items2 countByEnumeratingWithState:&v35 objects:v43 count:16];
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
  array = [MEMORY[0x1E695DF70] array];
  cluster = [(SXMosaicGalleryGroupLayout *)self cluster];
  items = [cluster items];
  v6 = [items count];

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
      [array addObject:v12];

      ++v7;
      cluster2 = [(SXMosaicGalleryGroupLayout *)self cluster];
      items2 = [cluster2 items];
      v15 = [items2 count];
    }

    while (v7 < v15);
  }

  v16 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  return v16;
}

- (double)desiredHeightForItem:(id)item
{
  itemCopy = item;
  v5 = [(SXMosaicGalleryGroupLayout *)self columnRangeForItem:itemCopy];
  v7 = v6;
  [itemCopy aspectRatio];
  v9 = v8;

  columnLayout = [(SXMosaicGalleryGroupLayout *)self columnLayout];
  [columnLayout widthForColumnRange:v5 numberOfColumns:{v7, -[SXMosaicGalleryGroupLayout numberOfColumns](self, "numberOfColumns")}];
  v12 = v11;

  return round(v12 / v9);
}

- (_NSRange)columnRangeForItem:(id)item
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
    array = [MEMORY[0x1E695DF70] array];
    cluster = [(SXMosaicGalleryGroupLayout *)self cluster];
    items = [cluster items];
    v7 = [items count];

    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = [MEMORY[0x1E696B098] valueWithRange:{0, 0}];
        [(NSMutableArray *)array addObject:v9];

        ++v8;
        cluster2 = [(SXMosaicGalleryGroupLayout *)self cluster];
        items2 = [cluster2 items];
        v12 = [items2 count];
      }

      while (v8 < v12);
    }

    v13 = self->_columnRanges;
    self->_columnRanges = array;

    columnRanges = self->_columnRanges;
  }

  return columnRanges;
}

@end