@interface UIGraphicsImageRendererFormat(SeymourMedia)
+ (id)smu_formatForImage:()SeymourMedia;
+ (id)smu_preferredRendererFormat;
@end

@implementation UIGraphicsImageRendererFormat(SeymourMedia)

+ (id)smu_preferredRendererFormat
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  v1 = MEMORY[0x277D75568];
  v2 = [v0 traitCollection];
  v3 = [v1 formatForTraitCollection:v2];

  return v3;
}

+ (id)smu_formatForImage:()SeymourMedia
{
  v3 = a3;
  v4 = [objc_opt_class() smu_preferredRendererFormat];
  v5 = [MEMORY[0x277D759A0] mainScreen];
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 smu_supportsDeepColor];

  if (v7)
  {
    v8 = [v3 imageRendererFormat];

    [v5 scale];
    [v8 setScale:?];
    v4 = v8;
  }

  return v4;
}

@end