@interface PUTilingViewFixedCoordinateSystem
- (CGPoint)coordinateSystemOrigin;
- (id)parentCoordinateSystem;
@end

@implementation PUTilingViewFixedCoordinateSystem

- (CGPoint)coordinateSystemOrigin
{
  tilingView = [(PUTilingViewCoordinateSystem *)self tilingView];
  [tilingView contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)parentCoordinateSystem
{
  tilingView = [(PUTilingViewCoordinateSystem *)self tilingView];
  contentCoordinateSystem = [tilingView contentCoordinateSystem];

  return contentCoordinateSystem;
}

@end