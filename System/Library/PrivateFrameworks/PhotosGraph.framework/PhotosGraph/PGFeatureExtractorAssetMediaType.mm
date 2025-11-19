@interface PGFeatureExtractorAssetMediaType
- (id)featureNames;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureExtractorAssetMediaType

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277D22C68];
  v6 = a3;
  v7 = [v5 zerosOfCount:{-[PGFeatureExtractorAssetMediaType featureLength](self, "featureLength")}];
  v8 = [v6 mediaType];

  if (v8 <= 3)
  {
    LODWORD(v9) = 1.0;
    [v7 setFloat:v8 atIndex:v9];
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