@interface _PFStoryRecipeDisplayAssetNormalizationDataV2
+ (id)limits;
- (_PFStoryRecipeDisplayAssetNormalizationDataV2)initWithSliderNetPackedDataV2:(id *)v2;
@end

@implementation _PFStoryRecipeDisplayAssetNormalizationDataV2

- (_PFStoryRecipeDisplayAssetNormalizationDataV2)initWithSliderNetPackedDataV2:(id *)v2
{
  v4.receiver = self;
  v4.super_class = _PFStoryRecipeDisplayAssetNormalizationDataV2;
  return [(_PFStoryRecipeDisplayAssetNormalizationDataV1 *)&v4 initWithSliderNetPackedDataV1:v2];
}

+ (id)limits
{
  if (limits_onceToken_192 != -1)
  {
    dispatch_once(&limits_onceToken_192, &__block_literal_global_195);
  }

  v3 = limits_limitsV1_193;

  return v3;
}

@end