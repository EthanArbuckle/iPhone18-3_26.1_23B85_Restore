@interface PGCityFeatureExtractor
+ (id)unlocalizedCityNameFromCityName:(id)a3 countryCode:(id)a4 fromCityManager:(id)a5;
- (PGCityFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4;
- (id)labelsForVersion:(int64_t)a3;
@end

@implementation PGCityFeatureExtractor

- (id)labelsForVersion:(int64_t)a3
{
  if (a3 == 1)
  {
    return &unk_284485C28;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (PGCityFeatureExtractor)initWithVersion:(int64_t)a3 error:(id *)a4
{
  v20[2] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CEC588] sharedManager];
  v7 = [(PGCityFeatureExtractor *)self labelsForVersion:a3];
  v8 = MEMORY[0x277D22C90];
  v9 = +[PGGraphMomentNode addressOfMoment];
  v20[0] = v9;
  v10 = +[PGGraphAddressNode cityOfAddress];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v12 = [v8 chain:v11];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__PGCityFeatureExtractor_initWithVersion_error___block_invoke;
  v18[3] = &unk_278883F18;
  v19 = v6;
  v17.receiver = self;
  v17.super_class = PGCityFeatureExtractor;
  v13 = v6;
  v14 = [(MARelationCollectionFeatureExtractor *)&v17 initWithName:@"City" featureNames:v7 relation:v12 labelForTargetBlock:v18];

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

id __48__PGCityFeatureExtractor_initWithVersion_error___block_invoke(uint64_t a1, void *a2)
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

+ (id)unlocalizedCityNameFromCityName:(id)a3 countryCode:(id)a4 fromCityManager:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 length] && objc_msgSend(v8, "length"))
  {
    v10 = [v9 citiesMatchingName:v7];
    v11 = [v10 firstObject];

    if (v11 && ([v11 unlocalizedName], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "length"), v12, v13))
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [v11 unlocalizedName];
      v16 = [v14 stringWithFormat:@"%@_%@", v15, v8];
    }

    else
    {
      v16 = &stru_2843F5C58;
    }
  }

  else
  {
    v16 = &stru_2843F5C58;
  }

  return v16;
}

@end