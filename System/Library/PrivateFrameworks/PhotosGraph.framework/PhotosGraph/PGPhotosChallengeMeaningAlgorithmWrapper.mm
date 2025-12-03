@interface PGPhotosChallengeMeaningAlgorithmWrapper
- (PGPhotosChallengeMeaningAlgorithmWrapper)initWithEvaluationContext:(id)context;
- (id)debugInformationForMeaningIdentifier:(id)identifier assetUUID:(id)d;
- (unsigned)predictQuestionStateForMeaningIdentifier:(id)identifier assetUUID:(id)d params:(id)params;
@end

@implementation PGPhotosChallengeMeaningAlgorithmWrapper

- (id)debugInformationForMeaningIdentifier:(id)identifier assetUUID:(id)d
{
  v38[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v7 = MEMORY[0x277CD97A8];
  v38[0] = dCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  v9 = [v7 fetchAssetsWithUUIDs:v8 options:librarySpecificFetchOptions];
  firstObject = [v9 firstObject];

  if (firstObject)
  {
    v11 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:firstObject withType:3 options:librarySpecificFetchOptions];
    firstObject2 = [v11 firstObject];

    if (firstObject2)
    {
      v13 = MEMORY[0x277CBEB98];
      uuid = [firstObject2 uuid];
      v15 = [v13 setWithObject:uuid];
      v16 = [PGGraphMomentNodeCollection momentNodesForUUIDs:v15 inGraph:self->_graph];

      if (v16)
      {
        sceneNodes = [v16 sceneNodes];
        sceneNames = [sceneNodes sceneNames];
        allObjects = [sceneNames allObjects];

        reliableSceneNodes = [v16 reliableSceneNodes];
        sceneNames2 = [reliableSceneNodes sceneNames];
        allObjects2 = [sceneNames2 allObjects];

        highConfidenceSceneNodes = [v16 highConfidenceSceneNodes];
        sceneNames3 = [highConfidenceSceneNodes sceneNames];
        allObjects3 = [sceneNames3 allObjects];

        searchConfidenceSceneNodes = [v16 searchConfidenceSceneNodes];
        sceneNames4 = [searchConfidenceSceneNodes sceneNames];
        allObjects4 = [sceneNames4 allObjects];

        v25 = [allObjects componentsJoinedByString:{@", "}];
        v26 = [allObjects2 componentsJoinedByString:{@", "}];
        v27 = [allObjects3 componentsJoinedByString:{@", "}];
        v28 = [allObjects4 componentsJoinedByString:{@", "}];
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

- (unsigned)predictQuestionStateForMeaningIdentifier:(id)identifier assetUUID:(id)d params:(id)params
{
  v32[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dCopy = d;
  paramsCopy = params;
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v12 = MEMORY[0x277CD97A8];
  v32[0] = dCopy;
  v13 = 1;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v15 = [v12 fetchAssetsWithUUIDs:v14 options:librarySpecificFetchOptions];
  firstObject = [v15 firstObject];

  if (firstObject)
  {
    v17 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:firstObject withType:3 options:librarySpecificFetchOptions];
    firstObject2 = [v17 firstObject];

    if (firstObject2)
    {
      v19 = [(PGGraph *)self->_graph momentNodeForMoment:firstObject2];
      if (v19)
      {
        v29 = identifierCopy;
        if ([paramsCopy count])
        {
          v30 = identifierCopy;
          v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
          v21 = [PGPhotosChallengeMeaningfulEventRequiredCriteriaFactory requiredCriteriaForIdentifiers:v20 inferenceType:0 graph:self->_graph sceneTaxonomy:self->_sceneTaxonomy params:paramsCopy];
        }

        else
        {
          v31 = identifierCopy;
          v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
          v21 = [PGMeaningfulEventRequiredCriteriaFactory requiredCriteriaForIdentifiers:v20 inferenceType:0 graph:self->_graph sceneTaxonomy:self->_sceneTaxonomy];
        }

        v28 = v21;

        v22 = [PGMeaningfulEventProcessorCache alloc];
        collection = [v19 collection];
        v24 = [(PGMeaningfulEventProcessorCache *)v22 initWithMomentNodes:collection];
        v25 = [PGMeaningfulEventProcessor processRequiredCriteria:v28 forMoment:v19 meaningfulEventProcessorCache:v24 serviceManager:self->_serviceManager];

        if ([v25 count])
        {
          v13 = 2;
        }

        else
        {
          v13 = 3;
        }

        identifierCopy = v29;
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

- (PGPhotosChallengeMeaningAlgorithmWrapper)initWithEvaluationContext:(id)context
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = PGPhotosChallengeMeaningAlgorithmWrapper;
  v5 = [(PGPhotosChallengeMeaningAlgorithmWrapper *)&v15 init];
  if (v5)
  {
    photoLibrary = [contextCopy photoLibrary];
    photoLibrary = v5->_photoLibrary;
    v5->_photoLibrary = photoLibrary;

    graph = [contextCopy graph];
    graph = v5->_graph;
    v5->_graph = graph;

    sceneTaxonomy = [contextCopy sceneTaxonomy];
    sceneTaxonomy = v5->_sceneTaxonomy;
    v5->_sceneTaxonomy = sceneTaxonomy;

    serviceManager = [contextCopy serviceManager];
    serviceManager = v5->_serviceManager;
    v5->_serviceManager = serviceManager;
  }

  return v5;
}

@end