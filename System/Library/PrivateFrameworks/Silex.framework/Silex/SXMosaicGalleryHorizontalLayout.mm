@interface SXMosaicGalleryHorizontalLayout
- (_NSRange)columnRangeForItem:(id)item;
- (id)calculateFrames;
@end

@implementation SXMosaicGalleryHorizontalLayout

- (id)calculateFrames
{
  v30 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  numberOfColumns = [(SXMosaicGalleryGroupLayout *)self numberOfColumns];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  cluster = [(SXMosaicGalleryGroupLayout *)self cluster];
  items = [cluster items];

  obj = items;
  v7 = [items countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [(SXMosaicGalleryHorizontalLayout *)self columnRangeForItem:*(*(&v25 + 1) + 8 * i)];
        v13 = v12;
        columnLayout = [(SXMosaicGalleryGroupLayout *)self columnLayout];
        [columnLayout positionForColumnRange:v11 numberOfColumns:{v13, numberOfColumns}];
        v16 = v15;

        columnLayout2 = [(SXMosaicGalleryGroupLayout *)self columnLayout];
        [columnLayout2 widthForColumnRange:v11 numberOfColumns:{v13, numberOfColumns}];
        v19 = v18;

        [(SXMosaicGalleryGroupLayout *)self height];
        v21 = [MEMORY[0x1E696B098] valueWithCGRect:{v16, 0.0, v19, v20}];
        [array addObject:v21];
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

  return v22;
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
    tileType = [itemCopy tileType];
    cluster2 = [(SXMosaicGalleryGroupLayout *)self cluster];
    items2 = [cluster2 items];
    v16 = [items2 count];

    numberOfColumns = [(SXMosaicGalleryGroupLayout *)self numberOfColumns];
    cluster3 = [(SXMosaicGalleryGroupLayout *)self cluster];
    v19 = [cluster3 isClusterOfType:tileType];

    if (v19)
    {
      v12 = 1;
      rangeValue = v7;
    }

    else if (v16 == 2)
    {
      if (tileType == 3)
      {
        v12 = 2;
      }

      else
      {
        v12 = (tileType - 1) < 2;
      }

      rangeValue = (numberOfColumns - v12) * v7;
    }

    else
    {
      v20 = [MEMORY[0x1E695DF30] exceptionWithName:@"Unexpected cluster in horizontal layout" reason:@"The provided cluster contains three items of possibly different types" userInfo:0];
      [v20 raise];

      rangeValue = 0;
      v12 = 0;
    }

    columnRanges2 = [(SXMosaicGalleryGroupLayout *)self columnRanges];
    v22 = [MEMORY[0x1E696B098] valueWithRange:{rangeValue, v12}];
    [columnRanges2 replaceObjectAtIndex:v7 withObject:v22];
  }

  v23 = rangeValue;
  v24 = v12;
  result.length = v24;
  result.location = v23;
  return result;
}

@end