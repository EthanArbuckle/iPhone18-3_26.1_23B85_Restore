@interface ParallaxAssetViewLayoutProvider
- (_TtC12PhotosUICore31ParallaxAssetViewLayoutProvider)init;
- (id)generateOrientedLayoutsForFullExtent:(CGRect)a3 layoutConfiguration:(id)a4 layoutRegions:(id)a5 segmentationMatteImage:(id)a6 segmentationClassification:(unint64_t)a7 error:(id *)a8;
@end

@implementation ParallaxAssetViewLayoutProvider

- (id)generateOrientedLayoutsForFullExtent:(CGRect)a3 layoutConfiguration:(id)a4 layoutRegions:(id)a5 segmentationMatteImage:(id)a6 segmentationClassification:(unint64_t)a7 error:(id *)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a4;
  swift_unknownObjectRetain();
  v17 = a6;
  v18 = self;
  sub_1A3D86C10(v16, a5, v17, a7, x, y, width, height);

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