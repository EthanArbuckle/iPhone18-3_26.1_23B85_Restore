@interface VideosExtrasCarouselCollectionViewFlowLayout
- (unint64_t)indexOfVisibleItem;
- (void)setIndexOfVisibleItem:(unint64_t)a3 animated:(BOOL)a4;
@end

@implementation VideosExtrasCarouselCollectionViewFlowLayout

- (void)setIndexOfVisibleItem:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
  v16 = [(UICollectionViewFlowLayout *)self layoutAttributesForItemAtIndexPath:v6];

  [v16 frame];
  v8 = v7;
  v9 = [(VideosExtrasCarouselCollectionViewFlowLayout *)self collectionView];
  [v9 contentOffset];
  v11 = v10;

  v12 = [(VideosExtrasCarouselCollectionViewFlowLayout *)self collectionView];
  [v12 _effectiveContentInset];
  v14 = v13;

  v15 = [(VideosExtrasCarouselCollectionViewFlowLayout *)self collectionView];
  [v15 setContentOffset:v4 animated:{v8 - v14, v11}];
}

- (unint64_t)indexOfVisibleItem
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(VideosExtrasCarouselCollectionViewFlowLayout *)self collectionView];
  [v3 contentOffset];
  v5 = v4;

  v6 = [(VideosExtrasCarouselCollectionViewFlowLayout *)self collectionView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = [(UICollectionViewFlowLayout *)self layoutAttributesForElementsInRect:v5, 0.0, v8, v10];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = v5 + v8 * 0.5;
    v15 = *v23;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        [v18 frame];
        if (v19 <= v14)
        {
          v20 = [v18 indexPath];
          v16 = [v20 row];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v16;
}

@end