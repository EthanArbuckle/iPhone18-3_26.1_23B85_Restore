@interface PXSpatialOverlayController
- (BOOL)canAddOverlayViewForAsset:(id)asset;
- (PXSpatialOverlayController)init;
- (void)addOverlayViewForAsset:(id)asset toView:(id)view animated:(BOOL)animated;
- (void)prepareOverlayViewForAssets:(id)assets;
- (void)removeOverlayViewFromView:(id)view animated:(BOOL)animated;
@end

@implementation PXSpatialOverlayController

- (BOOL)canAddOverlayViewForAsset:(id)asset
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_1A4629FC0(asset);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (void)prepareOverlayViewForAssets:(id)assets
{
  sub_1A3DB58C8();
  v4 = sub_1A524CA34();
  selfCopy = self;
  sub_1A4627C60(v4);
}

- (void)addOverlayViewForAsset:(id)asset toView:(id)view animated:(BOOL)animated
{
  swift_unknownObjectRetain();
  viewCopy = view;
  selfCopy = self;
  sub_1A46281AC();
  assetCopy = asset;
  OverlayViewController.addOverlay(for:to:animationDuration:animations:)(&assetCopy, viewCopy, 0);
}

- (void)removeOverlayViewFromView:(id)view animated:(BOOL)animated
{
  viewCopy = view;
  self;
  sub_1A46281AC();
  OverlayViewController.removeOverlay(from:animationDuration:animations:)(viewCopy);
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