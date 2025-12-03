@interface PUParallaxSpatialPhotoLayerView
- (PUParallaxLayerLayoutInfo)currentLayoutInfo;
- (UIView)primaryContentView;
- (_TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView)initWithParallaxSpatialPhotoLayer:(id)layer inactiveStyleDataLayer:(id)dataLayer isEditing:(BOOL)editing;
- (_TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView)occlusionLayerView;
- (id)parallaxSpatialPhotoLayer;
- (id)snapshotViewAfterScreenUpdates:(BOOL)updates;
- (void)didMoveToWindow;
- (void)layoutWithInfo:(id)info;
- (void)setAttitude:(id)attitude;
- (void)setBacklightProgress:(double)progress;
- (void)setDeviceOrientation:(int64_t)orientation;
- (void)setEnableGyroAnimator:(BOOL)animator;
- (void)setEnableOcclusion:(BOOL)occlusion;
- (void)setIsGeneratingPoster:(BOOL)poster;
- (void)setOcclusionLayerView:(id)view;
- (void)setParallaxSpatialPhotoLayer:(id)layer;
- (void)setUnlockProgress:(double)progress;
@end

@implementation PUParallaxSpatialPhotoLayerView

- (id)parallaxSpatialPhotoLayer
{
  v0 = sub_1B3871C58();

  return v0;
}

- (_TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView)initWithParallaxSpatialPhotoLayer:(id)layer inactiveStyleDataLayer:(id)dataLayer isEditing:(BOOL)editing
{
  layerCopy = layer;
  dataLayerCopy = dataLayer;
  return sub_1B3870B2C(layerCopy, dataLayer, editing);
}

- (void)setParallaxSpatialPhotoLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  sub_1B3871B58(layerCopy);
}

- (void)layoutWithInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  sub_1B3871C68(infoCopy);
}

- (id)snapshotViewAfterScreenUpdates:(BOOL)updates
{
  selfCopy = self;
  v5 = sub_1B3871D24(updates);

  return v5;
}

- (PUParallaxLayerLayoutInfo)currentLayoutInfo
{
  v2 = sub_1B3871E98();

  return v2;
}

- (UIView)primaryContentView
{
  v2 = sub_1B3871F3C();

  return v2;
}

- (void)setAttitude:(id)attitude
{
  v3 = *(attitude.var1 + 32);
  selfCopy = self;
  sub_1B3871F6C(v3);
}

- (void)setDeviceOrientation:(int64_t)orientation
{
  selfCopy = self;
  sub_1B3872088(orientation);
}

- (void)setUnlockProgress:(double)progress
{
  selfCopy = self;
  sub_1B387216C(progress);
}

- (void)setBacklightProgress:(double)progress
{
  selfCopy = self;
  sub_1B387222C(progress);
}

- (void)setIsGeneratingPoster:(BOOL)poster
{
  selfCopy = self;
  sub_1B3872310(poster);
}

- (void)setEnableOcclusion:(BOOL)occlusion
{
  selfCopy = self;
  sub_1B38725DC(occlusion);
}

- (void)setEnableGyroAnimator:(BOOL)animator
{
  selfCopy = self;
  sub_1B387269C(animator);
}

- (_TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView)occlusionLayerView
{
  v2 = sub_1B3872708();

  return v2;
}

- (void)setOcclusionLayerView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1B3872794(view);
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_1B38727D8();
}

@end