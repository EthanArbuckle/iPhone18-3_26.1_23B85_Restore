@interface _PXAssetsSceneAnchor
- (CGPoint)anchorOrigin;
- (_PXAssetsSceneAnchor)initWithAssetReference:(id)a3 anchorOrigin:(CGPoint)a4 distance:(double)a5;
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

- (_PXAssetsSceneAnchor)initWithAssetReference:(id)a3 anchorOrigin:(CGPoint)a4 distance:(double)a5
{
  y = a4.y;
  x = a4.x;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = _PXAssetsSceneAnchor;
  v11 = [(_PXAssetsSceneAnchor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_assetReference, a3);
    v12->_anchorOrigin.x = x;
    v12->_anchorOrigin.y = y;
    v12->_distance = a5;
  }

  return v12;
}

@end