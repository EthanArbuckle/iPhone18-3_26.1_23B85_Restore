@interface PGFeatureExtractorAssetResolution
- (id)featureNames;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureExtractorAssetResolution

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 pixelWidth];
  v7 = [v5 pixelHeight];

  v8 = MEMORY[0x277D22C40];
  v9 = [(PGFeatureExtractorAssetResolution *)self featureLength];

  *&v10 = (v7 * v6);
  return [v8 vectorRepeatingFloat:v9 count:v10];
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