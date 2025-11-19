@interface PUParallaxSpatialPhotoLayerView
- (PUParallaxLayerLayoutInfo)currentLayoutInfo;
- (UIView)primaryContentView;
- (_TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView)initWithParallaxSpatialPhotoLayer:(id)a3 inactiveStyleDataLayer:(id)a4 isEditing:(BOOL)a5;
- (_TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView)occlusionLayerView;
- (id)parallaxSpatialPhotoLayer;
- (id)snapshotViewAfterScreenUpdates:(BOOL)a3;
- (void)didMoveToWindow;
- (void)layoutWithInfo:(id)a3;
- (void)setAttitude:(id)a3;
- (void)setBacklightProgress:(double)a3;
- (void)setDeviceOrientation:(int64_t)a3;
- (void)setEnableGyroAnimator:(BOOL)a3;
- (void)setEnableOcclusion:(BOOL)a3;
- (void)setIsGeneratingPoster:(BOOL)a3;
- (void)setOcclusionLayerView:(id)a3;
- (void)setParallaxSpatialPhotoLayer:(id)a3;
- (void)setUnlockProgress:(double)a3;
@end

@implementation PUParallaxSpatialPhotoLayerView

- (id)parallaxSpatialPhotoLayer
{
  v0 = sub_1B3871C58();

  return v0;
}

- (_TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView)initWithParallaxSpatialPhotoLayer:(id)a3 inactiveStyleDataLayer:(id)a4 isEditing:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  return sub_1B3870B2C(v7, a4, a5);
}

- (void)setParallaxSpatialPhotoLayer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B3871B58(v4);
}

- (void)layoutWithInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B3871C68(v4);
}

- (id)snapshotViewAfterScreenUpdates:(BOOL)a3
{
  v4 = self;
  v5 = sub_1B3871D24(a3);

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

- (void)setAttitude:(id)a3
{
  v3 = *(a3.var1 + 32);
  v4 = self;
  sub_1B3871F6C(v3);
}

- (void)setDeviceOrientation:(int64_t)a3
{
  v4 = self;
  sub_1B3872088(a3);
}

- (void)setUnlockProgress:(double)a3
{
  v4 = self;
  sub_1B387216C(a3);
}

- (void)setBacklightProgress:(double)a3
{
  v4 = self;
  sub_1B387222C(a3);
}

- (void)setIsGeneratingPoster:(BOOL)a3
{
  v4 = self;
  sub_1B3872310(a3);
}

- (void)setEnableOcclusion:(BOOL)a3
{
  v4 = self;
  sub_1B38725DC(a3);
}

- (void)setEnableGyroAnimator:(BOOL)a3
{
  v4 = self;
  sub_1B387269C(a3);
}

- (_TtC15PhotosUIPrivate40PUParallaxSpatialPhotoOcclusionLayerView)occlusionLayerView
{
  v2 = sub_1B3872708();

  return v2;
}

- (void)setOcclusionLayerView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1B3872794(a3);
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_1B38727D8();
}

@end