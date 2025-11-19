@interface PUParallaxSpatialPhotoOcclusionLayerView
- (PUParallaxLayerLayoutInfo)currentLayoutInfo;
- (UIView)primaryContentView;
- (id)parallaxSpatialPhotoOcclusionLayer;
- (id)snapshotViewAfterScreenUpdates:(BOOL)a3;
- (void)layoutWithInfo:(id)a3;
- (void)setParallaxSpatialPhotoOcclusionLayer:(id)a3;
@end

@implementation PUParallaxSpatialPhotoOcclusionLayerView

- (id)parallaxSpatialPhotoOcclusionLayer
{
  v0 = sub_1B38ADE98();

  return v0;
}

- (void)setParallaxSpatialPhotoOcclusionLayer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B38ADDA0(v4);
}

- (void)layoutWithInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B38ADEA8(v4);
}

- (id)snapshotViewAfterScreenUpdates:(BOOL)a3
{
  v4 = self;
  v5 = sub_1B38ADF64(a3);

  return v5;
}

- (PUParallaxLayerLayoutInfo)currentLayoutInfo
{
  v2 = sub_1B38AE040();

  return v2;
}

- (UIView)primaryContentView
{
  v2 = sub_1B38AE0E4();

  return v2;
}

@end