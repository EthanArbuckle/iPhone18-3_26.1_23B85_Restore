@interface PXPhotosDetailsHeaderTileTransitionAnimationCoordinator
- (BOOL)getFinalGeometry:(PXTileGeometry *)a3 finalUserData:(id *)a4 forDisappearingTileWithIdentifier:(PXTileIdentifier *)a5 fromGeometry:(PXTileGeometry *)a6 fromUserData:(id)a7;
- (BOOL)getInitialGeometry:(PXTileGeometry *)a3 initialUserData:(id *)a4 forAppearingTileWithIdentifier:(PXTileIdentifier *)a5 toGeometry:(PXTileGeometry *)a6 toUserData:(id)a7;
- (PXPhotosDetailsHeaderTileTransitionAnimationCoordinator)init;
@end

@implementation PXPhotosDetailsHeaderTileTransitionAnimationCoordinator

- (BOOL)getFinalGeometry:(PXTileGeometry *)a3 finalUserData:(id *)a4 forDisappearingTileWithIdentifier:(PXTileIdentifier *)a5 fromGeometry:(PXTileGeometry *)a6 fromUserData:(id)a7
{
  a6->alpha = 0.0;
  origin = a6->frame.origin;
  size = a6->frame.size;
  v9 = a6->size;
  a3->center = a6->center;
  a3->size = v9;
  a3->frame.origin = origin;
  a3->frame.size = size;
  v10 = *&a6->hidden;
  v11 = *&a6->contentSize.height;
  v12 = *&a6->contentsRect.size.height;
  *&a3->contentsRect.origin.y = *&a6->contentsRect.origin.y;
  *&a3->contentsRect.size.height = v12;
  *&a3->hidden = v10;
  *&a3->contentSize.height = v11;
  v13 = *&a6->transform.a;
  v14 = *&a6->transform.c;
  v15 = *&a6->alpha;
  *&a3->transform.tx = *&a6->transform.tx;
  *&a3->alpha = v15;
  *&a3->transform.a = v13;
  *&a3->transform.c = v14;
  *a4 = a7;
  return 1;
}

- (BOOL)getInitialGeometry:(PXTileGeometry *)a3 initialUserData:(id *)a4 forAppearingTileWithIdentifier:(PXTileIdentifier *)a5 toGeometry:(PXTileGeometry *)a6 toUserData:(id)a7
{
  a6->alpha = 0.0;
  origin = a6->frame.origin;
  size = a6->frame.size;
  v9 = a6->size;
  a3->center = a6->center;
  a3->size = v9;
  a3->frame.origin = origin;
  a3->frame.size = size;
  v10 = *&a6->hidden;
  v11 = *&a6->contentSize.height;
  v12 = *&a6->contentsRect.size.height;
  *&a3->contentsRect.origin.y = *&a6->contentsRect.origin.y;
  *&a3->contentsRect.size.height = v12;
  *&a3->hidden = v10;
  *&a3->contentSize.height = v11;
  v13 = *&a6->transform.a;
  v14 = *&a6->transform.c;
  v15 = *&a6->alpha;
  *&a3->transform.tx = *&a6->transform.tx;
  *&a3->alpha = v15;
  *&a3->transform.a = v13;
  *&a3->transform.c = v14;
  *a4 = a7;
  return 1;
}

- (PXPhotosDetailsHeaderTileTransitionAnimationCoordinator)init
{
  v6.receiver = self;
  v6.super_class = PXPhotosDetailsHeaderTileTransitionAnimationCoordinator;
  v2 = [(PXPhotosDetailsHeaderTileTransitionAnimationCoordinator *)&v6 init];
  if (v2)
  {
    v3 = +[PXBasicTileAnimationOptions defaultAnimationOptions];
    basicAnimationOptions = v2->__basicAnimationOptions;
    v2->__basicAnimationOptions = v3;

    [(PXBasicTileAnimationOptions *)v2->__basicAnimationOptions setShouldNotifyTiles:1];
  }

  return v2;
}

@end