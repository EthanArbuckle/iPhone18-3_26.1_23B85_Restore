@interface PGFeatureExtractorAssetResolution
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorAssetResolution

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  pixelWidth = [entityCopy pixelWidth];
  pixelHeight = [entityCopy pixelHeight];

  v8 = MEMORY[0x277D22C40];
  featureLength = [(PGFeatureExtractorAssetResolution *)self featureLength];

  *&v10 = (pixelHeight * pixelWidth);
  return [v8 vectorRepeatingFloat:featureLength count:v10];
}

- (id)featureNames
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"AssetResolution";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end