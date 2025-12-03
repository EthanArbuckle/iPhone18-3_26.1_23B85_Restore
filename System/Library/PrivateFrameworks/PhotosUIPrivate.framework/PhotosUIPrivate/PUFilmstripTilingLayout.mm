@interface PUFilmstripTilingLayout
- (CGRect)contentBounds;
- (CGSize)contentSize;
- (PUFilmstripTilingLayout)initWithDataSource:(id)source contentSize:(CGSize)size;
- (id)_layoutInfoForIndicatorInfo:(id)info withIndex:(int64_t)index;
- (id)_layoutInfoForTileWithIndex:(int64_t)index kind:(id)kind;
- (id)layoutInfoForTileWithIndexPath:(id)path kind:(id)kind;
- (id)layoutInfosForTilesInRect:(CGRect)rect;
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

- (id)_layoutInfoForIndicatorInfo:(id)info withIndex:(int64_t)index
{
  v6 = MEMORY[0x1E696AC88];
  infoCopy = info;
  v8 = [v6 indexPathWithIndex:index];
  v9 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v8 kind:@"PUTileKindItemContentFilmStripIndicator"];

  [(PUFilmstripTilingLayout *)self contentBounds];
  v11 = v10;
  [infoCopy normalizedLocation];
  v13 = v12 * v11;
  [(PUFilmstripTilingLayout *)self contentBounds];
  MidY = CGRectGetMidY(v24);
  [(PUFilmstripTilingLayout *)self contentBounds];
  Height = CGRectGetHeight(v25);
  v16 = [PUFilmstripIndicatorLayoutInfo alloc];
  coordinateSystem = [(PUTilingLayout *)self coordinateSystem];
  v18 = *(MEMORY[0x1E695EFD0] + 16);
  v23[0] = *MEMORY[0x1E695EFD0];
  v23[1] = v18;
  v23[2] = *(MEMORY[0x1E695EFD0] + 32);
  v19 = [(PUTileLayoutInfo *)v16 initWithTileIdentifier:v9 center:v23 size:coordinateSystem alpha:v13 transform:MidY zPosition:3.0 coordinateSystem:Height, 1.0, 1.0];

  preferredColor = [infoCopy preferredColor];

  [(PUFilmstripIndicatorLayoutInfo *)v19 setHighlightColor:preferredColor];
  v21 = v19;

  return v19;
}

- (id)_layoutInfoForTileWithIndex:(int64_t)index kind:(id)kind
{
  kindCopy = kind;
  v7 = kindCopy;
  if (self->_numberOfItems > index && [kindCopy isEqualToString:@"PUTileKindItemContent"])
  {
    layoutInfoCache = self->_layoutInfoCache;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:index];
    v10 = [(NSCache *)layoutInfoCache objectForKey:v9];

    if (!v10)
    {
      v11 = self->_itemSize.width * 0.5 + index * self->_itemSize.width;
      v12 = self->_itemSize.height * 0.5;
      v13 = [MEMORY[0x1E696AC88] indexPathWithIndex:index];
      v14 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:v13 kind:v7];

      v15 = [PUTileLayoutInfo alloc];
      coordinateSystem = [(PUTilingLayout *)self coordinateSystem];
      width = self->_itemSize.width;
      height = self->_itemSize.height;
      v19 = *(MEMORY[0x1E695EFD0] + 16);
      v23[0] = *MEMORY[0x1E695EFD0];
      v23[1] = v19;
      v23[2] = *(MEMORY[0x1E695EFD0] + 32);
      v10 = [(PUTileLayoutInfo *)v15 initWithTileIdentifier:v14 center:v23 size:coordinateSystem alpha:v11 transform:v12 zPosition:width coordinateSystem:height, 1.0, 0.0];

      v20 = self->_layoutInfoCache;
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:index];
      [(NSCache *)v20 setObject:v10 forKey:v21];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)layoutInfoForTileWithIndexPath:(id)path kind:(id)kind
{
  kindCopy = kind;
  v7 = -[PUFilmstripTilingLayout _layoutInfoForTileWithIndex:kind:](self, "_layoutInfoForTileWithIndex:kind:", [path indexAtPosition:0], kindCopy);

  return v7;
}

- (id)layoutInfosForTilesInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = (CGRectGetMinX(rect) / self->_itemSize.width);
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
  dataSource = [(PUTilingLayout *)self dataSource];
  indicatorInfos = [dataSource indicatorInfos];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __53__PUFilmstripTilingLayout_layoutInfosForTilesInRect___block_invoke;
  v27[3] = &unk_1E7B77280;
  v29 = v17;
  v30 = v20;
  v27[4] = self;
  v23 = v13;
  v28 = v23;
  [indicatorInfos enumerateObjectsUsingBlock:v27];

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
  dataSource = [(PUTilingLayout *)self dataSource];
  pu_rootIndexPath = [MEMORY[0x1E696AC88] pu_rootIndexPath];
  self->_numberOfItems = [dataSource numberOfSubItemsAtIndexPath:pu_rootIndexPath];

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

- (PUFilmstripTilingLayout)initWithDataSource:(id)source contentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v11.receiver = self;
  v11.super_class = PUFilmstripTilingLayout;
  v6 = [(PUTilingLayout *)&v11 initWithDataSource:source];
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