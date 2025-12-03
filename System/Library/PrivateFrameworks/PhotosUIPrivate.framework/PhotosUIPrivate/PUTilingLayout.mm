@interface PUTilingLayout
- (CGPoint)coordinateSystemOrigin;
- (CGRect)contentBounds;
- (CGRect)visibleRect;
- (CGRect)visibleRectForScrollingToItemAtIndexPath:(id)path scrollPosition:(int64_t)position;
- (PUTilingCoordinateSystem)parentCoordinateSystem;
- (PUTilingLayout)initWithDataSource:(id)source;
- (PUTilingView)tilingView;
- (id)description;
- (id)layoutInfoForTileWithIndexPath:(id)path kind:(id)kind;
- (id)layoutInfosForTilesInRect:(CGRect)rect;
- (id)tileIdentifierForTileWithIndexPath:(id)path kind:(id)kind;
- (void)invalidateLayoutWithContext:(id)context updateImmediately:(BOOL)immediately;
- (void)prepareLayout;
- (void)setCoordinateSystemOrigin:(CGPoint)origin;
- (void)setParentCoordinateSystem:(id)system;
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
  dataSource = [(PUTilingLayout *)self dataSource];
  v5 = [v3 stringByAppendingFormat:@" dataSource:%@", dataSource];

  return v5;
}

- (void)setCoordinateSystemOrigin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  if (origin.x != self->_coordinateSystemOrigin.x || origin.y != self->_coordinateSystemOrigin.y)
  {
    self->_coordinateSystemOrigin = origin;
    coordinateSystem = [(PUTilingLayout *)self coordinateSystem];
    [coordinateSystem setCoordinateSystemOrigin:{x, y}];
  }
}

- (void)setParentCoordinateSystem:(id)system
{
  obj = system;
  WeakRetained = objc_loadWeakRetained(&self->_parentCoordinateSystem);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_parentCoordinateSystem, obj);
    coordinateSystem = [(PUTilingLayout *)self coordinateSystem];
    [coordinateSystem setParentCoordinateSystem:obj];
  }
}

- (id)tileIdentifierForTileWithIndexPath:(id)path kind:(id)kind
{
  pathCopy = path;
  kindCopy = kind;
  v8 = [(NSMutableDictionary *)self->_tileIdentifierByIndexPathByKind objectForKeyedSubscript:kindCopy];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)self->_tileIdentifierByIndexPathByKind setObject:v8 forKeyedSubscript:kindCopy];
  }

  v9 = [v8 objectForKeyedSubscript:pathCopy];
  if (!v9)
  {
    v10 = [PUTileIdentifier alloc];
    dataSource = [(PUTilingLayout *)self dataSource];
    identifier = [dataSource identifier];
    v9 = [(PUTileIdentifier *)v10 initWithIndexPath:pathCopy tileKind:kindCopy dataSourceIdentifier:identifier];

    [v8 setObject:v9 forKeyedSubscript:pathCopy];
  }

  return v9;
}

- (void)invalidateLayoutWithContext:(id)context updateImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  contextCopy = context;
  tilingView = [(PUTilingLayout *)self tilingView];
  [tilingView invalidateLayout:self withContext:contextCopy];

  if (immediatelyCopy)
  {
    tilingView2 = [(PUTilingLayout *)self tilingView];
    [tilingView2 layoutIfNeeded];
  }
}

- (CGRect)visibleRectForScrollingToItemAtIndexPath:(id)path scrollPosition:(int64_t)position
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingLayout.m" lineNumber:58 description:@"must be implemented by concrete subclass"];

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

- (id)layoutInfoForTileWithIndexPath:(id)path kind:(id)kind
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingLayout.m" lineNumber:53 description:@"must be implemented by concrete subclass"];

  return 0;
}

- (id)layoutInfosForTilesInRect:(CGRect)rect
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingLayout.m" lineNumber:48 description:@"must be implemented by concrete subclass"];

  return 0;
}

- (CGRect)contentBounds
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingLayout.m" lineNumber:43 description:@"must be implemented by concrete subclass"];

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
  dataSource = [(PUTilingLayout *)self dataSource];

  if (!dataSource)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingLayout.m" lineNumber:39 description:@"data source must be set"];
  }
}

- (PUTilingLayout)initWithDataSource:(id)source
{
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = PUTilingLayout;
  v6 = [(PUTilingLayout *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
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