@interface PGFeatureExtractorAssetBurstSelectionType
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorAssetBurstSelectionType

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v5 = MEMORY[0x277D22C68];
  entityCopy = entity;
  v7 = [v5 zerosOfCount:{-[PGFeatureExtractorAssetBurstSelectionType featureLength](self, "featureLength")}];
  burstSelectionTypes = [entityCopy burstSelectionTypes];

  if (!burstSelectionTypes)
  {
    v10 = 0;
    goto LABEL_7;
  }

  if (burstSelectionTypes)
  {
    LODWORD(v9) = 1.0;
    [v7 setFloat:1 atIndex:v9];
  }

  if ((burstSelectionTypes & 2) != 0)
  {
    v10 = 2;
LABEL_7:
    LODWORD(v9) = 1.0;
    [v7 setFloat:v10 atIndex:v9];
  }

  return v7;
}

- (id)featureNames
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"BurstSelectionNone";
  v5[1] = @"AutoPick";
  v5[2] = @"UserPick";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end