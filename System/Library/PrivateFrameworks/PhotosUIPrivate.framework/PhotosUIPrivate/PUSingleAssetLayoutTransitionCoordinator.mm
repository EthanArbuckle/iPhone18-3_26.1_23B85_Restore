@interface PUSingleAssetLayoutTransitionCoordinator
- (id)_layoutInfoWithDefaultDisappearance:(id)disappearance;
@end

@implementation PUSingleAssetLayoutTransitionCoordinator

- (id)_layoutInfoWithDefaultDisappearance:(id)disappearance
{
  disappearanceCopy = disappearance;
  fixedCoordinateSystem = [(PUSingleAssetLayoutTransitionCoordinator *)self fixedCoordinateSystem];
  v6 = [disappearanceCopy layoutInfoWithCoordinateSystem:fixedCoordinateSystem];

  v7 = [v6 layoutInfoWithZPosition:*&PUTilingLayoutBackgroundZPosition + *&PUTilingLayoutBackgroundZPosition];

  return v7;
}

@end