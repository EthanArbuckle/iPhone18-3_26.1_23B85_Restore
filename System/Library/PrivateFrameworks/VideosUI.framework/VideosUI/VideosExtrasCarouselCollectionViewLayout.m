@interface VideosExtrasCarouselCollectionViewLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGPoint)_contentOffsetForItemAtIndex:(int64_t)a3 collectionViewBounds:(CGRect)a4;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4;
- (CGSize)cachedCollectionViewContentSize;
- (VideosExtrasCarouselCollectionViewLayout)init;
- (double)_neighboringItemVisibleWidth;
- (double)_spaceBetweenItems;
- (double)_spaceBetweenItemsForCollectionViewBounds:(CGRect)a3;
- (double)itemWidth;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (int64_t)_indexOfVisibleItemForContentOffset:(CGPoint)a3 collectionViewBounds:(CGRect)a4;
- (unint64_t)indexOfVisibleItem;
- (void)finalizeAnimatedBoundsChange;
- (void)prepareForAnimatedBoundsChange:(CGRect)a3;
- (void)prepareLayout;
- (void)setIndexOfVisibleItem:(unint64_t)a3 animated:(BOOL)a4;
@end

@implementation VideosExtrasCarouselCollectionViewLayout

- (VideosExtrasCarouselCollectionViewLayout)init
{
  v3.receiver = self;
  v3.super_class = VideosExtrasCarouselCollectionViewLayout;
  result = [(VideosExtrasCarouselCollectionViewLayout *)&v3 init];
  if (result)
  {
    result->_indexOfVisibleItemForBoundsChange = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (void)prepareLayout
{
  v22.receiver = self;
  v22.super_class = VideosExtrasCarouselCollectionViewLayout;
  [(VideosExtrasCarouselCollectionViewLayout *)&v22 prepareLayout];
  v3 = [(VideosExtrasCarouselCollectionViewLayout *)self collectionView];
  [v3 bounds];
  Height = CGRectGetHeight(v23);
  [(VideosExtrasCarouselCollectionViewLayout *)self itemWidth];
  v6 = v5;
  [(VideosExtrasCarouselCollectionViewLayout *)self _spaceBetweenItems];
  v8 = v7;
  [(VideosExtrasCarouselCollectionViewLayout *)self _neighboringItemVisibleWidth];
  v10 = v9;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = v8 + v10;
  v13 = v6 + v8;
  v21 = [v3 numberOfSections];
  if (v21 < 1)
  {
    v20 = 0.0;
  }

  else
  {
    v14 = 0;
    for (i = 0; i != v21; ++i)
    {
      v16 = [v3 numberOfItemsInSection:i];
      if (v16 >= 1)
      {
        for (j = 0; j != v16; ++j)
        {
          v18 = [MEMORY[0x1E696AC88] indexPathForItem:j inSection:i];
          v19 = [MEMORY[0x1E69DC858] layoutAttributesForCellWithIndexPath:v18];
          [v19 setFrame:{v12 + (v14 + j) * v13, 0.0, v6, Height}];
          [v11 setObject:v19 forKey:v18];
        }
      }

      v14 += v16;
    }

    v20 = v14;
  }

  [(VideosExtrasCarouselCollectionViewLayout *)self setCachedLayoutAttributes:v11];
  [(VideosExtrasCarouselCollectionViewLayout *)self setCachedCollectionViewContentSize:v13 * v20 + v12 * 2.0 - v8, Height];
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [(VideosExtrasCarouselCollectionViewLayout *)self cachedLayoutAttributes];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__VideosExtrasCarouselCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke;
  v12[3] = &unk_1E8730390;
  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  v10 = v8;
  v13 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v12];

  return v10;
}

void __78__VideosExtrasCarouselCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 frame];
  if (CGRectIntersectsRect(v6, *(a1 + 40)))
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasCarouselCollectionViewLayout *)self cachedLayoutAttributes];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(VideosExtrasCarouselCollectionViewLayout *)self collectionView:a3.x];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(VideosExtrasCarouselCollectionViewLayout *)self _indexOfVisibleItemForContentOffset:x collectionViewBounds:y, v9, v11, v13, v15];

  [(VideosExtrasCarouselCollectionViewLayout *)self _contentOffsetForItemAtIndex:v16 collectionViewBounds:v9, v11, v13, v15];
  result.y = v18;
  result.x = v17;
  return result;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v5 = [(VideosExtrasCarouselCollectionViewLayout *)self collectionView:a3.origin.x];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  return v9 != height || v7 != width;
}

- (void)prepareForAnimatedBoundsChange:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VideosExtrasCarouselCollectionViewLayout;
  [(VideosExtrasCarouselCollectionViewLayout *)&v6 prepareForAnimatedBoundsChange:?];
  v4 = [(VideosExtrasCarouselCollectionViewLayout *)self collectionView];
  [v4 contentOffset];
  v5 = [VideosExtrasCarouselCollectionViewLayout _indexOfVisibleItemForContentOffset:"_indexOfVisibleItemForContentOffset:collectionViewBounds:" collectionViewBounds:?];

  [(VideosExtrasCarouselCollectionViewLayout *)self setIndexOfVisibleItemForBoundsChange:v5];
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VideosExtrasCarouselCollectionViewLayout *)self indexOfVisibleItemForBoundsChange];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    v8 = [(VideosExtrasCarouselCollectionViewLayout *)self collectionView];
    [v8 bounds];
    [(VideosExtrasCarouselCollectionViewLayout *)self _contentOffsetForItemAtIndex:v7 collectionViewBounds:?];
    x = v9;
    y = v10;
  }

  v11 = x;
  v12 = y;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)finalizeAnimatedBoundsChange
{
  v3.receiver = self;
  v3.super_class = VideosExtrasCarouselCollectionViewLayout;
  [(VideosExtrasCarouselCollectionViewLayout *)&v3 finalizeAnimatedBoundsChange];
  [(VideosExtrasCarouselCollectionViewLayout *)self setIndexOfVisibleItemForBoundsChange:0x7FFFFFFFFFFFFFFFLL];
}

- (unint64_t)indexOfVisibleItem
{
  v3 = [(VideosExtrasCarouselCollectionViewLayout *)self collectionView];
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;
  [v3 bounds];
  v12 = [(VideosExtrasCarouselCollectionViewLayout *)self _indexOfVisibleItemForContentOffset:v5 collectionViewBounds:v7, v8, v9, v10, v11];

  return v12;
}

- (void)setIndexOfVisibleItem:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(VideosExtrasCarouselCollectionViewLayout *)self indexOfVisibleItem]!= a3)
  {
    v7 = [(VideosExtrasCarouselCollectionViewLayout *)self collectionView];
    [v7 bounds];
    [(VideosExtrasCarouselCollectionViewLayout *)self _contentOffsetForItemAtIndex:a3 collectionViewBounds:?];
    [v7 setContentOffset:v4 animated:?];
  }
}

- (double)itemWidth
{
  MPULayoutLinearRelationMake();
  v3 = [(VideosExtrasCarouselCollectionViewLayout *)self collectionView];
  v4 = [v3 window];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v15.origin.x = v6;
  v15.origin.y = v8;
  v15.size.width = v10;
  v15.size.height = v12;
  CGRectGetWidth(v15);
  v16.origin.x = v6;
  v16.origin.y = v8;
  v16.size.width = v10;
  v16.size.height = v12;
  CGRectGetHeight(v16);

  MPULayoutLinearRelationEvaluate();
  return result;
}

- (CGPoint)_contentOffsetForItemAtIndex:(int64_t)a3 collectionViewBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(VideosExtrasCarouselCollectionViewLayout *)self itemWidth];
  v11 = v10;
  [(VideosExtrasCarouselCollectionViewLayout *)self _spaceBetweenItemsForCollectionViewBounds:x, y, width, height];
  v13 = (v11 + v12) * a3;
  v14 = 0.0;
  result.y = v14;
  result.x = v13;
  return result;
}

- (int64_t)_indexOfVisibleItemForContentOffset:(CGPoint)a3 collectionViewBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.x;
  [(VideosExtrasCarouselCollectionViewLayout *)self itemWidth:a3.x];
  v11 = v10;
  [(VideosExtrasCarouselCollectionViewLayout *)self _spaceBetweenItemsForCollectionViewBounds:x, y, width, height];
  return llround(v8 / (v11 + v12));
}

- (double)_neighboringItemVisibleWidth
{
  v3 = [(VideosExtrasCarouselCollectionViewLayout *)self collectionView];
  [v3 bounds];
  Width = CGRectGetWidth(v9);

  [(VideosExtrasCarouselCollectionViewLayout *)self itemWidth];
  v6 = (Width - v5) * 0.5;
  [(VideosExtrasCarouselCollectionViewLayout *)self _spaceBetweenItems];
  return v6 - v7;
}

- (double)_spaceBetweenItems
{
  v3 = [(VideosExtrasCarouselCollectionViewLayout *)self collectionView];
  [v3 bounds];
  [(VideosExtrasCarouselCollectionViewLayout *)self _spaceBetweenItemsForCollectionViewBounds:?];
  v5 = v4;

  return v5;
}

- (double)_spaceBetweenItemsForCollectionViewBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  MPULayoutLinearRelationMake();
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  CGRectGetWidth(v9);

  MPULayoutLinearRelationEvaluate();
  return result;
}

- (CGSize)cachedCollectionViewContentSize
{
  width = self->_cachedCollectionViewContentSize.width;
  height = self->_cachedCollectionViewContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end