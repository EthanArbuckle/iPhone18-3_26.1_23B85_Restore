@interface CACCorrectionsFlowLayout
- (double)_availableWidth;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)prepareLayout;
@end

@implementation CACCorrectionsFlowLayout

- (void)prepareLayout
{
  v2.receiver = self;
  v2.super_class = CACCorrectionsFlowLayout;
  [(UICollectionViewFlowLayout *)&v2 prepareLayout];
}

- (double)_availableWidth
{
  collectionView = [(CACCorrectionsFlowLayout *)self collectionView];
  [collectionView bounds];
  Width = CGRectGetWidth(v16);
  collectionView2 = [(CACCorrectionsFlowLayout *)self collectionView];
  [collectionView2 contentInset];
  v7 = Width - v6;
  collectionView3 = [(CACCorrectionsFlowLayout *)self collectionView];
  [collectionView3 contentInset];
  v10 = v7 - v9;
  [(UICollectionViewFlowLayout *)self sectionInset];
  v12 = v10 - v11;
  [(UICollectionViewFlowLayout *)self sectionInset];
  v14 = v12 - v13;

  return v14;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v6.receiver = self;
  v6.super_class = CACCorrectionsFlowLayout;
  v4 = [(UICollectionViewFlowLayout *)&v6 layoutAttributesForItemAtIndexPath:path];
  [(CACCorrectionsFlowLayout *)self _availableWidth];
  [v4 setAvailableWidth:?];

  return v4;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = CACCorrectionsFlowLayout;
  v4 = [(UICollectionViewFlowLayout *)&v17 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  [(CACCorrectionsFlowLayout *)self _availableWidth];
  v6 = v5;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * i) setAvailableWidth:{v6, v13}];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v9);
  }

  return v7;
}

@end