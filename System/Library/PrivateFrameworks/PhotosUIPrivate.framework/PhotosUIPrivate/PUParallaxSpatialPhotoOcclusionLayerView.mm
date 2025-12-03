@interface PUParallaxSpatialPhotoOcclusionLayerView
- (PUParallaxLayerLayoutInfo)currentLayoutInfo;
- (UIView)primaryContentView;
- (id)parallaxSpatialPhotoOcclusionLayer;
- (id)snapshotViewAfterScreenUpdates:(BOOL)updates;
- (void)layoutWithInfo:(id)info;
- (void)setParallaxSpatialPhotoOcclusionLayer:(id)layer;
@end

@implementation PUParallaxSpatialPhotoOcclusionLayerView

- (id)parallaxSpatialPhotoOcclusionLayer
{
  v0 = sub_1B38ADE98();

  return v0;
}

- (void)setParallaxSpatialPhotoOcclusionLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  sub_1B38ADDA0(layerCopy);
}

- (void)layoutWithInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  sub_1B38ADEA8(infoCopy);
}

- (id)snapshotViewAfterScreenUpdates:(BOOL)updates
{
  selfCopy = self;
  v5 = sub_1B38ADF64(updates);

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