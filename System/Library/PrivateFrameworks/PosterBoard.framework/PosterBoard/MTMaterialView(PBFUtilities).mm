@interface MTMaterialView(PBFUtilities)
+ (id)pbf_materialView;
- (void)pbf_scaleBlurRadiusByAmount:()PBFUtilities;
@end

@implementation MTMaterialView(PBFUtilities)

+ (id)pbf_materialView
{
  v0 = [MEMORY[0x277D26718] materialViewWithRecipe:54];
  [v0 setBackdropScaleAdjustment:&__block_literal_global_49_0];

  return v0;
}

- (void)pbf_scaleBlurRadiusByAmount:()PBFUtilities
{
  if ((BSFloatIsOne() & 1) == 0)
  {
    layer = [self layer];
    v4 = [layer valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
    [v4 doubleValue];
    v6 = v5;

    v7 = [MEMORY[0x277CCABB0] numberWithDouble:v6 * a2];
    [layer setValue:v7 forKeyPath:@"filters.gaussianBlur.inputRadius"];
  }
}

@end