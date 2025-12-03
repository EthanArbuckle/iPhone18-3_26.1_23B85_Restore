@interface UIGraphicsImageRendererFormat(SeymourMedia)
+ (id)smu_formatForImage:()SeymourMedia;
+ (id)smu_preferredRendererFormat;
@end

@implementation UIGraphicsImageRendererFormat(SeymourMedia)

+ (id)smu_preferredRendererFormat
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  v1 = MEMORY[0x277D75568];
  traitCollection = [mainScreen traitCollection];
  v3 = [v1 formatForTraitCollection:traitCollection];

  return v3;
}

+ (id)smu_formatForImage:()SeymourMedia
{
  v3 = a3;
  smu_preferredRendererFormat = [objc_opt_class() smu_preferredRendererFormat];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  smu_supportsDeepColor = [currentDevice smu_supportsDeepColor];

  if (smu_supportsDeepColor)
  {
    imageRendererFormat = [v3 imageRendererFormat];

    [mainScreen scale];
    [imageRendererFormat setScale:?];
    smu_preferredRendererFormat = imageRendererFormat;
  }

  return smu_preferredRendererFormat;
}

@end