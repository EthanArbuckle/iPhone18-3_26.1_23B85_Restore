@interface PUAdjustmentsViewFlowLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (id)nearestIndexPathForVisibleItemAtPoint:(CGPoint)point;
@end

@implementation PUAdjustmentsViewFlowLayout

- (id)nearestIndexPathForVisibleItemAtPoint:(CGPoint)point
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = [(PUAdjustmentsViewFlowLayout *)self collectionView:point.x];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(UICollectionViewFlowLayout *)self layoutAttributesForElementsInRect:v6, v8, v10, v12];
  firstObject = [v13 firstObject];
  indexPath = [firstObject indexPath];
  scrollDirection = [(UICollectionViewFlowLayout *)self scrollDirection];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = v13;
  v18 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    v21 = 1.79769313e308;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v34 + 1) + 8 * i);
        [v23 frame];
        if (scrollDirection == 1)
        {
          MidX = CGRectGetMidX(*&v24);
          v40.origin.x = v6;
          v40.origin.y = v8;
          v40.size.width = v10;
          v40.size.height = v12;
          MidY = CGRectGetMidX(v40);
        }

        else
        {
          MidX = CGRectGetMidY(*&v24);
          v41.origin.x = v6;
          v41.origin.y = v8;
          v41.size.width = v10;
          v41.size.height = v12;
          MidY = CGRectGetMidY(v41);
        }

        v30 = fabs(MidX - MidY);
        if (v30 < v21)
        {
          indexPath2 = [v23 indexPath];

          v21 = v30;
          indexPath = indexPath2;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v19);
  }

  v32 = indexPath;
  return indexPath;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v46 = *MEMORY[0x1E69E9840];
  collectionView = [(PUAdjustmentsViewFlowLayout *)self collectionView];
  [collectionView frame];
  v8 = v7;
  collectionView2 = [(PUAdjustmentsViewFlowLayout *)self collectionView];
  [collectionView2 frame];
  v11 = v10;

  v12 = [(UICollectionViewFlowLayout *)self layoutAttributesForElementsInRect:x, y, v8, v11];
  scrollDirection = [(UICollectionViewFlowLayout *)self scrollDirection];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v42;
    v19 = 1.79769313e308;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v41 + 1) + 8 * i);
        [v21 frame];
        if (scrollDirection == 1)
        {
          MidX = CGRectGetMidX(*&v22);
          v48.origin.x = x;
          v48.origin.y = y;
          v48.size.width = v8;
          v48.size.height = v11;
          MidY = CGRectGetMidX(v48);
        }

        else
        {
          MidX = CGRectGetMidY(*&v22);
          v49.origin.x = x;
          v49.origin.y = y;
          v49.size.width = v8;
          v49.size.height = v11;
          MidY = CGRectGetMidY(v49);
        }

        v28 = fabs(MidX - MidY);
        if (v28 < v19)
        {
          v29 = v21;

          v19 = v28;
          v17 = v29;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  [v17 frame];
  v31 = v30;
  v33 = v32;
  collectionView3 = [(PUAdjustmentsViewFlowLayout *)self collectionView];
  [collectionView3 contentInset];
  v36 = v35;
  v38 = v37;

  if (scrollDirection == 1)
  {
    x = v31 - v38;
  }

  else
  {
    y = v33 - v36;
  }

  v39 = x;
  v40 = y;
  result.y = v40;
  result.x = v39;
  return result;
}

@end