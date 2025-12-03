@interface WFSpotlightIconRenderer
+ (id)loadIconFromData:(id)data size:(CGSize)size;
@end

@implementation WFSpotlightIconRenderer

+ (id)loadIconFromData:(id)data size:(CGSize)size
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  v7 = sub_1C840B17C();
  v9 = v8;

  v10 = static SpotlightIconRenderer.loadIcon(from:with:)(width, height);
  sub_1C8315128(v7, v9);

  return v10;
}

@end