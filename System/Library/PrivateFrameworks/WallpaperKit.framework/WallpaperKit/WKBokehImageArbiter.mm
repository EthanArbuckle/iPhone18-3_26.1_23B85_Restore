@interface WKBokehImageArbiter
+ (id)imageForZ:(double)z;
@end

@implementation WKBokehImageArbiter

+ (id)imageForZ:(double)z
{
  objc_opt_self();
  v2 = (z + 1.5) / 1.2;
  if (v2 < 0.0)
  {
    v2 = 0.0;
  }

  v3 = MEMORY[0x1E69DCAB8];
  v4 = imageTable[blurTable[vcvtad_u64_f64((1.0 - fmin(v2, 1.0)) * 9.0)]];
  v5 = WKBundleForWallpaperKitFramework();
  v6 = [v3 imageNamed:v4 inBundle:v5 compatibleWithTraitCollection:0];

  return v6;
}

@end