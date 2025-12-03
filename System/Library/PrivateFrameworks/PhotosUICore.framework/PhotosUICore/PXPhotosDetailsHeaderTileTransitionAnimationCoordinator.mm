@interface PXPhotosDetailsHeaderTileTransitionAnimationCoordinator
- (BOOL)getFinalGeometry:(PXTileGeometry *)geometry finalUserData:(id *)data forDisappearingTileWithIdentifier:(PXTileIdentifier *)identifier fromGeometry:(PXTileGeometry *)fromGeometry fromUserData:(id)userData;
- (BOOL)getInitialGeometry:(PXTileGeometry *)geometry initialUserData:(id *)data forAppearingTileWithIdentifier:(PXTileIdentifier *)identifier toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData;
- (PXPhotosDetailsHeaderTileTransitionAnimationCoordinator)init;
@end

@implementation PXPhotosDetailsHeaderTileTransitionAnimationCoordinator

- (BOOL)getFinalGeometry:(PXTileGeometry *)geometry finalUserData:(id *)data forDisappearingTileWithIdentifier:(PXTileIdentifier *)identifier fromGeometry:(PXTileGeometry *)fromGeometry fromUserData:(id)userData
{
  fromGeometry->alpha = 0.0;
  origin = fromGeometry->frame.origin;
  size = fromGeometry->frame.size;
  v9 = fromGeometry->size;
  geometry->center = fromGeometry->center;
  geometry->size = v9;
  geometry->frame.origin = origin;
  geometry->frame.size = size;
  v10 = *&fromGeometry->hidden;
  v11 = *&fromGeometry->contentSize.height;
  v12 = *&fromGeometry->contentsRect.size.height;
  *&geometry->contentsRect.origin.y = *&fromGeometry->contentsRect.origin.y;
  *&geometry->contentsRect.size.height = v12;
  *&geometry->hidden = v10;
  *&geometry->contentSize.height = v11;
  v13 = *&fromGeometry->transform.a;
  v14 = *&fromGeometry->transform.c;
  v15 = *&fromGeometry->alpha;
  *&geometry->transform.tx = *&fromGeometry->transform.tx;
  *&geometry->alpha = v15;
  *&geometry->transform.a = v13;
  *&geometry->transform.c = v14;
  *data = userData;
  return 1;
}

- (BOOL)getInitialGeometry:(PXTileGeometry *)geometry initialUserData:(id *)data forAppearingTileWithIdentifier:(PXTileIdentifier *)identifier toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData
{
  toGeometry->alpha = 0.0;
  origin = toGeometry->frame.origin;
  size = toGeometry->frame.size;
  v9 = toGeometry->size;
  geometry->center = toGeometry->center;
  geometry->size = v9;
  geometry->frame.origin = origin;
  geometry->frame.size = size;
  v10 = *&toGeometry->hidden;
  v11 = *&toGeometry->contentSize.height;
  v12 = *&toGeometry->contentsRect.size.height;
  *&geometry->contentsRect.origin.y = *&toGeometry->contentsRect.origin.y;
  *&geometry->contentsRect.size.height = v12;
  *&geometry->hidden = v10;
  *&geometry->contentSize.height = v11;
  v13 = *&toGeometry->transform.a;
  v14 = *&toGeometry->transform.c;
  v15 = *&toGeometry->alpha;
  *&geometry->transform.tx = *&toGeometry->transform.tx;
  *&geometry->alpha = v15;
  *&geometry->transform.a = v13;
  *&geometry->transform.c = v14;
  *data = userData;
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