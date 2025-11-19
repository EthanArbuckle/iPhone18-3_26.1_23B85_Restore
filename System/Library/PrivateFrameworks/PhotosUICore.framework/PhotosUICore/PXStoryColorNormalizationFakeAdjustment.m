@interface PXStoryColorNormalizationFakeAdjustment
+ (PFStoryRecipeDisplayAssetNormalization)fakeNormalization;
- (PXStoryColorNormalizationFakeAdjustment)init;
@end

@implementation PXStoryColorNormalizationFakeAdjustment

- (PXStoryColorNormalizationFakeAdjustment)init
{
  v3 = +[PXStoryColorNormalizationFakeAdjustment fakeNormalization];
  v6.receiver = self;
  v6.super_class = PXStoryColorNormalizationFakeAdjustment;
  v4 = [(PXStoryColorNormalizationAdjustment *)&v6 initWithNormalization:v3];

  return v4;
}

+ (PFStoryRecipeDisplayAssetNormalization)fakeNormalization
{
  if (fakeNormalization_s_generateFakeNormalizationOnce != -1)
  {
    dispatch_once(&fakeNormalization_s_generateFakeNormalizationOnce, &__block_literal_global_39496);
  }

  v3 = fakeNormalization_s_fakeNormalization;

  return v3;
}

void __60__PXStoryColorNormalizationFakeAdjustment_fakeNormalization__block_invoke()
{
  v2 = PFStoryRecipeDisplayAssetNormalizationDataFromMediaAnalysisDictionaryAndRevision();
  v0 = [objc_alloc(MEMORY[0x1E69C08C0]) initWithAnalysisData:v2];
  v1 = fakeNormalization_s_fakeNormalization;
  fakeNormalization_s_fakeNormalization = v0;
}

@end