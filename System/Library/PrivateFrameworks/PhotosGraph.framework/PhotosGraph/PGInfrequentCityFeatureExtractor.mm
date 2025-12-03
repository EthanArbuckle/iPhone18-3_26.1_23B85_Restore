@interface PGInfrequentCityFeatureExtractor
- (PGInfrequentCityFeatureExtractor)initWithFrequentCityLabels:(id)labels version:(int64_t)version graph:(id)graph cityManager:(id)manager error:(id *)error;
- (PGInfrequentCityFeatureExtractor)initWithFrequentCityLabels:(id)labels version:(int64_t)version graph:(id)graph error:(id *)error;
- (PGInfrequentCityFeatureExtractor)initWithVersion:(int64_t)version graph:(id)graph error:(id *)error;
- (id)labelsForVersion:(int64_t)version;
@end

@implementation PGInfrequentCityFeatureExtractor

- (id)labelsForVersion:(int64_t)version
{
  if (version == 1)
  {
    return &unk_284486438;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (PGInfrequentCityFeatureExtractor)initWithVersion:(int64_t)version graph:(id)graph error:(id *)error
{
  graphCopy = graph;
  v9 = objc_alloc_init(MEMORY[0x277CBEB98]);
  mEMORY[0x277CEC588] = [MEMORY[0x277CEC588] sharedManager];
  if (graphCopy)
  {
    v11 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:graphCopy];
    addressNodes = [v11 addressNodes];
    cityNodes = [addressNodes cityNodes];

    if ([cityNodes count])
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __64__PGInfrequentCityFeatureExtractor_initWithVersion_graph_error___block_invoke;
      v22 = &unk_2788883A8;
      v23 = mEMORY[0x277CEC588];
      v15 = v14;
      v24 = v15;
      [cityNodes enumerateNodesUsingBlock:&v19];
      v16 = v15;

      v9 = v16;
    }
  }

  v17 = [(PGInfrequentCityFeatureExtractor *)self initWithFrequentCityLabels:v9 version:version graph:graphCopy cityManager:mEMORY[0x277CEC588] error:error, v19, v20, v21, v22];

  return v17;
}

void __64__PGInfrequentCityFeatureExtractor_initWithVersion_graph_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collection];
  v5 = [v4 countryNodes];
  v6 = [v5 anyNode];
  v9 = [v6 name];

  v7 = [v3 name];

  v8 = [PGCityFeatureExtractor unlocalizedCityNameFromCityName:v7 countryCode:v9 fromCityManager:*(a1 + 32)];

  [*(a1 + 40) addObject:v8];
}

- (PGInfrequentCityFeatureExtractor)initWithFrequentCityLabels:(id)labels version:(int64_t)version graph:(id)graph cityManager:(id)manager error:(id *)error
{
  v27[2] = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  managerCopy = manager;
  v12 = [(PGInfrequentCityFeatureExtractor *)self labelsForVersion:version];
  v13 = MEMORY[0x277D22C90];
  v14 = +[PGGraphMomentNode addressOfMoment];
  v27[0] = v14;
  v15 = +[PGGraphAddressNode cityOfAddress];
  v27[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v17 = [v13 chain:v16];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __95__PGInfrequentCityFeatureExtractor_initWithFrequentCityLabels_version_graph_cityManager_error___block_invoke;
  v24[3] = &unk_278888380;
  v25 = managerCopy;
  v26 = labelsCopy;
  v23.receiver = self;
  v23.super_class = PGInfrequentCityFeatureExtractor;
  v18 = labelsCopy;
  v19 = managerCopy;
  v20 = [(MARelationCollectionFeatureExtractor *)&v23 initWithName:@"City" featureNames:v12 relation:v17 labelForTargetBlock:v24];

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void *__95__PGInfrequentCityFeatureExtractor_initWithFrequentCityLabels_version_graph_cityManager_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collection];
  v5 = [v4 countryNodes];
  v6 = [v5 anyNode];
  v7 = [v6 name];

  v8 = [v3 name];

  v9 = [PGCityFeatureExtractor unlocalizedCityNameFromCityName:v8 countryCode:v7 fromCityManager:*(a1 + 32)];

  if ([*(a1 + 40) containsObject:v9])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

- (PGInfrequentCityFeatureExtractor)initWithFrequentCityLabels:(id)labels version:(int64_t)version graph:(id)graph error:(id *)error
{
  v10 = MEMORY[0x277CEC588];
  graphCopy = graph;
  labelsCopy = labels;
  sharedManager = [v10 sharedManager];
  v14 = [(PGInfrequentCityFeatureExtractor *)self initWithFrequentCityLabels:labelsCopy version:version graph:graphCopy cityManager:sharedManager error:error];

  return v14;
}

@end