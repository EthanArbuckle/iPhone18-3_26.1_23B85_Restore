@interface PUTilingViewCoordinateSystem
- (CGPoint)coordinateSystemOrigin;
- (PUTilingCoordinateSystem)parentCoordinateSystem;
- (PUTilingView)tilingView;
- (PUTilingViewCoordinateSystem)initWithTilingView:(id)a3;
@end

@implementation PUTilingViewCoordinateSystem

- (PUTilingView)tilingView
{
  WeakRetained = objc_loadWeakRetained(&self->_tilingView);

  return WeakRetained;
}

- (CGPoint)coordinateSystemOrigin
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUTilingViewCoordinateSystem.m" lineNumber:34 description:@"must be implemented by concrete subclass"];

  v5 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v6;
  result.x = v5;
  return result;
}

- (PUTilingCoordinateSystem)parentCoordinateSystem
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUTilingViewCoordinateSystem.m" lineNumber:29 description:@"must be implemented by concrete subclass"];

  return 0;
}

- (PUTilingViewCoordinateSystem)initWithTilingView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PUTilingViewCoordinateSystem;
  v5 = [(PUTilingViewCoordinateSystem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tilingView, v4);
  }

  return v6;
}

@end