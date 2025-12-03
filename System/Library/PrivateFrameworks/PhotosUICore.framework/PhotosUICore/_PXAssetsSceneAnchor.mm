@interface _PXAssetsSceneAnchor
- (CGPoint)anchorOrigin;
- (_PXAssetsSceneAnchor)initWithAssetReference:(id)reference anchorOrigin:(CGPoint)origin distance:(double)distance;
@end

@implementation _PXAssetsSceneAnchor

- (CGPoint)anchorOrigin
{
  x = self->_anchorOrigin.x;
  y = self->_anchorOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (_PXAssetsSceneAnchor)initWithAssetReference:(id)reference anchorOrigin:(CGPoint)origin distance:(double)distance
{
  y = origin.y;
  x = origin.x;
  referenceCopy = reference;
  v14.receiver = self;
  v14.super_class = _PXAssetsSceneAnchor;
  v11 = [(_PXAssetsSceneAnchor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_assetReference, reference);
    v12->_anchorOrigin.x = x;
    v12->_anchorOrigin.y = y;
    v12->_distance = distance;
  }

  return v12;
}

@end