@interface PGFeatureExtractorViewCount
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorViewCount

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  assetUserActivityProperties = [entity assetUserActivityProperties];
  viewCount = [assetUserActivityProperties viewCount];

  v7 = MEMORY[0x277D22C40];
  featureLength = [(PGFeatureExtractorViewCount *)self featureLength];
  *&v9 = viewCount;

  return [v7 vectorRepeatingFloat:featureLength count:v9];
}

- (id)featureNames
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"ViewCount";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end