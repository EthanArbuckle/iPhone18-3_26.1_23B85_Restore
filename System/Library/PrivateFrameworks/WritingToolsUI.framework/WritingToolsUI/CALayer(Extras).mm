@interface CALayer(Extras)
+ (id)layerWithName:()Extras;
@end

@implementation CALayer(Extras)

+ (id)layerWithName:()Extras
{
  v3 = a3;
  layer = [objc_opt_class() layer];
  [layer setName:v3];

  return layer;
}

@end