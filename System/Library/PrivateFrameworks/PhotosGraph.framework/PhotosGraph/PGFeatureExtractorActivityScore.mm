@interface PGFeatureExtractorActivityScore
- (id)featureNames;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureExtractorActivityScore

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v5 = [a3 mediaAnalysisProperties];
  [v5 activityScore];
  v7 = v6;
  v8 = MEMORY[0x277D22C40];
  v9 = [(PGFeatureExtractorActivityScore *)self featureLength];
  LODWORD(v10) = v7;
  v11 = [v8 vectorRepeatingFloat:v9 count:v10];

  return v11;
}

- (id)featureNames
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"ActivityScore";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end