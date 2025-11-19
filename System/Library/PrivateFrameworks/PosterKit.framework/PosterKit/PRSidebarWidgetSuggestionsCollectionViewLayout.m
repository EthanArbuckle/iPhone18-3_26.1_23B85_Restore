@interface PRSidebarWidgetSuggestionsCollectionViewLayout
- ($0AC6E346AE4835514AAA8AC86D8F4844)_gridCoordinateForCircularItemAtIndex:(int64_t)a3;
- ($0AC6E346AE4835514AAA8AC86D8F4844)_gridCoordinateForDescriptor:(id)a3 atIndex:(int64_t)a4;
- ($0AC6E346AE4835514AAA8AC86D8F4844)_gridCoordinateForRectangularItemAtIndex:(int64_t)a3;
- ($0AC6E346AE4835514AAA8AC86D8F4844)_gridCoordinateForSystemSmallItemAtIndex:(int64_t)a3;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGPoint)_originForGridCoordinate:(id)a3;
- (CGRect)contentBounds;
- (CGSize)collectionViewContentSize;
- (PRSidebarWidgetSuggestionsCollectionViewLayout)initWithDisplayScale:(double)a3;
- (PRSidebarWidgetSuggestionsCollectionViewLayoutDelegate)layoutDelegate;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (void)prepareLayout;
@end

@implementation PRSidebarWidgetSuggestionsCollectionViewLayout

- (PRSidebarWidgetSuggestionsCollectionViewLayout)initWithDisplayScale:(double)a3
{
  v5.receiver = self;
  v5.super_class = PRSidebarWidgetSuggestionsCollectionViewLayout;
  result = [(PRSidebarWidgetSuggestionsCollectionViewLayout *)&v5 init];
  if (result)
  {
    result->_displayScale = a3;
  }

  return result;
}

- (void)prepareLayout
{
  v3 = *(MEMORY[0x1E695F050] + 16);
  self->_contentBounds.origin = *MEMORY[0x1E695F050];
  self->_contentBounds.size = v3;
  p_contentBounds = &self->_contentBounds;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [(PRSidebarWidgetSuggestionsCollectionViewLayout *)self collectionView];
  v8 = [v7 numberOfItemsInSection:0];

  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:0];
      [v4 addObject:v10];
      v11 = [(PRSidebarWidgetSuggestionsCollectionViewLayout *)self layoutDelegate];
      v12 = [v11 complicationDescriptorForItemAtIndexPath:v10];

      [v5 addObject:v12];
      [v6 setObject:v10 forKeyedSubscript:v12];
    }
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __63__PRSidebarWidgetSuggestionsCollectionViewLayout_prepareLayout__block_invoke;
  v35[3] = &unk_1E78449E0;
  v35[4] = self;
  v36 = v6;
  v37 = v13;
  v14 = v13;
  v30 = v6;
  v15 = MEMORY[0x1AC574C60](v35);
  v16 = [v5 bs_filter:&__block_literal_global_27];
  [v16 enumerateObjectsUsingBlock:v15];
  v17 = [v5 bs_filter:&__block_literal_global_7_1];
  [v17 enumerateObjectsUsingBlock:v15];
  v18 = [v5 bs_filter:&__block_literal_global_9];
  [v18 enumerateObjectsUsingBlock:v15];
  v19 = [(PRSidebarWidgetSuggestionsCollectionViewLayout *)self collectionView];
  [v19 bounds];
  v21 = v20;

  v22 = (v21 - p_contentBounds->size.width) * 0.5;
  v23 = [(PRSidebarWidgetSuggestionsCollectionViewLayout *)self collectionView];
  [v23 bounds];
  v25 = v24;

  v26 = (v25 - p_contentBounds->size.height) * 0.5;
  memset(&v34, 0, sizeof(v34));
  CGAffineTransformMakeTranslation(&v34, v22, v26);
  v27 = [v14 allValues];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __63__PRSidebarWidgetSuggestionsCollectionViewLayout_prepareLayout__block_invoke_5;
  v32[3] = &__block_descriptor_80_e49_v32__0__UICollectionViewLayoutAttributes_8Q16_B24l;
  v33 = v34;
  [v27 enumerateObjectsUsingBlock:v32];

  v28 = [v14 copy];
  computedAttributesByIndexPath = self->_computedAttributesByIndexPath;
  self->_computedAttributesByIndexPath = v28;
}

void __63__PRSidebarWidgetSuggestionsCollectionViewLayout_prepareLayout__block_invoke(id *a1, void *a2, uint64_t a3)
{
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 _gridCoordinateForDescriptor:v6 atIndex:a3];
  [a1[4] _originForGridCoordinate:{v7, v8}];
  v10 = v9;
  v12 = v11;
  v13 = +[PRWidgetMetricsProvider sharedInstance];
  v14 = [v6 widget];
  v22 = [v13 systemMetricsForWidget:v14];

  [a1[4] displayScale];
  [v22 _effectiveSizePixelAlignedForDisplayScale:?];
  v16 = v15;
  v18 = v17;
  v19 = [a1[5] objectForKeyedSubscript:v6];

  v20 = [MEMORY[0x1E69DC858] layoutAttributesForCellWithIndexPath:v19];
  [v20 setFrame:{v10, v12, v16, v18}];
  [a1[6] setObject:v20 forKeyedSubscript:v19];
  v21 = (a1[4] + 296);
  v24.origin.x = v10;
  v24.origin.y = v12;
  v24.size.width = v16;
  v24.size.height = v18;
  *v21 = CGRectUnion(*v21, v24);
}

BOOL __63__PRSidebarWidgetSuggestionsCollectionViewLayout_prepareLayout__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 widget];
  v3 = [v2 family] == 1;

  return v3;
}

BOOL __63__PRSidebarWidgetSuggestionsCollectionViewLayout_prepareLayout__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 widget];
  v3 = [v2 family] == 11;

  return v3;
}

BOOL __63__PRSidebarWidgetSuggestionsCollectionViewLayout_prepareLayout__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 widget];
  v3 = [v2 family] == 10;

  return v3;
}

void __63__PRSidebarWidgetSuggestionsCollectionViewLayout_prepareLayout__block_invoke_5(_OWORD *a1, void *a2)
{
  v3 = a2;
  [v3 frame];
  v4 = a1[3];
  *&v5.a = a1[2];
  *&v5.c = v4;
  *&v5.tx = a1[4];
  v7 = CGRectApplyAffineTransform(v6, &v5);
  [v3 setFrame:{v7.origin.x, v7.origin.y, v7.size.width, v7.size.height}];
}

- (CGSize)collectionViewContentSize
{
  width = self->_contentBounds.size.width;
  height = self->_contentBounds.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v5 = [(PRSidebarWidgetSuggestionsCollectionViewLayout *)self collectionView:a3.origin.x];
  [v5 bounds];
  v8 = height != v7 || width != v6;

  return v8;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(NSDictionary *)self->_computedAttributesByIndexPath allValues];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__PRSidebarWidgetSuggestionsCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke;
  v10[3] = &__block_descriptor_64_e42_B16__0__UICollectionViewLayoutAttributes_8l;
  *&v10[4] = x;
  *&v10[5] = y;
  *&v10[6] = width;
  *&v10[7] = height;
  v8 = [v7 bs_filter:v10];

  return v8;
}

BOOL __84__PRSidebarWidgetSuggestionsCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke(void *a1, void *a2)
{
  [a2 frame];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];

  return CGRectIntersectsRect(*&v3, *&v7);
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_gridCoordinateForDescriptor:(id)a3 atIndex:(int64_t)a4
{
  v6 = [a3 widget];
  v7 = [v6 family];

  if (v7 == 11)
  {

    v8 = [(PRSidebarWidgetSuggestionsCollectionViewLayout *)self _gridCoordinateForRectangularItemAtIndex:a4];
  }

  else if (v7 == 1)
  {

    v8 = [(PRSidebarWidgetSuggestionsCollectionViewLayout *)self _gridCoordinateForSystemSmallItemAtIndex:a4];
  }

  else
  {

    v8 = [(PRSidebarWidgetSuggestionsCollectionViewLayout *)self _gridCoordinateForCircularItemAtIndex:a4];
  }

  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_gridCoordinateForSystemSmallItemAtIndex:(int64_t)a3
{
  v3 = 2 * a3;
  v4 = (2 * a3) & 2;
  result.var1 = v3;
  result.var0 = v4;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_gridCoordinateForRectangularItemAtIndex:(int64_t)a3
{
  v3 = 2 * a3;
  v4 = ~(2 * a3) & 2;
  result.var1 = v3;
  result.var0 = v4;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_gridCoordinateForCircularItemAtIndex:(int64_t)a3
{
  if (a3 + 2 <= 0)
  {
    v3 = -(-(a3 + 2) & 3);
  }

  else
  {
    v3 = (a3 + 2) & 3;
  }

  v4 = (a3 + (a3 >> 63)) | 1;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (CGPoint)_originForGridCoordinate:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  [MEMORY[0x1E6999618] gridUnitSize];
  v6 = v5;
  [MEMORY[0x1E6999618] complicationEdgeInset];
  v8 = v6 + v7 * 2.0;
  [MEMORY[0x1E6999618] interComplicationSpacingExcludingInnerInset];
  v10 = v8 * var1 + v9 * var1;
  v11 = v8 * var0 + v9 * var0;
  result.y = v10;
  result.x = v11;
  return result;
}

- (PRSidebarWidgetSuggestionsCollectionViewLayoutDelegate)layoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);

  return WeakRetained;
}

- (CGRect)contentBounds
{
  x = self->_contentBounds.origin.x;
  y = self->_contentBounds.origin.y;
  width = self->_contentBounds.size.width;
  height = self->_contentBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end