@interface PUGridTilingLayout
- (CGRect)_frameForItemAtIndexPath:(id)path;
- (CGSize)estimatedSectionSize;
- (CGSize)interItemSpacing;
- (CGSize)itemSize;
- (CGSize)sizeForSection:(int64_t)section numberOfItems:(int64_t)items;
- (PUGridTilingLayout)init;
- (id)layoutInfoForTileWithIndexPath:(id)path kind:(id)kind;
- (int64_t)_numberOfColumns;
- (void)addLayoutInfosForTilesInRect:(CGRect)rect section:(int64_t)section toSet:(id)set;
- (void)prepareLayout;
- (void)setVisibleRect:(CGRect)rect;
@end

@implementation PUGridTilingLayout

- (CGSize)interItemSpacing
{
  width = self->_interItemSpacing.width;
  height = self->_interItemSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)itemSize
{
  width = self->_itemSize.width;
  height = self->_itemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (int64_t)_numberOfColumns
{
  result = self->_numberOfColumns;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUGridTilingLayout.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"_numberOfColumns != NSNotFound"}];

    return self->_numberOfColumns;
  }

  return result;
}

- (CGRect)_frameForItemAtIndexPath:(id)path
{
  pathCopy = path;
  -[PUSectionedTilingLayout boundsForSection:](self, "boundsForSection:", [pathCopy section]);
  v6 = v5;
  v8 = v7;
  _numberOfColumns = [(PUGridTilingLayout *)self _numberOfColumns];
  item = [pathCopy item];

  [(PUGridTilingLayout *)self itemSize];
  v12 = v11;
  v14 = v13;
  [(PUGridTilingLayout *)self interItemSpacing];
  v16 = v6 + (item % _numberOfColumns) * (v12 + v15);
  v18 = v8 + (item / _numberOfColumns) * (v14 + v17);
  v19 = v12;
  v20 = v14;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v16;
  return result;
}

- (CGSize)sizeForSection:(int64_t)section numberOfItems:(int64_t)items
{
  [(PUGridTilingLayout *)self itemSize];
  v7 = v6;
  v9 = v8;
  [(PUGridTilingLayout *)self interItemSpacing];
  v11 = v10;
  v13 = v12;
  _numberOfColumns = [(PUGridTilingLayout *)self _numberOfColumns];
  if (items < 1)
  {
    v15 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v15 = -(v13 - ((items + _numberOfColumns - 1) / _numberOfColumns) * (v9 + v13));
  }

  v16 = -(v11 - _numberOfColumns * (v7 + v11));
  result.height = v15;
  result.width = v16;
  return result;
}

- (id)layoutInfoForTileWithIndexPath:(id)path kind:(id)kind
{
  pathCopy = path;
  kindCopy = kind;
  if ([kindCopy isEqualToString:@"PUTileKindItemContent"])
  {
    [(PUGridTilingLayout *)self _frameForItemAtIndexPath:pathCopy];
    v9 = v8;
    v11 = v10;
    v12 = [(PUTilingLayout *)self tileIdentifierForTileWithIndexPath:pathCopy kind:kindCopy];
    v13 = [PUTileLayoutInfo alloc];
    UIRectGetCenter();
    v15 = v14;
    v17 = v16;
    coordinateSystem = [(PUTilingLayout *)self coordinateSystem];
    v19 = *(MEMORY[0x1E695EFD0] + 16);
    v22[0] = *MEMORY[0x1E695EFD0];
    v22[1] = v19;
    v22[2] = *(MEMORY[0x1E695EFD0] + 32);
    v20 = [(PUTileLayoutInfo *)v13 initWithTileIdentifier:v12 center:v22 size:coordinateSystem alpha:v15 transform:v17 zPosition:v9 coordinateSystem:v11, 1.0, 0.0];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)addLayoutInfosForTilesInRect:(CGRect)rect section:(int64_t)section toSet:(id)set
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  setCopy = set;
  v17.receiver = self;
  v17.super_class = PUGridTilingLayout;
  [(PUSectionedTilingLayout *)&v17 addLayoutInfosForTilesInRect:section section:setCopy toSet:x, y, width, height];
  v12 = [(PUSectionedTilingLayout *)self numberOfItemsInSection:section];
  if (v12 >= 1)
  {
    v13 = v12;
    for (i = 0; i != v13; ++i)
    {
      v15 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:section];
      [(PUGridTilingLayout *)self _frameForItemAtIndexPath:v15];
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      if (CGRectIntersectsRect(v18, v19))
      {
        v16 = [(PUGridTilingLayout *)self layoutInfoForTileWithIndexPath:v15 kind:@"PUTileKindItemContent"];
        [setCopy addObject:v16];
      }
    }
  }
}

- (CGSize)estimatedSectionSize
{
  v3 = *MEMORY[0x1E695F060];
  [(PUGridTilingLayout *)self itemSize];
  v5 = v4;
  [(PUGridTilingLayout *)self interItemSpacing];
  v7 = -(v6 - (v5 + v6) * 3.0);
  v8 = v3;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)prepareLayout
{
  v7.receiver = self;
  v7.super_class = PUGridTilingLayout;
  [(PUSectionedTilingLayout *)&v7 prepareLayout];
  [(PUGridTilingLayout *)self itemSize];
  v4 = v3;
  [(PUGridTilingLayout *)self interItemSpacing];
  v6 = v5;
  [(PUTilingLayout *)self visibleRect];
  self->_numberOfColumns = vcvtmd_s64_f64((v6 + CGRectGetWidth(v8)) / (v4 + v6));
}

- (void)setVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(PUTilingLayout *)self visibleRect];
  v9 = v8;
  v11 = v10;
  v14.receiver = self;
  v14.super_class = PUGridTilingLayout;
  [(PUSectionedTilingLayout *)&v14 setVisibleRect:x, y, width, height];
  if (width != v9 || height != v11)
  {
    self->_numberOfColumns = 0x7FFFFFFFFFFFFFFFLL;
    v13 = objc_alloc_init(PUTilingLayoutInvalidationContext);
    [(PUTilingLayout *)self invalidateLayoutWithContext:v13];
  }
}

- (PUGridTilingLayout)init
{
  v8.receiver = self;
  v8.super_class = PUGridTilingLayout;
  result = [(PUTilingLayout *)&v8 init];
  if (result)
  {
    result->_itemSize = vdupq_n_s64(0x4059000000000000uLL);
    __asm { FMOV            V0.2D, #10.0 }

    result->_interItemSpacing = _Q0;
    result->_numberOfColumns = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

@end