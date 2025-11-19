@interface PGCityMemoryNodeFeatureExtractor
- (PGCityMemoryNodeFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4;
- (id)labelsForVersion:(int64_t)a3;
@end

@implementation PGCityMemoryNodeFeatureExtractor

- (id)labelsForVersion:(int64_t)a3
{
  if (a3 == 1)
  {
    return &unk_284485C40;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (PGCityMemoryNodeFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CEC588] sharedManager];
  v7 = [(PGCityMemoryNodeFeatureExtractor *)self labelsForVersion:a3];
  v8 = MEMORY[0x277D22C90];
  v9 = +[PGGraphLocationCityNode filter];
  v10 = [v9 relation];
  v20[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v12 = [v8 chain:v11];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__PGCityMemoryNodeFeatureExtractor_initWithVersion_error___block_invoke;
  v18[3] = &unk_278883F18;
  v19 = v6;
  v17.receiver = self;
  v17.super_class = PGCityMemoryNodeFeatureExtractor;
  v13 = v6;
  v14 = [(PGGraphMemoryNodeFeatureExtractor *)&v17 initWithName:@"City" featureNames:v7 relation:v12 labelForTargetBlock:v18];

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

id __58__PGCityMemoryNodeFeatureExtractor_initWithVersion_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collection];
  v5 = [v4 countryNodes];
  v6 = [v5 anyNode];
  v7 = [v6 name];

  v8 = [v3 name];

  v9 = [PGCityFeatureExtractor unlocalizedCityNameFromCityName:v8 countryCode:v7 fromCityManager:*(a1 + 32)];

  return v9;
}

@end