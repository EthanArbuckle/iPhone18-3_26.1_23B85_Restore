@interface PGFeatureExtractorImageAspectRatio
- (id)_generateErrorWithErrorCode:(int64_t)a3 andMessage:(id)a4;
- (id)featureNames;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureExtractorImageAspectRatio

- (id)_generateErrorWithErrorCode:(int64_t)a3 andMessage:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = @"message";
  v13[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureExtractorPHAssetAttributes" code:a3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 pixelHeight])
  {
    v7 = [v6 pixelWidth];
    v8 = (v7 / [v6 pixelHeight]);
    v9 = MEMORY[0x277D22C40];
    v10 = [(PGFeatureExtractorImageAspectRatio *)self featureLength];
    *&v11 = v8;
    v12 = [v9 vectorRepeatingFloat:v10 count:v11];
  }

  else
  {
    if (a4)
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = [v6 localIdentifier];
      v15 = [v13 stringWithFormat:@"Divide by 0 is not a valid operation, in asset %@", v14];
      *a4 = [(PGFeatureExtractorImageAspectRatio *)self _generateErrorWithErrorCode:0 andMessage:v15];
    }

    v12 = 0;
  }

  return v12;
}

- (id)featureNames
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"ImageAspectRatio";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end