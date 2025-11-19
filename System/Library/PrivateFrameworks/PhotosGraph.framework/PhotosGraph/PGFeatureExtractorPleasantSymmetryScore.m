@interface PGFeatureExtractorPleasantSymmetryScore
- (id)featureNames;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureExtractorPleasantSymmetryScore

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v5 = [a3 aestheticProperties];
  [v5 pleasantSymmetryScore];
  v7 = v6;
  v8 = MEMORY[0x277D22C40];
  v9 = [(PGFeatureExtractorPleasantSymmetryScore *)self featureLength];
  LODWORD(v10) = v7;
  v11 = [v8 vectorRepeatingFloat:v9 count:v10];

  return v11;
}

- (id)featureNames
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"PleasantSymmetryScore";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end