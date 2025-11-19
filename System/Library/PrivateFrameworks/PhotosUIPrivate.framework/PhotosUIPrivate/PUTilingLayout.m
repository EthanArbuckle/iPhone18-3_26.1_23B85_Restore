@interface PUTilingLayout
- (CGPoint)coordinateSystemOrigin;
- (CGRect)contentBounds;
- (CGRect)visibleRect;
- (CGRect)visibleRectForScrollingToItemAtIndexPath:(id)a3 scrollPosition:(int64_t)a4;
- (PUTilingCoordinateSystem)parentCoordinateSystem;
- (PUTilingLayout)initWithDataSource:(id)a3;
- (PUTilingView)tilingView;
- (id)description;
- (id)layoutInfoForTileWithIndexPath:(id)a3 kind:(id)a4;
- (id)layoutInfosForTilesInRect:(CGRect)a3;
- (id)tileIdentifierForTileWithIndexPath:(id)a3 kind:(id)a4;
- (void)invalidateLayoutWithContext:(id)a3 updateImmediately:(BOOL)a4;
- (void)prepareLayout;
- (void)setCoordinateSystemOrigin:(CGPoint)a3;
- (void)setParentCoordinateSystem:(id)a3;
@end

@implementation PUTilingLayout

- (CGPoint)coordinateSystemOrigin
{
  x = self->_coordinateSystemOrigin.x;
  y = self->_coordinateSystemOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PUTilingCoordinateSystem)parentCoordinateSystem
{
  WeakRetained = objc_loadWeakRetained(&self->_parentCoordinateSystem);

  return WeakRetained;
}

- (PUTilingView)tilingView
{
  WeakRetained = objc_loadWeakRetained(&self->_tilingView);

  return WeakRetained;
}

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PUTilingLayout;
  v3 = [(PUTilingLayout *)&v7 description];
  v4 = [(PUTilingLayout *)self dataSource];
  v5 = [v3 stringByAppendingFormat:@" dataSource:%@", v4];

  return v5;
}

- (void)setCoordinateSystemOrigin:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (a3.x != self->_coordinateSystemOrigin.x || a3.y != self->_coordinateSystemOrigin.y)
  {
    self->_coordinateSystemOrigin = a3;
    v6 = [(PUTilingLayout *)self coordinateSystem];
    [v6 setCoordinateSystemOrigin:{x, y}];
  }
}

- (void)setParentCoordinateSystem:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parentCoordinateSystem);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_parentCoordinateSystem, obj);
    v5 = [(PUTilingLayout *)self coordinateSystem];
    [v5 setParentCoordinateSystem:obj];
  }
}

- (id)tileIdentifierForTileWithIndexPath:(id)a3 kind:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_tileIdentifierByIndexPathByKind objectForKeyedSubscript:v7];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)self->_tileIdentifierByIndexPathByKind setObject:v8 forKeyedSubscript:v7];
  }

  v9 = [v8 objectForKeyedSubscript:v6];
  if (!v9)
  {
    v10 = [PUTileIdentifier alloc];
    v11 = [(PUTilingLayout *)self dataSource];
    v12 = [v11 identifier];
    v9 = [(PUTileIdentifier *)v10 initWithIndexPath:v6 tileKind:v7 dataSourceIdentifier:v12];

    [v8 setObject:v9 forKeyedSubscript:v6];
  }

  return v9;
}

- (void)invalidateLayoutWithContext:(id)a3 updateImmediately:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PUTilingLayout *)self tilingView];
  [v7 invalidateLayout:self withContext:v6];

  if (v4)
  {
    v8 = [(PUTilingLayout *)self tilingView];
    [v8 layoutIfNeeded];
  }
}

- (CGRect)visibleRectForScrollingToItemAtIndexPath:(id)a3 scrollPosition:(int64_t)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PUTilingLayout.m" lineNumber:58 description:@"must be implemented by concrete subclass"];

  v7 = *MEMORY[0x1E695F050];
  v8 = *(MEMORY[0x1E695F050] + 8);
  v9 = *(MEMORY[0x1E695F050] + 16);
  v10 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (id)layoutInfoForTileWithIndexPath:(id)a3 kind:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PUTilingLayout.m" lineNumber:53 description:@"must be implemented by concrete subclass"];

  return 0;
}

- (id)layoutInfosForTilesInRect:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PUTilingLayout.m" lineNumber:48 description:@"must be implemented by concrete subclass"];

  return 0;
}

- (CGRect)contentBounds
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUTilingLayout.m" lineNumber:43 description:@"must be implemented by concrete subclass"];

  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)prepareLayout
{
  v4 = [(PUTilingLayout *)self dataSource];

  if (!v4)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PUTilingLayout.m" lineNumber:39 description:@"data source must be set"];
  }
}

- (PUTilingLayout)initWithDataSource:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PUTilingLayout;
  v6 = [(PUTilingLayout *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
    v8 = objc_alloc_init(PUTilingLayoutCoordinateSystem);
    coordinateSystem = v7->_coordinateSystem;
    v7->_coordinateSystem = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tileIdentifierByIndexPathByKind = v7->_tileIdentifierByIndexPathByKind;
    v7->_tileIdentifierByIndexPathByKind = v10;
  }

  return v7;
}

@end