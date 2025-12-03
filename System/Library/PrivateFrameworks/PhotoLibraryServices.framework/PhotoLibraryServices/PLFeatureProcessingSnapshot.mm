@interface PLFeatureProcessingSnapshot
- (NSDictionary)dictionary;
- (PLFeatureProcessingSnapshot)init;
- (PLFeatureProcessingSnapshot)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)resetSearchIndexState;
@end

@implementation PLFeatureProcessingSnapshot

- (void)resetSearchIndexState
{
  self->_fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex = 0.0;
  *&self->_fractionOfAllAssetsWithSceneAnalysisInSearchIndex = 0u;
  *&self->_fractionOfAllAssetsWithMediaAnalysisInSearchIndex = 0u;
  date = [MEMORY[0x1E695DF00] date];
  dateSearchIndexSnapshotLastUpdated = self->_dateSearchIndexSnapshotLastUpdated;
  self->_dateSearchIndexSnapshotLastUpdated = date;
}

- (NSDictionary)dictionary
{
  v36[19] = *MEMORY[0x1E69E9840];
  v30 = MEMORY[0x1E695DF90];
  v35[0] = @"fractionOfAllAssetsAnalyzedForScenes";
  v3 = MEMORY[0x1E696AD98];
  [(PLFeatureProcessingSnapshot *)self fractionOfAllAssetsAnalyzedForScenes];
  v34 = [v3 numberWithDouble:?];
  v36[0] = v34;
  v35[1] = @"fractionOfAllAssetsWithSceneAnalysisInSearchIndex";
  v4 = MEMORY[0x1E696AD98];
  [(PLFeatureProcessingSnapshot *)self fractionOfAllAssetsWithSceneAnalysisInSearchIndex];
  v33 = [v4 numberWithDouble:?];
  v36[1] = v33;
  v35[2] = @"numberOfAssetsWithSceneAnalysisInSearchIndex";
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PLFeatureProcessingSnapshot numberOfAssetsWithSceneAnalysisInSearchIndex](self, "numberOfAssetsWithSceneAnalysisInSearchIndex")}];
  v36[2] = v32;
  v35[3] = @"fractionOfAllAssetsWithMediaAnalysisInSearchIndex";
  v5 = MEMORY[0x1E696AD98];
  [(PLFeatureProcessingSnapshot *)self fractionOfAllAssetsWithMediaAnalysisInSearchIndex];
  v31 = [v5 numberWithDouble:?];
  v36[3] = v31;
  v35[4] = @"numberOfAssetsWithMediaAnalysisInSearchIndex";
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PLFeatureProcessingSnapshot numberOfAssetsWithMediaAnalysisInSearchIndex](self, "numberOfAssetsWithMediaAnalysisInSearchIndex")}];
  v36[4] = v29;
  v35[5] = @"fractionOfAllAssetsWithCaptions";
  v6 = MEMORY[0x1E696AD98];
  [(PLFeatureProcessingSnapshot *)self fractionOfAllAssetsWithCaptions];
  v28 = [v6 numberWithDouble:?];
  v36[5] = v28;
  v35[6] = @"fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex";
  v7 = MEMORY[0x1E696AD98];
  [(PLFeatureProcessingSnapshot *)self fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex];
  v27 = [v7 numberWithDouble:?];
  v36[6] = v27;
  v35[7] = @"fractionOfCuratedAssetsWithEmbeddingsInVectorIndex";
  v8 = MEMORY[0x1E696AD98];
  [(PLFeatureProcessingSnapshot *)self fractionOfCuratedAssetsWithEmbeddingsInVectorIndex];
  v26 = [v8 numberWithDouble:?];
  v36[7] = v26;
  v35[8] = @"fractionOfCuratedAssetsIndexedInVUClustering";
  v9 = MEMORY[0x1E696AD98];
  [(PLFeatureProcessingSnapshot *)self fractionOfCuratedAssetsIndexedInVUClustering];
  v25 = [v9 numberWithDouble:?];
  v36[8] = v25;
  v35[9] = @"fractionOfCuratedAssetsWithCaptions";
  v10 = MEMORY[0x1E696AD98];
  [(PLFeatureProcessingSnapshot *)self fractionOfCuratedAssetsWithCaptions];
  v24 = [v10 numberWithDouble:?];
  v36[9] = v24;
  v35[10] = @"fractionOfHighlightsEnriched";
  v11 = MEMORY[0x1E696AD98];
  [(PLFeatureProcessingSnapshot *)self fractionOfHighlightsEnriched];
  v23 = [v11 numberWithDouble:?];
  v36[10] = v23;
  v35[11] = @"photosKnowledgeGraphIsReady";
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLFeatureProcessingSnapshot photosKnowledgeGraphIsReady](self, "photosKnowledgeGraphIsReady")}];
  v36[11] = v22;
  v35[12] = @"vuIndexIsFullClustered";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLFeatureProcessingSnapshot vuIndexIsFullClustered](self, "vuIndexIsFullClustered")}];
  v36[12] = v21;
  v35[13] = @"totalAssetCount";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PLFeatureProcessingSnapshot totalAssetCount](self, "totalAssetCount")}];
  v36[13] = v12;
  v35[14] = @"totalCuratedAssetCount";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PLFeatureProcessingSnapshot totalCuratedAssetCount](self, "totalCuratedAssetCount")}];
  v36[14] = v13;
  v35[15] = @"totalAssetForScenesCount";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PLFeatureProcessingSnapshot totalAssetForScenesCount](self, "totalAssetForScenesCount")}];
  v36[15] = v14;
  v35[16] = @"totalCuratedAssetForScenesCount";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PLFeatureProcessingSnapshot totalCuratedAssetForScenesCount](self, "totalCuratedAssetForScenesCount")}];
  v36[16] = v15;
  v35[17] = @"mediaAnalysisImageVersion";
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PLFeatureProcessingSnapshot mediaAnalysisImageVersion](self, "mediaAnalysisImageVersion")}];
  v36[17] = v16;
  v35[18] = @"hasConsistentMediaAnalysisImageVersionKey";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLFeatureProcessingSnapshot hasConsistentMediaAnalysisImageVersion](self, "hasConsistentMediaAnalysisImageVersion")}];
  v36[18] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:19];
  v19 = [v30 dictionaryWithDictionary:v18];

  [v19 setObject:self->_dateComputed forKeyedSubscript:@"dateComputed"];
  [v19 setObject:self->_lastFullVUIndexClusterDate forKeyedSubscript:@"lastFullVUIndexClusterDate"];
  [v19 setObject:self->_dateSearchIndexSnapshotLastUpdated forKeyedSubscript:@"dateSearchIndexSnapshotLastUpdated"];

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  dictionary = [(PLFeatureProcessingSnapshot *)self dictionary];
  v6 = [v4 initWithDictionary:dictionary];

  return v6;
}

- (PLFeatureProcessingSnapshot)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v44.receiver = self;
  v44.super_class = PLFeatureProcessingSnapshot;
  v5 = [(PLFeatureProcessingSnapshot *)&v44 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"fractionOfAllAssetsAnalyzedForScenes"];
    [v6 doubleValue];
    v5->_fractionOfAllAssetsAnalyzedForScenes = v7;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"fractionOfAllAssetsWithSceneAnalysisInSearchIndex"];
    [v8 doubleValue];
    v5->_fractionOfAllAssetsWithSceneAnalysisInSearchIndex = v9;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"numberOfAssetsWithSceneAnalysisInSearchIndex"];
    v5->_numberOfAssetsWithSceneAnalysisInSearchIndex = [v10 unsignedIntegerValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"fractionOfAllAssetsWithMediaAnalysisInSearchIndex"];
    [v11 doubleValue];
    v5->_fractionOfAllAssetsWithMediaAnalysisInSearchIndex = v12;

    v13 = [dictionaryCopy objectForKeyedSubscript:@"numberOfAssetsWithMediaAnalysisInSearchIndex"];
    v5->_numberOfAssetsWithMediaAnalysisInSearchIndex = [v13 unsignedIntegerValue];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"fractionOfAllAssetsWithCaptions"];
    [v14 doubleValue];
    v5->_fractionOfAllAssetsWithCaptions = v15;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"dateSearchIndexSnapshotLastUpdated"];
    dateSearchIndexSnapshotLastUpdated = v5->_dateSearchIndexSnapshotLastUpdated;
    v5->_dateSearchIndexSnapshotLastUpdated = v16;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex"];
    [v18 doubleValue];
    v5->_fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex = v19;

    v20 = [dictionaryCopy objectForKeyedSubscript:@"fractionOfCuratedAssetsWithEmbeddingsInVectorIndex"];
    [v20 doubleValue];
    v5->_fractionOfCuratedAssetsWithEmbeddingsInVectorIndex = v21;

    v22 = [dictionaryCopy objectForKeyedSubscript:@"fractionOfCuratedAssetsIndexedInVUClustering"];
    [v22 doubleValue];
    v5->_fractionOfCuratedAssetsIndexedInVUClustering = v23;

    v24 = [dictionaryCopy objectForKeyedSubscript:@"fractionOfCuratedAssetsWithCaptions"];
    [v24 doubleValue];
    v5->_fractionOfCuratedAssetsWithCaptions = v25;

    v26 = [dictionaryCopy objectForKeyedSubscript:@"fractionOfHighlightsEnriched"];
    [v26 doubleValue];
    v5->_fractionOfHighlightsEnriched = v27;

    v28 = [dictionaryCopy objectForKeyedSubscript:@"photosKnowledgeGraphIsReady"];
    v5->_photosKnowledgeGraphIsReady = [v28 BOOLValue];

    v29 = [dictionaryCopy objectForKeyedSubscript:@"vuIndexIsFullClustered"];
    v30 = v29;
    if (v29)
    {
      bOOLValue = [v29 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v5->_vuIndexIsFullClustered = bOOLValue;
    v32 = [dictionaryCopy objectForKeyedSubscript:@"lastFullVUIndexClusterDate"];
    lastFullVUIndexClusterDate = v5->_lastFullVUIndexClusterDate;
    v5->_lastFullVUIndexClusterDate = v32;

    v34 = [dictionaryCopy objectForKeyedSubscript:@"totalAssetCount"];
    v5->_totalAssetCount = [v34 unsignedIntegerValue];

    v35 = [dictionaryCopy objectForKeyedSubscript:@"totalCuratedAssetCount"];
    v5->_totalCuratedAssetCount = [v35 unsignedIntegerValue];

    v36 = [dictionaryCopy objectForKeyedSubscript:@"totalAssetForScenesCount"];
    v5->_totalAssetForScenesCount = [v36 unsignedIntegerValue];

    v37 = [dictionaryCopy objectForKeyedSubscript:@"totalCuratedAssetForScenesCount"];
    v5->_totalCuratedAssetForScenesCount = [v37 unsignedIntegerValue];

    v38 = [dictionaryCopy objectForKeyedSubscript:@"mediaAnalysisImageVersion"];
    v5->_mediaAnalysisImageVersion = [v38 unsignedIntegerValue];

    v39 = [dictionaryCopy objectForKeyedSubscript:@"hasConsistentMediaAnalysisImageVersionKey"];
    v5->_hasConsistentMediaAnalysisImageVersion = [v39 BOOLValue];

    v40 = [dictionaryCopy objectForKeyedSubscript:@"dateComputed"];
    dateComputed = v5->_dateComputed;
    v5->_dateComputed = v40;

    v42 = v5;
  }

  return v5;
}

- (PLFeatureProcessingSnapshot)init
{
  v6.receiver = self;
  v6.super_class = PLFeatureProcessingSnapshot;
  v2 = [(PLFeatureProcessingSnapshot *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end