@interface PUFilmstripTilingLayout
- (CGRect)contentBounds;
- (CGSize)contentSize;
- (PUFilmstripTilingLayout)initWithDataSource:(id)a3 contentSize:(CGSize)a4;
- (id)_layoutInfoForIndicatorInfo:(id)a3 withIndex:(int64_t)a4;
- (id)_layoutInfoForTileWithIndex:(int64_t)a3 kind:(id)a4;
- (id)layoutInfoForTileWithIndexPath:(id)a3 kind:(id)a4;
- (id)layoutInfosForTilesInRect:(CGRect)a3;
- (void)prepareLayout;
@end

@implementation PUFilmstripTilingLayout

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)_layoutInfoForIndicatorInfo:(id)a3 withIndex:(int64_t)a4
{
  v6 = MEMORY[0x1E696AC88];
  v7 = a3;
  v8 = [v6 indexPathWithIndex:a4];
  v9 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v8 kind:@"PUTileKindItemContentFilmStripIndicator"];

  [(PUFilmstripTilingLayout *)self contentBounds];
  v11 = v10;
  [v7 normalizedLocation];
  v13 = v12 * v11;
  [(PUFilmstripTilingLayout *)self contentBounds];
  MidY = CGRectGetMidY(v24);
  [(PUFilmstripTilingLayout *)self contentBounds];
  Height = CGRectGetHeight(v25);
  v16 = [PUFilmstripIndicatorLayoutInfo alloc];
  v17 = [(PUTilingLayout *)self coordinateSystem];
  v18 = *(MEMORY[0x1E695EFD0] + 16);
  v23[0] = *MEMORY[0x1E695EFD0];
  v23[1] = v18;
  v23[2] = *(MEMORY[0x1E695EFD0] + 32);
  v19 = [(PUTileLayoutInfo *)v16 initWithTileIdentifier:v9 center:v23 size:v17 alpha:v13 transform:MidY zPosition:3.0 coordinateSystem:Height, 1.0, 1.0];

  v20 = [v7 preferredColor];

  [(PUFilmstripIndicatorLayoutInfo *)v19 setHighlightColor:v20];
  v21 = v19;

  return v19;
}

- (id)_layoutInfoForTileWithIndex:(int64_t)a3 kind:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_numberOfItems > a3 && [v6 isEqualToString:@"PUTileKindItemContent"])
  {
    layoutInfoCache = self->_layoutInfoCache;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v10 = [(NSCache *)layoutInfoCache objectForKey:v9];

    if (!v10)
    {
      v11 = self->_itemSize.width * 0.5 + a3 * self->_itemSize.width;
      v12 = self->_itemSize.height * 0.5;
      v13 = [MEMORY[0x1E696AC88] indexPathWithIndex:a3];
      v14 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v13 kind:v7];

      v15 = [PUTileLayoutInfo alloc];
      v16 = [(PUTilingLayout *)self coordinateSystem];
      width = self->_itemSize.width;
      height = self->_itemSize.height;
      v19 = *(MEMORY[0x1E695EFD0] + 16);
      v23[0] = *MEMORY[0x1E695EFD0];
      v23[1] = v19;
      v23[2] = *(MEMORY[0x1E695EFD0] + 32);
      v10 = [(PUTileLayoutInfo *)v15 initWithTileIdentifier:v14 center:v23 size:v16 alpha:v11 transform:v12 zPosition:width coordinateSystem:height, 1.0, 0.0];

      v20 = self->_layoutInfoCache;
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      [(NSCache *)v20 setObject:v10 forKey:v21];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)layoutInfoForTileWithIndexPath:(id)a3 kind:(id)a4
{
  v6 = a4;
  v7 = -[PUFilmstripTilingLayout _layoutInfoForTileWithIndex:kind:](self, "_layoutInfoForTileWithIndex:kind:", [a3 indexAtPosition:0], v6);

  return v7;
}

- (id)layoutInfosForTilesInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = (CGRectGetMinX(a3) / self->_itemSize.width);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MaxX = CGRectGetMaxX(v33);
  v32.length = self->_numberOfItems;
  v31.length = vcvtpd_s64_f64(MaxX / self->_itemSize.width) - v8 + 1;
  v31.location = v8;
  v32.location = 0;
  v10 = NSIntersectionRange(v31, v32);
  location = v10.location;
  length = v10.length;
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:v10.length];
  if (location < location + v10.length)
  {
    do
    {
      v14 = [(PUFilmstripTilingLayout *)self _layoutInfoForTileWithIndex:location kind:@"PUTileKindItemContent"];
      [v13 addObject:v14];

      ++location;
      --length;
    }

    while (length);
  }

  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  MinX = CGRectGetMinX(v34);
  [(PUFilmstripTilingLayout *)self contentSize];
  v17 = MinX / v16;
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v18 = CGRectGetWidth(v35);
  [(PUFilmstripTilingLayout *)self contentSize];
  v20 = v18 / v19;
  v21 = [(PUTilingLayout *)self dataSource];
  v22 = [v21 indicatorInfos];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __53__PUFilmstripTilingLayout_layoutInfosForTilesInRect___block_invoke;
  v27[3] = &unk_1E7B77280;
  v29 = v17;
  v30 = v20;
  v27[4] = self;
  v23 = v13;
  v28 = v23;
  [v22 enumerateObjectsUsingBlock:v27];

  v24 = v28;
  v25 = v23;

  return v23;
}

void __53__PUFilmstripTilingLayout_layoutInfosForTilesInRect___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  [v7 normalizedLocation];
  if (v5 >= *(a1 + 48) && v5 <= v5 + *(a1 + 56))
  {
    v6 = [*(a1 + 32) _layoutInfoForIndicatorInfo:v7 withIndex:a3];
    [*(a1 + 40) addObject:v6];
  }
}

- (void)prepareLayout
{
  v7.receiver = self;
  v7.super_class = PUFilmstripTilingLayout;
  [(PUTilingLayout *)&v7 prepareLayout];
  v3 = [(PUTilingLayout *)self dataSource];
  v4 = [MEMORY[0x1E696AC88] pu_rootIndexPath];
  self->_numberOfItems = [v3 numberOfSubItemsAtIndexPath:v4];

  [(PUFilmstripTilingLayout *)self contentBounds];
  self->_itemSize.width = v5 / self->_numberOfItems;
  self->_itemSize.height = v6;
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

- (PUFilmstripTilingLayout)initWithDataSource:(id)a3 contentSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v11.receiver = self;
  v11.super_class = PUFilmstripTilingLayout;
  v6 = [(PUTilingLayout *)&v11 initWithDataSource:a3];
  v7 = v6;
  if (v6)
  {
    v6->_contentSize.width = width;
    v6->_contentSize.height = height;
    v6->_contentBounds.origin.x = 0.0;
    v6->_contentBounds.origin.y = 0.0;
    v6->_contentBounds.size.width = width;
    v6->_contentBounds.size.height = height;
    v8 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    layoutInfoCache = v7->_layoutInfoCache;
    v7->_layoutInfoCache = v8;
  }

  return v7;
}

@end