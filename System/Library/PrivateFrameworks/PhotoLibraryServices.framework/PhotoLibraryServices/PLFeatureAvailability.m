@interface PLFeatureAvailability
+ (id)_computeAvailabilityStatusFromSnapshot:(id)a3;
+ (id)availabilityFromFeatureAvailability:(id)a3 withGraphIsAvailable:(BOOL)a4;
+ (id)availabilityFromInvalidatingSearchIndexInFeatureAvailability:(id)a3;
- (NSDictionary)dictionary;
- (PLFeatureAvailability)initWithDictionary:(id)a3;
- (PLFeatureAvailability)initWithProcessingSnapshot:(id)a3;
- (id)fractionForFeature:(id)a3;
@end

@implementation PLFeatureAvailability

- (id)fractionForFeature:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 unsignedIntegerValue] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v5 = MEMORY[0x1E696AD98];
    [(PLFeatureProcessingSnapshot *)self->_processingSnapshot fractionOfAllAssetsWithMediaAnalysisInSearchIndex];
    v6 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67109120;
      v9[1] = [v4 intValue];
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Requesting fractionForFeature:%d not implemented", v9, 8u);
    }

    v6 = 0;
  }

  return v6;
}

- (NSDictionary)dictionary
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"snapshotDictionary";
  v3 = [(PLFeatureProcessingSnapshot *)self->_processingSnapshot dictionary];
  v6[1] = @"availabilityByFeature";
  v7[0] = v3;
  v7[1] = self->_availabilityByFeature;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (PLFeatureAvailability)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(PLFeatureAvailability *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"availabilityByFeature"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F8];
    }

    availabilityByFeature = v5->_availabilityByFeature;
    v5->_availabilityByFeature = v8;

    v10 = [v4 objectForKeyedSubscript:@"snapshotDictionary"];
    if (v10)
    {
      v11 = [[PLFeatureProcessingSnapshot alloc] initWithDictionary:v10];
    }

    else
    {
      v11 = objc_alloc_init(PLFeatureProcessingSnapshot);
    }

    processingSnapshot = v5->_processingSnapshot;
    v5->_processingSnapshot = v11;

    v13 = v5;
  }

  return v5;
}

- (PLFeatureAvailability)initWithProcessingSnapshot:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PLFeatureAvailability;
  v6 = [(PLFeatureAvailability *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processingSnapshot, a3);
    v8 = [PLFeatureAvailability _computeAvailabilityStatusFromSnapshot:v5];
    availabilityByFeature = v7->_availabilityByFeature;
    v7->_availabilityByFeature = v8;

    v10 = v7;
  }

  return v7;
}

+ (id)_computeAvailabilityStatusFromSnapshot:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v59 = [&unk_1F0FC0030 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v59)
  {
    v5 = *v61;
    v6 = 0x1E755F000uLL;
    v57 = v4;
    do
    {
      for (i = 0; i != v59; ++i)
      {
        if (*v61 != v5)
        {
          objc_enumerationMutation(&unk_1F0FC0030);
        }

        v8 = [*(*(&v60 + 1) + 8 * i) unsignedIntegerValue];
        v9 = v3;
        v10 = [objc_alloc(*(v6 + 3496)) initWithFeature:v8];
        v11 = 0;
        if (v8 <= 1)
        {
          if (!v8)
          {
            goto LABEL_9;
          }

          if (v8 == 1)
          {
            v58 = [v9 hasConsistentMediaAnalysisImageVersion];
            [v9 fractionOfCuratedAssetsWithCaptions];
            v16 = v15;
            [v10 fractionOfCuratedAssetsWithCaptionsThreshold];
            v18 = v17;
            [v9 fractionOfCuratedAssetsWithEmbeddingsInVectorIndex];
            v20 = v19;
            [v10 fractionOfCuratedAssetsWithEmbeddingsInVectorIndexThreshold];
            v22 = v21;
            [v9 fractionOfCuratedAssetsIndexedInVUClustering];
            v24 = v23;
            [v10 fractionOfCuratedAssetsWithEmbeddingsInVectorIndexThreshold];
            v26 = v25;
            [v9 fractionOfCuratedAssetsWithSceneAnalysisInSearchIndex];
            v28 = v27;
            [v10 fractionOfCuratedAssetsWithSceneAnalysisInSearchIndexThreshold];
            v30 = v29;
            v31 = [v9 totalCuratedAssetCount];
            v32 = v6;
            v33 = v5;
            v34 = v3;
            v35 = [v10 minimumNumberOfCuratedAssets];
            v36 = [v9 photosKnowledgeGraphIsReady];
            v37 = [v9 vuIndexIsFullClustered];
            v38 = v58;
            if (v16 < v18)
            {
              v38 = 0;
            }

            if (v20 < v22)
            {
              v38 = 0;
            }

            if (v24 < v26)
            {
              v38 = 0;
            }

            if (v28 < v30)
            {
              v38 = 0;
            }

            v39 = v31 >= v35;
            v3 = v34;
            v5 = v33;
            v6 = v32;
            v4 = v57;
            if (!v39)
            {
              v38 = 0;
            }

            v11 = v38 & v36 & v37;
          }
        }

        else
        {
          if (v8 > 8)
          {
            goto LABEL_32;
          }

          if (((1 << v8) & 0x1B0) != 0)
          {
            goto LABEL_9;
          }

          if (((1 << v8) & 0xC) != 0)
          {
            [v9 fractionOfAllAssetsWithMediaAnalysisInSearchIndex];
            v13 = v12;
            [v10 fractionOfAllAssetsWithMediaAnalysisInSearchIndexThreshold];
            v11 = v13 >= v14;
            goto LABEL_33;
          }

          if (v8 == 6)
          {
            [v9 fractionOfCuratedAssetsWithCaptions];
            v41 = v40;
            [v10 fractionOfCuratedAssetsWithCaptionsThreshold];
            v43 = v41 >= v42;
            [v9 fractionOfAllAssetsWithMediaAnalysisInSearchIndex];
            v45 = v44;
            [v10 fractionOfAllAssetsWithMediaAnalysisInSearchIndexThreshold];
            v47 = v46;
            [v9 fractionOfHighlightsEnriched];
            v49 = v48;
            [v10 fractionOfHighlightsEnrichedThreshold];
            v51 = v50;
            v52 = [v9 photosKnowledgeGraphIsReady];
            v53 = v45 >= v47 && v43;
            if (v49 < v51)
            {
              v53 = 0;
            }

            v11 = v53 & v52;
          }

          else
          {
LABEL_32:
            if (v8 == 100)
            {
LABEL_9:
              v11 = 1;
            }
          }
        }

LABEL_33:

        v54 = [MEMORY[0x1E696AD98] numberWithBool:v11];
        v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
        [v4 setObject:v54 forKeyedSubscript:v55];
      }

      v59 = [&unk_1F0FC0030 countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v59);
  }

  return v4;
}

+ (id)availabilityFromInvalidatingSearchIndexInFeatureAvailability:(id)a3
{
  v3 = [a3 processingSnapshot];
  v4 = [v3 copy];

  [v4 resetSearchIndexState];
  v5 = [[PLFeatureAvailability alloc] initWithProcessingSnapshot:v4];

  return v5;
}

+ (id)availabilityFromFeatureAvailability:(id)a3 withGraphIsAvailable:(BOOL)a4
{
  v4 = a4;
  v5 = [a3 processingSnapshot];
  v6 = [v5 copy];

  [v6 setPhotosKnowledgeGraphIsReady:v4];
  v7 = [[PLFeatureAvailability alloc] initWithProcessingSnapshot:v6];

  return v7;
}

@end