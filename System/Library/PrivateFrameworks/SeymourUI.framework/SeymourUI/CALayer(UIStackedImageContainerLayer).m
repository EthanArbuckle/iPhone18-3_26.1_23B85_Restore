@interface CALayer(UIStackedImageContainerLayer)
+ (double)smu_scaledSizeForSize:()UIStackedImageContainerLayer selectionStyle:;
@end

@implementation CALayer(UIStackedImageContainerLayer)

+ (double)smu_scaledSizeForSize:()UIStackedImageContainerLayer selectionStyle:
{
  v8 = [MEMORY[0x277D76278] newStandardConfiguration];
  [v8 scaleSizeIncrease];
  [objc_opt_class() smu_scaledSizeForSize:a5 focusSizeIncrease:a1 selectionStyle:{a2, v9}];
  v11 = v10;

  return v11;
}

@end