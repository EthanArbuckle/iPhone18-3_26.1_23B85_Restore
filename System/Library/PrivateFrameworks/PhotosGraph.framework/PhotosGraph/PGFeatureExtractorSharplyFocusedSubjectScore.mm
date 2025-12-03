@interface PGFeatureExtractorSharplyFocusedSubjectScore
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorSharplyFocusedSubjectScore

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  aestheticProperties = [entity aestheticProperties];
  [aestheticProperties sharplyFocusedSubjectScore];
  v7 = v6;
  v8 = MEMORY[0x277D22C40];
  featureLength = [(PGFeatureExtractorSharplyFocusedSubjectScore *)self featureLength];
  LODWORD(v10) = v7;
  v11 = [v8 vectorRepeatingFloat:featureLength count:v10];

  return v11;
}

- (id)featureNames
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"SharplyFocusedSubjectScore";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end