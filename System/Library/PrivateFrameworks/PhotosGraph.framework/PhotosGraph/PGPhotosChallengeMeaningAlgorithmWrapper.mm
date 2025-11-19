@interface PGPhotosChallengeMeaningAlgorithmWrapper
- (PGPhotosChallengeMeaningAlgorithmWrapper)initWithEvaluationContext:(id)a3;
- (id)debugInformationForMeaningIdentifier:(id)a3 assetUUID:(id)a4;
- (unsigned)predictQuestionStateForMeaningIdentifier:(id)a3 assetUUID:(id)a4 params:(id)a5;
@end

@implementation PGPhotosChallengeMeaningAlgorithmWrapper

- (id)debugInformationForMeaningIdentifier:(id)a3 assetUUID:(id)a4
{
  v38[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v7 = MEMORY[0x277CD97A8];
  v38[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  v9 = [v7 fetchAssetsWithUUIDs:v8 options:v6];
  v10 = [v9 firstObject];

  if (v10)
  {
    v11 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:v10 withType:3 options:v6];
    v12 = [v11 firstObject];

    if (v12)
    {
      v13 = MEMORY[0x277CBEB98];
      v14 = [v12 uuid];
      v15 = [v13 setWithObject:v14];
      v16 = [PGGraphMomentNodeCollection momentNodesForUUIDs:v15 inGraph:self->_graph];

      if (v16)
      {
        v17 = [v16 sceneNodes];
        v18 = [v17 sceneNames];
        v35 = [v18 allObjects];

        v19 = [v16 reliableSceneNodes];
        v20 = [v19 sceneNames];
        v34 = [v20 allObjects];

        v21 = [v16 highConfidenceSceneNodes];
        v22 = [v21 sceneNames];
        v33 = [v22 allObjects];

        v23 = [v16 searchConfidenceSceneNodes];
        v24 = [v23 sceneNames];
        v32 = [v24 allObjects];

        v25 = [v35 componentsJoinedByString:{@", "}];
        v26 = [v34 componentsJoinedByString:{@", "}];
        v27 = [v33 componentsJoinedByString:{@", "}];
        v28 = [v32 componentsJoinedByString:{@", "}];
        v36[0] = @"sceneNames";
        v36[1] = @"reliableSceneNames";
        v37[0] = v25;
        v37[1] = v26;
        v36[2] = @"highConfidenceSceneNames";
        v36[3] = @"searchConfidenceSceneNames";
        v37[2] = v27;
        v37[3] = v28;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];
      }

      else
      {
        v29 = MEMORY[0x277CBEC10];
      }
    }

    else
    {
      v29 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v29 = MEMORY[0x277CBEC10];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (unsigned)predictQuestionStateForMeaningIdentifier:(id)a3 assetUUID:(id)a4 params:(id)a5
{
  v32[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v12 = MEMORY[0x277CD97A8];
  v32[0] = v9;
  v13 = 1;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v15 = [v12 fetchAssetsWithUUIDs:v14 options:v11];
  v16 = [v15 firstObject];

  if (v16)
  {
    v17 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:v16 withType:3 options:v11];
    v18 = [v17 firstObject];

    if (v18)
    {
      v19 = [(PGGraph *)self->_graph momentNodeForMoment:v18];
      if (v19)
      {
        v29 = v8;
        if ([v10 count])
        {
          v30 = v8;
          v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
          v21 = [PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory requiredCriteriaForIdentifiers:v20 inferenceType:0 graph:self->_graph sceneTaxonomy:self->_sceneTaxonomy params:v10];
        }

        else
        {
          v31 = v8;
          v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
          v21 = [PGMeaningfulEventRequiredCriteriaFactory requiredCriteriaForIdentifiers:v20 inferenceType:0 graph:self->_graph sceneTaxonomy:self->_sceneTaxonomy];
        }

        v28 = v21;

        v22 = [PGMeaningfulEventProcessorCache alloc];
        v23 = [v19 collection];
        v24 = [(PGMeaningfulEventProcessorCache *)v22 initWithMomentNodes:v23];
        v25 = [PGMeaningfulEventProcessor processRequiredCriteria:v28 forMoment:v19 meaningfulEventProcessorCache:v24 serviceManager:self->_serviceManager];

        if ([v25 count])
        {
          v13 = 2;
        }

        else
        {
          v13 = 3;
        }

        v8 = v29;
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = 1;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v13;
}

- (PGPhotosChallengeMeaningAlgorithmWrapper)initWithEvaluationContext:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PGPhotosChallengeMeaningAlgorithmWrapper;
  v5 = [(PGPhotosChallengeMeaningAlgorithmWrapper *)&v15 init];
  if (v5)
  {
    v6 = [v4 photoLibrary];
    photoLibrary = v5->_photoLibrary;
    v5->_photoLibrary = v6;

    v8 = [v4 graph];
    graph = v5->_graph;
    v5->_graph = v8;

    v10 = [v4 sceneTaxonomy];
    sceneTaxonomy = v5->_sceneTaxonomy;
    v5->_sceneTaxonomy = v10;

    v12 = [v4 serviceManager];
    serviceManager = v5->_serviceManager;
    v5->_serviceManager = v12;
  }

  return v5;
}

@end