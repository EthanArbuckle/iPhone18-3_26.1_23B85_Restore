@interface PGInfrequentCityFeatureExtractor
- (PGInfrequentCityFeatureExtractor)initWithFrequentCityLabels:(id)a3 version:(int64_t)a4 graph:(id)a5 cityManager:(id)a6 error:(id *)a7;
- (PGInfrequentCityFeatureExtractor)initWithFrequentCityLabels:(id)a3 version:(int64_t)a4 graph:(id)a5 error:(id *)a6;
- (PGInfrequentCityFeatureExtractor)initWithVersion:(int64_t)a3 graph:(id)a4 error:(id *)a5;
- (id)labelsForVersion:(int64_t)a3;
@end

@implementation PGInfrequentCityFeatureExtractor

- (id)labelsForVersion:(int64_t)a3
{
  if (a3 == 1)
  {
    return &unk_284486438;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (PGInfrequentCityFeatureExtractor)initWithVersion:(int64_t)a3 graph:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CBEB98]);
  v10 = [MEMORY[0x277CEC588] sharedManager];
  if (v8)
  {
    v11 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:v8];
    v12 = [v11 addressNodes];
    v13 = [v12 cityNodes];

    if ([v13 count])
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __64__PGInfrequentCityFeatureExtractor_initWithVersion_graph_error___block_invoke;
      v22 = &unk_2788883A8;
      v23 = v10;
      v15 = v14;
      v24 = v15;
      [v13 enumerateNodesUsingBlock:&v19];
      v16 = v15;

      v9 = v16;
    }
  }

  v17 = [(PGInfrequentCityFeatureExtractor *)self initWithFrequentCityLabels:v9 version:a3 graph:v8 cityManager:v10 error:a5, v19, v20, v21, v22];

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

- (PGInfrequentCityFeatureExtractor)initWithFrequentCityLabels:(id)a3 version:(int64_t)a4 graph:(id)a5 cityManager:(id)a6 error:(id *)a7
{
  v27[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = [(PGInfrequentCityFeatureExtractor *)self labelsForVersion:a4];
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
  v25 = v11;
  v26 = v10;
  v23.receiver = self;
  v23.super_class = PGInfrequentCityFeatureExtractor;
  v18 = v10;
  v19 = v11;
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

- (PGInfrequentCityFeatureExtractor)initWithFrequentCityLabels:(id)a3 version:(int64_t)a4 graph:(id)a5 error:(id *)a6
{
  v10 = MEMORY[0x277CEC588];
  v11 = a5;
  v12 = a3;
  v13 = [v10 sharedManager];
  v14 = [(PGInfrequentCityFeatureExtractor *)self initWithFrequentCityLabels:v12 version:a4 graph:v11 cityManager:v13 error:a6];

  return v14;
}

@end