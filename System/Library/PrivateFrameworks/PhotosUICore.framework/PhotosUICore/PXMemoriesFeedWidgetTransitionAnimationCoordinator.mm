@interface PXMemoriesFeedWidgetTransitionAnimationCoordinator
- (BOOL)useDoubleSidedAnimationForUpdatedTileWithIdentifier:(PXTileIdentifier *)identifier fromGeometry:(PXTileGeometry *)geometry fromUserData:(id)data toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData;
@end

@implementation PXMemoriesFeedWidgetTransitionAnimationCoordinator

- (BOOL)useDoubleSidedAnimationForUpdatedTileWithIdentifier:(PXTileIdentifier *)identifier fromGeometry:(PXTileGeometry *)geometry fromUserData:(id)data toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData
{
  x = geometry->center.x;
  y = geometry->center.y;
  width = geometry->size.width;
  height = geometry->size.height;
  transform = geometry->transform;
  alpha = geometry->alpha;
  zPosition = geometry->zPosition;
  hidden = geometry->hidden;
  v33 = geometry->contentSize.width;
  v31 = geometry->contentSize.height;
  v28 = geometry->contentsRect.origin.y;
  v29 = geometry->contentsRect.origin.x;
  v26 = geometry->contentsRect.size.height;
  v27 = geometry->contentsRect.size.width;
  coordinateSpaceIdentifier = geometry->coordinateSpaceIdentifier;
  v14 = toGeometry->center.x;
  v13 = toGeometry->center.y;
  v16 = toGeometry->size.width;
  v15 = toGeometry->size.height;
  v38 = toGeometry->transform;
  v34 = toGeometry->alpha;
  v36 = toGeometry->zPosition;
  v17 = toGeometry->hidden;
  v32 = toGeometry->contentSize.width;
  v30 = toGeometry->contentSize.height;
  v24 = toGeometry->contentsRect.origin.y;
  v25 = toGeometry->contentsRect.origin.x;
  v22 = toGeometry->contentsRect.size.height;
  v23 = toGeometry->contentsRect.size.width;
  v18 = toGeometry->coordinateSpaceIdentifier;
  if (!CGRectEqualToRect(geometry->frame, toGeometry->frame))
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