@interface PGFeatureExtractorAssetMediaType
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorAssetMediaType

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  v5 = MEMORY[0x277D22C68];
  entityCopy = entity;
  v7 = [v5 zerosOfCount:{-[PGFeatureExtractorAssetMediaType featureLength](self, "featureLength")}];
  mediaType = [entityCopy mediaType];

  if (mediaType <= 3)
  {
    LODWORD(v9) = 1.0;
    [v7 setFloat:mediaType atIndex:v9];
  }

  return v7;
}

- (id)featureNames
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"MediaTypeUnknown";
  v5[1] = @"Image";
  v5[2] = @"Video";
  v5[3] = @"Audio";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end