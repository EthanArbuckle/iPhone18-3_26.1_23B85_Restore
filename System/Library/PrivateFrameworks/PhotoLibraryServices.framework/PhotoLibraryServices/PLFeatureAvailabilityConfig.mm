@interface PLFeatureAvailabilityConfig
- (NSDictionary)dictionary;
- (PLFeatureAvailabilityConfig)init;
- (PLFeatureAvailabilityConfig)initWithFeature:(unint64_t)feature;
@end

@implementation PLFeatureAvailabilityConfig

- (NSDictionary)dictionary
{
  v18[7] = *MEMORY[0x1E69E9840];
  v17[0] = @"fractionOfCuratedAssetsWithCaptionsThreshold";
  v3 = MEMORY[0x1E696AD98];
  [(PLFeatureAvailabilityConfig *)self fractionOfCuratedAssetsWithCaptionsThreshold];
  v4 = [v3 numberWithDouble:?];
  v18[0] = v4;
  v17[1] = @"fractionOfAllAssetsWithMediaAnalysisInSearchIndexThreshold";
  v5 = MEMORY[0x1E696AD98];
  [(PLFeatureAvailabilityConfig *)self fractionOfAllAssetsWithMediaAnalysisInSearchIndexThreshold];
  v6 = [v5 numberWithDouble:?];
  v18[1] = v6;
  v17[2] = @"fractionOfCuratedAssetsWithSceneAnalysisInSearchIndexThreshold";
  v7 = MEMORY[0x1E696AD98];
  [(PLFeatureAvailabilityConfig *)self fractionOfCuratedAssetsWithSceneAnalysisInSearchIndexThreshold];
  v8 = [v7 numberWithDouble:?];
  v18[2] = v8;
  v17[3] = @"fractionOfCuratedAssetsWithEmbeddingsInVectorIndexThreshold";
  v9 = MEMORY[0x1E696AD98];
  [(PLFeatureAvailabilityConfig *)self fractionOfCuratedAssetsWithEmbeddingsInVectorIndexThreshold];
  v10 = [v9 numberWithDouble:?];
  v18[3] = v10;
  v17[4] = @"fractionOfHighlightsEnrichedThreshold";
  v11 = MEMORY[0x1E696AD98];
  [(PLFeatureAvailabilityConfig *)self fractionOfHighlightsEnrichedThreshold];
  v12 = [v11 numberWithDouble:?];
  v18[4] = v12;
  v17[5] = @"needsPhotosKnowledgeGraph";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLFeatureAvailabilityConfig needsPhotosKnowledgeGraph](self, "needsPhotosKnowledgeGraph")}];
  v18[5] = v13;
  v17[6] = @"minimumNumberOfCuratedAssets";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PLFeatureAvailabilityConfig minimumNumberOfCuratedAssets](self, "minimumNumberOfCuratedAssets")}];
  v18[6] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:7];

  return v15;
}

- (PLFeatureAvailabilityConfig)initWithFeature:(unint64_t)feature
{
  v4 = [(PLFeatureAvailabilityConfig *)self init];
  v5 = v4;
  if (v4)
  {
    if (feature - 2 < 2)
    {
      v4->_fractionOfAllAssetsWithMediaAnalysisInSearchIndexThreshold = 0.9;
    }

    else
    {
      if (feature == 1)
      {
        __asm { FMOV            V0.2D, #0.75 }

        *&v4->_fractionOfCuratedAssetsWithSceneAnalysisInSearchIndexThreshold = _Q0;
        v4->_fractionOfCuratedAssetsWithEmbeddingsInVectorIndexThreshold = 0.75;
        v4->_minimumNumberOfCuratedAssets = 50;
        goto LABEL_8;
      }

      if (feature == 6)
      {
        v4->_fractionOfCuratedAssetsWithCaptionsThreshold = 0.9;
        v4->_fractionOfAllAssetsWithMediaAnalysisInSearchIndexThreshold = 0.8;
        v4->_fractionOfHighlightsEnrichedThreshold = 0.8;
LABEL_8:
        v4->_needsPhotosKnowledgeGraph = 1;
      }
    }

    v11 = v4;
  }

  return v5;
}

- (PLFeatureAvailabilityConfig)init
{
  v6.receiver = self;
  v6.super_class = PLFeatureAvailabilityConfig;
  v2 = [(PLFeatureAvailabilityConfig *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end