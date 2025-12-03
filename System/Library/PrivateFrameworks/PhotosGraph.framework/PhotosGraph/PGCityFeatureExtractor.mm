@interface PGCityFeatureExtractor
+ (id)unlocalizedCityNameFromCityName:(id)name countryCode:(id)code fromCityManager:(id)manager;
- (PGCityFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error;
- (id)labelsForVersion:(int64_t)version;
@end

@implementation PGCityFeatureExtractor

- (id)labelsForVersion:(int64_t)version
{
  if (version == 1)
  {
    return &unk_284485C28;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (PGCityFeatureExtractor)initWithVersion:(int64_t)version error:(id *)error
{
  v20[2] = *MEMORY[0x277D85DE8];
  mEMORY[0x277CEC588] = [MEMORY[0x277CEC588] sharedManager];
  v7 = [(PGCityFeatureExtractor *)self labelsForVersion:version];
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
  v19 = mEMORY[0x277CEC588];
  v17.receiver = self;
  v17.super_class = PGCityFeatureExtractor;
  v13 = mEMORY[0x277CEC588];
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

+ (id)unlocalizedCityNameFromCityName:(id)name countryCode:(id)code fromCityManager:(id)manager
{
  nameCopy = name;
  codeCopy = code;
  managerCopy = manager;
  if ([nameCopy length] && objc_msgSend(codeCopy, "length"))
  {
    v10 = [managerCopy citiesMatchingName:nameCopy];
    firstObject = [v10 firstObject];

    if (firstObject && ([firstObject unlocalizedName], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "length"), v12, v13))
    {
      v14 = MEMORY[0x277CCACA8];
      unlocalizedName = [firstObject unlocalizedName];
      codeCopy = [v14 stringWithFormat:@"%@_%@", unlocalizedName, codeCopy];
    }

    else
    {
      codeCopy = &stru_2843F5C58;
    }
  }

  else
  {
    codeCopy = &stru_2843F5C58;
  }

  return codeCopy;
}

@end