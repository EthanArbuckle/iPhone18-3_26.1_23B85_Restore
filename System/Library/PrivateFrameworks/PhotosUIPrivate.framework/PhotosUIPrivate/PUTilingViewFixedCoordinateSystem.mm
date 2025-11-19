@interface PUTilingViewFixedCoordinateSystem
- (CGPoint)coordinateSystemOrigin;
- (id)parentCoordinateSystem;
@end

@implementation PUTilingViewFixedCoordinateSystem

- (CGPoint)coordinateSystemOrigin
{
  v2 = [(PUTilingViewCoordinateSystem *)self tilingView];
  [v2 contentOffset];
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
  v2 = [(PUTilingViewCoordinateSystem *)self tilingView];
  v3 = [v2 contentCoordinateSystem];

  return v3;
}

@end