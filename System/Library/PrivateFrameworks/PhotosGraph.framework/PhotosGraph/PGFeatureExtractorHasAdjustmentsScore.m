@interface PGFeatureExtractorHasAdjustmentsScore
- (id)featureNames;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureExtractorHasAdjustmentsScore

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v5 = [a3 hasAdjustments];
  v6 = MEMORY[0x277D22C40];
  v7 = [(PGFeatureExtractorHasAdjustmentsScore *)self featureLength];
  *&v8 = v5;

  return [v6 vectorRepeatingFloat:v7 count:v8];
}

- (id)featureNames
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"HasAdjustments";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end