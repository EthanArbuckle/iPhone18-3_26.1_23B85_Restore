@interface REUpNextCollectionViewFlowLayout
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
@end

@implementation REUpNextCollectionViewFlowLayout

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v35 = *MEMORY[0x277D85DE8];
  collectionView = [(REUpNextCollectionViewFlowLayout *)self collectionView];
  [collectionView bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v33.receiver = self;
  v33.super_class = REUpNextCollectionViewFlowLayout;
  height = [(UICollectionViewFlowLayout *)&v33 layoutAttributesForElementsInRect:x, y, width, height];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = [height countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(height);
        }

        v22 = *(*(&v29 + 1) + 8 * i);
        [v22 frame];
        [v22 setUnitFrameOnScreen:{REUpNextUnitRectForFrameInBounds(v23, v24, v25, v26, v10, v12, v14, v16)}];
      }

      v19 = [height countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v19);
  }

  v27 = *MEMORY[0x277D85DE8];

  return height;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(REUpNextCollectionViewFlowLayout *)self collectionView];
  [collectionView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v20.receiver = self;
  v20.super_class = REUpNextCollectionViewFlowLayout;
  v14 = [(UICollectionViewFlowLayout *)&v20 layoutAttributesForItemAtIndexPath:pathCopy];

  [v14 frame];
  [v14 setUnitFrameOnScreen:{REUpNextUnitRectForFrameInBounds(v15, v16, v17, v18, v7, v9, v11, v13)}];

  return v14;
}

@end