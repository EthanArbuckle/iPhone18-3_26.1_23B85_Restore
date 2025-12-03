@interface PGFeatureExtractorIsScreenRecording
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorIsScreenRecording

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  isScreenRecording = [entity isScreenRecording];
  v6 = MEMORY[0x277D22C40];
  featureLength = [(PGFeatureExtractorIsScreenRecording *)self featureLength];
  *&v8 = isScreenRecording;

  return [v6 vectorRepeatingFloat:featureLength count:v8];
}

- (id)featureNames
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"IsScreenRecording";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end