@interface SXMosaicGalleryHorizontalLayout
- (_NSRange)columnRangeForItem:(id)a3;
- (id)calculateFrames;
@end

@implementation SXMosaicGalleryHorizontalLayout

- (id)calculateFrames
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(SXMosaicGalleryGroupLayout *)self numberOfColumns];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(SXMosaicGalleryGroupLayout *)self cluster];
  v6 = [v5 items];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
        v14 = [(SXMosaicGalleryGroupLayout *)self columnLayout];
        [v14 positionForColumnRange:v11 numberOfColumns:{v13, v4}];
        v16 = v15;

        v17 = [(SXMosaicGalleryGroupLayout *)self columnLayout];
        [v17 widthForColumnRange:v11 numberOfColumns:{v13, v4}];
        v19 = v18;

        [(SXMosaicGalleryGroupLayout *)self height];
        v21 = [MEMORY[0x1E696B098] valueWithCGRect:{v16, 0.0, v19, v20}];
        [v3 addObject:v21];
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];

  return v22;
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
    v13 = [v4 tileType];
    v14 = [(SXMosaicGalleryGroupLayout *)self cluster];
    v15 = [v14 items];
    v16 = [v15 count];

    v17 = [(SXMosaicGalleryGroupLayout *)self numberOfColumns];
    v18 = [(SXMosaicGalleryGroupLayout *)self cluster];
    v19 = [v18 isClusterOfType:v13];

    if (v19)
    {
      v12 = 1;
      v10 = v7;
    }

    else if (v16 == 2)
    {
      if (v13 == 3)
      {
        v12 = 2;
      }

      else
      {
        v12 = (v13 - 1) < 2;
      }

      v10 = (v17 - v12) * v7;
    }

    else
    {
      v20 = [MEMORY[0x1E695DF30] exceptionWithName:@"Unexpected cluster in horizontal layout" reason:@"The provided cluster contains three items of possibly different types" userInfo:0];
      [v20 raise];

      v10 = 0;
      v12 = 0;
    }

    v21 = [(SXMosaicGalleryGroupLayout *)self columnRanges];
    v22 = [MEMORY[0x1E696B098] valueWithRange:{v10, v12}];
    [v21 replaceObjectAtIndex:v7 withObject:v22];
  }

  v23 = v10;
  v24 = v12;
  result.length = v24;
  result.location = v23;
  return result;
}

@end