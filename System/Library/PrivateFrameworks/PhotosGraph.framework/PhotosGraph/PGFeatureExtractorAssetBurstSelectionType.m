@interface PGFeatureExtractorAssetBurstSelectionType
- (id)featureNames;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureExtractorAssetBurstSelectionType

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277D22C68];
  v6 = a3;
  v7 = [v5 zerosOfCount:{-[PGFeatureExtractorAssetBurstSelectionType featureLength](self, "featureLength")}];
  v8 = [v6 burstSelectionTypes];

  if (!v8)
  {
    v10 = 0;
    goto LABEL_7;
  }

  if (v8)
  {
    LODWORD(v9) = 1.0;
    [v7 setFloat:1 atIndex:v9];
  }

  if ((v8 & 2) != 0)
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