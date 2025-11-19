@interface PXSpatialOverlayController
- (BOOL)canAddOverlayViewForAsset:(id)a3;
- (PXSpatialOverlayController)init;
- (void)addOverlayViewForAsset:(id)a3 toView:(id)a4 animated:(BOOL)a5;
- (void)prepareOverlayViewForAssets:(id)a3;
- (void)removeOverlayViewFromView:(id)a3 animated:(BOOL)a4;
@end

@implementation PXSpatialOverlayController

- (BOOL)canAddOverlayViewForAsset:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_1A4629FC0(a3);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (void)prepareOverlayViewForAssets:(id)a3
{
  sub_1A3DB58C8();
  v4 = sub_1A524CA34();
  v5 = self;
  sub_1A4627C60(v4);
}

- (void)addOverlayViewForAsset:(id)a3 toView:(id)a4 animated:(BOOL)a5
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = self;
  sub_1A46281AC();
  v10 = a3;
  OverlayViewController.addOverlay(for:to:animationDuration:animations:)(&v10, v8, 0);
}

- (void)removeOverlayViewFromView:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  self;
  sub_1A46281AC();
  OverlayViewController.removeOverlay(from:animationDuration:animations:)(v5);
}

- (PXSpatialOverlayController)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR___PXSpatialOverlayController_assetsToPrewarm);
  *v4 = sub_1A4627E00(MEMORY[0x1E69E7CC0]);
  v4[1] = v5;
  *(&self->super.isa + OBJC_IVAR___PXSpatialOverlayController_animationDuration) = 0x3FF0000000000000;
  *(&self->super.isa + OBJC_IVAR___PXSpatialOverlayController____lazy_storage___overlayViewController) = 0;
  *(&self->super.isa + OBJC_IVAR___PXSpatialOverlayController_currentPresentation) = 0;
  *(&self->super.isa + OBJC_IVAR___PXSpatialOverlayController_contentSourcesByAsset) = MEMORY[0x1E69E7CC8];
  *(&self->super.isa + OBJC_IVAR___PXSpatialOverlayController_useDebugOverlayView) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(PXSpatialOverlayController *)&v7 init];
}

@end