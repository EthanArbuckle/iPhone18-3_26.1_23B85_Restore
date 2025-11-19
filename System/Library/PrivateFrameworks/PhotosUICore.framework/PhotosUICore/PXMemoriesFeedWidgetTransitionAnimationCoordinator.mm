@interface PXMemoriesFeedWidgetTransitionAnimationCoordinator
- (BOOL)useDoubleSidedAnimationForUpdatedTileWithIdentifier:(PXTileIdentifier *)a3 fromGeometry:(PXTileGeometry *)a4 fromUserData:(id)a5 toGeometry:(PXTileGeometry *)a6 toUserData:(id)a7;
@end

@implementation PXMemoriesFeedWidgetTransitionAnimationCoordinator

- (BOOL)useDoubleSidedAnimationForUpdatedTileWithIdentifier:(PXTileIdentifier *)a3 fromGeometry:(PXTileGeometry *)a4 fromUserData:(id)a5 toGeometry:(PXTileGeometry *)a6 toUserData:(id)a7
{
  x = a4->center.x;
  y = a4->center.y;
  width = a4->size.width;
  height = a4->size.height;
  transform = a4->transform;
  alpha = a4->alpha;
  zPosition = a4->zPosition;
  hidden = a4->hidden;
  v33 = a4->contentSize.width;
  v31 = a4->contentSize.height;
  v28 = a4->contentsRect.origin.y;
  v29 = a4->contentsRect.origin.x;
  v26 = a4->contentsRect.size.height;
  v27 = a4->contentsRect.size.width;
  coordinateSpaceIdentifier = a4->coordinateSpaceIdentifier;
  v14 = a6->center.x;
  v13 = a6->center.y;
  v16 = a6->size.width;
  v15 = a6->size.height;
  v38 = a6->transform;
  v34 = a6->alpha;
  v36 = a6->zPosition;
  v17 = a6->hidden;
  v32 = a6->contentSize.width;
  v30 = a6->contentSize.height;
  v24 = a6->contentsRect.origin.y;
  v25 = a6->contentsRect.origin.x;
  v22 = a6->contentsRect.size.height;
  v23 = a6->contentsRect.size.width;
  v18 = a6->coordinateSpaceIdentifier;
  if (!CGRectEqualToRect(a4->frame, a6->frame))
  {
    return 1;
  }

  result = 1;
  if (x == v14 && y == v13 && width == v16 && height == v15)
  {
    t1 = transform;
    t2 = v38;
    v20 = CGAffineTransformEqualToTransform(&t1, &t2);
    result = 1;
    if (v20 && zPosition == v36 && hidden == v17 && alpha == v34 && v33 == v32 && v31 == v30)
    {
      v42.origin.y = v28;
      v42.origin.x = v29;
      v42.size.height = v26;
      v42.size.width = v27;
      v43.origin.y = v24;
      v43.origin.x = v25;
      v43.size.height = v22;
      v43.size.width = v23;
      v21 = !CGRectEqualToRect(v42, v43);
      return coordinateSpaceIdentifier != v18 || v21;
    }
  }

  return result;
}

@end