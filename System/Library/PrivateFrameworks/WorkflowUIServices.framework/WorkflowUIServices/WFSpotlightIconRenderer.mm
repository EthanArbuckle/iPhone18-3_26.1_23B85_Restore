@interface WFSpotlightIconRenderer
+ (id)loadIconFromData:(id)a3 size:(CGSize)a4;
@end

@implementation WFSpotlightIconRenderer

+ (id)loadIconFromData:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v7 = sub_1C840B17C();
  v9 = v8;

  v10 = static SpotlightIconRenderer.loadIcon(from:with:)(width, height);
  sub_1C8315128(v7, v9);

  return v10;
}

@end