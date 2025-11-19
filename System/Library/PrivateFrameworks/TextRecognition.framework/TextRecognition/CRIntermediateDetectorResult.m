@interface CRIntermediateDetectorResult
- (CRIntermediateDetectorResult)initWithNumberOfScales:(int64_t)a3;
@end

@implementation CRIntermediateDetectorResult

- (CRIntermediateDetectorResult)initWithNumberOfScales:(int64_t)a3
{
  v18.receiver = self;
  v18.super_class = CRIntermediateDetectorResult;
  v4 = [(CRIntermediateDetectorResult *)&v18 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:a3];
    [(CRIntermediateDetectorResult *)v4 setPyramidScaleSize:v5];

    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:a3];
    [(CRIntermediateDetectorResult *)v4 setPyramidScaleName:v6];

    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:a3];
    [(CRIntermediateDetectorResult *)v4 setPyramidPreIntraScaleNMSTextFeatures:v7];

    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:a3];
    [(CRIntermediateDetectorResult *)v4 setPyramidPostIntraScaleNMSTextFeatures:v8];

    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:a3];
    [(CRIntermediateDetectorResult *)v4 setPyramidPostInterScaleNMSTextFeatures:v9];

    if (a3)
    {
      v10 = 0;
      do
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v12 = [(CRIntermediateDetectorResult *)v4 pyramidPreIntraScaleNMSTextFeatures];
        [v12 setObject:v11 atIndexedSubscript:v10];

        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v14 = [(CRIntermediateDetectorResult *)v4 pyramidPostIntraScaleNMSTextFeatures];
        [v14 setObject:v13 atIndexedSubscript:v10];

        v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v16 = [(CRIntermediateDetectorResult *)v4 pyramidPostInterScaleNMSTextFeatures];
        [v16 setObject:v15 atIndexedSubscript:v10];

        ++v10;
      }

      while (a3 != v10);
    }
  }

  return v4;
}

@end