@interface PLFeatureAvailability
+ (id)_computeAvailabilityStatusFromSnapshot:(id)snapshot;
+ (id)availabilityFromFeatureAvailability:(id)availability withGraphIsAvailable:(BOOL)available;
+ (id)availabilityFromInvalidatingSearchIndexInFeatureAvailability:(id)availability;
- (NSDictionary)dictionary;
- (PLFeatureAvailability)initWithDictionary:(id)dictionary;
- (PLFeatureAvailability)initWithProcessingSnapshot:(id)snapshot;
- (id)fractionForFeature:(id)feature;
@end

@implementation PLFeatureAvailability

- (id)fractionForFeature:(id)feature
{
  v10 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  if (([featureCopy unsignedIntegerValue] & 0xFFFFFFFFFFFFFFFELL) == 2)
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
      v9[1] = [featureCopy intValue];
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
  dictionary = [(PLFeatureProcessingSnapshot *)self->_processingSnapshot dictionary];
  v6[1] = @"availabilityByFeature";
  v7[0] = dictionary;
  v7[1] = self->_availabilityByFeature;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (PLFeatureAvailability)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(PLFeatureAvailability *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"availabilityByFeature"];
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

    v10 = [dictionaryCopy objectForKeyedSubscript:@"snapshotDictionary"];
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

- (PLFeatureAvailability)initWithProcessingSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v12.receiver = self;
  v12.super_class = PLFeatureAvailability;
  v6 = [(PLFeatureAvailability *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processingSnapshot, snapshot);
    v8 = [PLFeatureAvailability _computeAvailabilityStatusFromSnapshot:snapshotCopy];
    availabilityByFeature = v7->_availabilityByFeature;
    v7->_availabilityByFeature = v8;

    v10 = v7;
  }

  return v7;
}

+ (id)_computeAvailabilityStatusFromSnapshot:(id)snapshot
{
  v65 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
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

        unsignedIntegerValue = [*(*(&v60 + 1) + 8 * i) unsignedIntegerValue];
        v9 = snapshotCopy;
        v10 = [objc_alloc(*(v6 + 3496)) initWithFeature:unsignedIntegerValue];
        v11 = 0;
        if (unsignedIntegerValue <= 1)
        {
          if (!unsignedIntegerValue)
          {
            goto LABEL_9;
          }

          if (unsignedIntegerValue == 1)
          {
            hasConsistentMediaAnalysisImageVersion = [v9 hasConsistentMediaAnalysisImageVersion];
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
            totalCuratedAssetCount = [v9 totalCuratedAssetCount];
            v32 = v6;
            v33 = v5;
            v34 = snapshotCopy;
            minimumNumberOfCuratedAssets = [v10 minimumNumberOfCuratedAssets];
            photosKnowledgeGraphIsReady = [v9 photosKnowledgeGraphIsReady];
            vuIndexIsFullClustered = [v9 vuIndexIsFullClustered];
            v38 = hasConsistentMediaAnalysisImageVersion;
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

            v39 = totalCuratedAssetCount >= minimumNumberOfCuratedAssets;
            snapshotCopy = v34;
            v5 = v33;
            v6 = v32;
            v4 = v57;
            if (!v39)
            {
              v38 = 0;
            }

            v11 = v38 & photosKnowledgeGraphIsReady & vuIndexIsFullClustered;
          }
        }

        else
        {
          if (unsignedIntegerValue > 8)
          {
            goto LABEL_32;
          }

          if (((1 << unsignedIntegerValue) & 0x1B0) != 0)
          {
            goto LABEL_9;
          }

          if (((1 << unsignedIntegerValue) & 0xC) != 0)
          {
            [v9 fractionOfAllAssetsWithMediaAnalysisInSearchIndex];
            v13 = v12;
            [v10 fractionOfAllAssetsWithMediaAnalysisInSearchIndexThreshold];
            v11 = v13 >= v14;
            goto LABEL_33;
          }

          if (unsignedIntegerValue == 6)
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
            photosKnowledgeGraphIsReady2 = [v9 photosKnowledgeGraphIsReady];
            v53 = v45 >= v47 && v43;
            if (v49 < v51)
            {
              v53 = 0;
            }

            v11 = v53 & photosKnowledgeGraphIsReady2;
          }

          else
          {
LABEL_32:
            if (unsignedIntegerValue == 100)
            {
LABEL_9:
              v11 = 1;
            }
          }
        }

LABEL_33:

        v54 = [MEMORY[0x1E696AD98] numberWithBool:v11];
        v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue];
        [v4 setObject:v54 forKeyedSubscript:v55];
      }

      v59 = [&unk_1F0FC0030 countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v59);
  }

  return v4;
}

+ (id)availabilityFromInvalidatingSearchIndexInFeatureAvailability:(id)availability
{
  processingSnapshot = [availability processingSnapshot];
  v4 = [processingSnapshot copy];

  [v4 resetSearchIndexState];
  v5 = [[PLFeatureAvailability alloc] initWithProcessingSnapshot:v4];

  return v5;
}

+ (id)availabilityFromFeatureAvailability:(id)availability withGraphIsAvailable:(BOOL)available
{
  availableCopy = available;
  processingSnapshot = [availability processingSnapshot];
  v6 = [processingSnapshot copy];

  [v6 setPhotosKnowledgeGraphIsReady:availableCopy];
  v7 = [[PLFeatureAvailability alloc] initWithProcessingSnapshot:v6];

  return v7;
}

@end