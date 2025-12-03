@interface ParallaxAssetViewLayoutProvider
- (_TtC12PhotosUICore31ParallaxAssetViewLayoutProvider)init;
- (id)generateOrientedLayoutsForFullExtent:(CGRect)extent layoutConfiguration:(id)configuration layoutRegions:(id)regions segmentationMatteImage:(id)image segmentationClassification:(unint64_t)classification error:(id *)error;
@end

@implementation ParallaxAssetViewLayoutProvider

- (id)generateOrientedLayoutsForFullExtent:(CGRect)extent layoutConfiguration:(id)configuration layoutRegions:(id)regions segmentationMatteImage:(id)image segmentationClassification:(unint64_t)classification error:(id *)error
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  imageCopy = image;
  selfCopy = self;
  sub_1A3D86C10(configurationCopy, regions, imageCopy, classification, x, y, width, height);

  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &unk_1EB12BC70);
  v19 = sub_1A524CA14();

  return v19;
}

- (_TtC12PhotosUICore31ParallaxAssetViewLayoutProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end