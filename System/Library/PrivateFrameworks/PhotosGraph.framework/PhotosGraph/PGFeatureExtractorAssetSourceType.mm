@interface PGFeatureExtractorAssetSourceType
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorAssetSourceType

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v5 = MEMORY[0x277D22C68];
  entityCopy = entity;
  v7 = [v5 zerosOfCount:{-[PGFeatureExtractorAssetSourceType featureLength](self, "featureLength")}];
  sourceType = [entityCopy sourceType];

  if (!sourceType)
  {
    v10 = 0;
LABEL_10:
    LODWORD(v9) = 1.0;
    [v7 setFloat:v10 atIndex:v9];
    goto LABEL_11;
  }

  if ((sourceType & 1) == 0)
  {
    if ((sourceType & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    LODWORD(v9) = 1.0;
    [v7 setFloat:2 atIndex:v9];
    if ((sourceType & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  LODWORD(v9) = 1.0;
  [v7 setFloat:1 atIndex:v9];
  if ((sourceType & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((sourceType & 4) != 0)
  {
LABEL_9:
    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:

  return v7;
}

- (id)featureNames
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"SourceTypeNone";
  v5[1] = @"UserLibrary";
  v5[2] = @"CloudShared";
  v5[3] = @"iTunesSynced";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end