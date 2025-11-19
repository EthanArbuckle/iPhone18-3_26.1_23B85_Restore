@interface PUSingleAssetLayoutTransitionCoordinator
- (id)_layoutInfoWithDefaultDisappearance:(id)a3;
@end

@implementation PUSingleAssetLayoutTransitionCoordinator

- (id)_layoutInfoWithDefaultDisappearance:(id)a3
{
  v4 = a3;
  v5 = [(PUSingleAssetLayoutTransitionCoordinator *)self fixedCoordinateSystem];
  v6 = [v4 layoutInfoWithCoordinateSystem:v5];

  v7 = [v6 layoutInfoWithZPosition:*&PUTilingLayoutBackgroundZPosition + *&PUTilingLayoutBackgroundZPosition];

  return v7;
}

@end