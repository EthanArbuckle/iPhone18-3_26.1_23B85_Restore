@interface PXMemoriesFeedTransitionAnimationCoordinator
- (BOOL)getFinalGeometry:(PXTileGeometry *)geometry finalUserData:(id *)data forDisappearingTileWithIdentifier:(PXTileIdentifier *)identifier fromGeometry:(PXTileGeometry *)fromGeometry fromUserData:(id)userData;
- (BOOL)getInitialGeometry:(PXTileGeometry *)geometry initialUserData:(id *)data forAppearingTileWithIdentifier:(PXTileIdentifier *)identifier toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData;
- (PXMemoriesFeedTransitionAnimationCoordinator)init;
@end

@implementation PXMemoriesFeedTransitionAnimationCoordinator

- (BOOL)getFinalGeometry:(PXTileGeometry *)geometry finalUserData:(id *)data forDisappearingTileWithIdentifier:(PXTileIdentifier *)identifier fromGeometry:(PXTileGeometry *)fromGeometry fromUserData:(id)userData
{
  contentsRect = fromGeometry->contentsRect;
  coordinateSpaceIdentifier = fromGeometry->coordinateSpaceIdentifier;
  v12 = *&fromGeometry->zPosition;
  contentSize = fromGeometry->contentSize;
  memmove(geometry, fromGeometry, 0x70uLL);
  geometry->alpha = 0.0;
  geometry->contentSize = contentSize;
  geometry->contentsRect = contentsRect;
  geometry->coordinateSpaceIdentifier = coordinateSpaceIdentifier;
  *&geometry->zPosition = v12;
  userDataCopy = userData;
  *data = userData;
  return 1;
}

- (BOOL)getInitialGeometry:(PXTileGeometry *)geometry initialUserData:(id *)data forAppearingTileWithIdentifier:(PXTileIdentifier *)identifier toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData
{
  contentsRect = toGeometry->contentsRect;
  coordinateSpaceIdentifier = toGeometry->coordinateSpaceIdentifier;
  v12 = *&toGeometry->zPosition;
  contentSize = toGeometry->contentSize;
  memmove(geometry, toGeometry, 0x70uLL);
  geometry->alpha = 0.0;
  geometry->contentSize = contentSize;
  geometry->contentsRect = contentsRect;
  geometry->coordinateSpaceIdentifier = coordinateSpaceIdentifier;
  *&geometry->zPosition = v12;
  userDataCopy = userData;
  *data = userData;
  return 1;
}

- (PXMemoriesFeedTransitionAnimationCoordinator)init
{
  v6.receiver = self;
  v6.super_class = PXMemoriesFeedTransitionAnimationCoordinator;
  v2 = [(PXMemoriesFeedTransitionAnimationCoordinator *)&v6 init];
  if (v2)
  {
    v3 = +[PXBasicTileAnimationOptions defaultAnimationOptions];
    basicOptions = v2->_basicOptions;
    v2->_basicOptions = v3;

    [(PXBasicTileAnimationOptions *)v2->_basicOptions setShouldNotifyTiles:1];
  }

  return v2;
}

@end