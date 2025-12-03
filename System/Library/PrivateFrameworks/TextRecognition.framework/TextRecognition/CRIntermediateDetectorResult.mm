@interface CRIntermediateDetectorResult
- (CRIntermediateDetectorResult)initWithNumberOfScales:(int64_t)scales;
@end

@implementation CRIntermediateDetectorResult

- (CRIntermediateDetectorResult)initWithNumberOfScales:(int64_t)scales
{
  v18.receiver = self;
  v18.super_class = CRIntermediateDetectorResult;
  v4 = [(CRIntermediateDetectorResult *)&v18 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:scales];
    [(CRIntermediateDetectorResult *)v4 setPyramidScaleSize:v5];

    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:scales];
    [(CRIntermediateDetectorResult *)v4 setPyramidScaleName:v6];

    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:scales];
    [(CRIntermediateDetectorResult *)v4 setPyramidPreIntraScaleNMSTextFeatures:v7];

    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:scales];
    [(CRIntermediateDetectorResult *)v4 setPyramidPostIntraScaleNMSTextFeatures:v8];

    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:scales];
    [(CRIntermediateDetectorResult *)v4 setPyramidPostInterScaleNMSTextFeatures:v9];

    if (scales)
    {
      v10 = 0;
      do
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        pyramidPreIntraScaleNMSTextFeatures = [(CRIntermediateDetectorResult *)v4 pyramidPreIntraScaleNMSTextFeatures];
        [pyramidPreIntraScaleNMSTextFeatures setObject:v11 atIndexedSubscript:v10];

        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
        pyramidPostIntraScaleNMSTextFeatures = [(CRIntermediateDetectorResult *)v4 pyramidPostIntraScaleNMSTextFeatures];
        [pyramidPostIntraScaleNMSTextFeatures setObject:v13 atIndexedSubscript:v10];

        v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        pyramidPostInterScaleNMSTextFeatures = [(CRIntermediateDetectorResult *)v4 pyramidPostInterScaleNMSTextFeatures];
        [pyramidPostInterScaleNMSTextFeatures setObject:v15 atIndexedSubscript:v10];

        ++v10;
      }

      while (scales != v10);
    }
  }

  return v4;
}

@end