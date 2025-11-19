@interface PGFeatureExtractorFaceCountScore
- (id)featureNames;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureExtractorFaceCountScore

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v5 = [a3 mediaAnalysisProperties];
  v6 = [v5 faceCount];
  v7 = MEMORY[0x277D22C40];
  v8 = [(PGFeatureExtractorFaceCountScore *)self featureLength];
  *&v9 = v6;
  v10 = [v7 vectorRepeatingFloat:v8 count:v9];

  return v10;
}

- (id)featureNames
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"FaceCountScore";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end