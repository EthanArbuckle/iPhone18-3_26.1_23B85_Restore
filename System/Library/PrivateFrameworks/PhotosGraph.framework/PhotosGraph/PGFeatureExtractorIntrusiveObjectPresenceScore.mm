@interface PGFeatureExtractorIntrusiveObjectPresenceScore
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorIntrusiveObjectPresenceScore

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  aestheticProperties = [entity aestheticProperties];
  [aestheticProperties intrusiveObjectPresenceScore];
  v7 = v6;
  v8 = MEMORY[0x277D22C40];
  featureLength = [(PGFeatureExtractorIntrusiveObjectPresenceScore *)self featureLength];
  LODWORD(v10) = v7;
  v11 = [v8 vectorRepeatingFloat:featureLength count:v10];

  return v11;
}

- (id)featureNames
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"IntrusiveObjectPresenceScore";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end