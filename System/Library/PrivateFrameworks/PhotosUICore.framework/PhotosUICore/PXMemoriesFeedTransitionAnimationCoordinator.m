@interface PXMemoriesFeedTransitionAnimationCoordinator
- (BOOL)getFinalGeometry:(PXTileGeometry *)a3 finalUserData:(id *)a4 forDisappearingTileWithIdentifier:(PXTileIdentifier *)a5 fromGeometry:(PXTileGeometry *)a6 fromUserData:(id)a7;
- (BOOL)getInitialGeometry:(PXTileGeometry *)a3 initialUserData:(id *)a4 forAppearingTileWithIdentifier:(PXTileIdentifier *)a5 toGeometry:(PXTileGeometry *)a6 toUserData:(id)a7;
- (PXMemoriesFeedTransitionAnimationCoordinator)init;
@end

@implementation PXMemoriesFeedTransitionAnimationCoordinator

- (BOOL)getFinalGeometry:(PXTileGeometry *)a3 finalUserData:(id *)a4 forDisappearingTileWithIdentifier:(PXTileIdentifier *)a5 fromGeometry:(PXTileGeometry *)a6 fromUserData:(id)a7
{
  contentsRect = a6->contentsRect;
  coordinateSpaceIdentifier = a6->coordinateSpaceIdentifier;
  v12 = *&a6->zPosition;
  contentSize = a6->contentSize;
  memmove(a3, a6, 0x70uLL);
  a3->alpha = 0.0;
  a3->contentSize = contentSize;
  a3->contentsRect = contentsRect;
  a3->coordinateSpaceIdentifier = coordinateSpaceIdentifier;
  *&a3->zPosition = v12;
  v10 = a7;
  *a4 = a7;
  return 1;
}

- (BOOL)getInitialGeometry:(PXTileGeometry *)a3 initialUserData:(id *)a4 forAppearingTileWithIdentifier:(PXTileIdentifier *)a5 toGeometry:(PXTileGeometry *)a6 toUserData:(id)a7
{
  contentsRect = a6->contentsRect;
  coordinateSpaceIdentifier = a6->coordinateSpaceIdentifier;
  v12 = *&a6->zPosition;
  contentSize = a6->contentSize;
  memmove(a3, a6, 0x70uLL);
  a3->alpha = 0.0;
  a3->contentSize = contentSize;
  a3->contentsRect = contentsRect;
  a3->coordinateSpaceIdentifier = coordinateSpaceIdentifier;
  *&a3->zPosition = v12;
  v10 = a7;
  *a4 = a7;
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