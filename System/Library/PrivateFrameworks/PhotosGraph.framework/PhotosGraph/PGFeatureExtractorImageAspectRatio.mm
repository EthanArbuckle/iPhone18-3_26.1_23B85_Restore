@interface PGFeatureExtractorImageAspectRatio
- (id)_generateErrorWithErrorCode:(int64_t)code andMessage:(id)message;
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
@end

@implementation PGFeatureExtractorImageAspectRatio

- (id)_generateErrorWithErrorCode:(int64_t)code andMessage:(id)message
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = @"message";
  v13[0] = message;
  v6 = MEMORY[0x277CBEAC0];
  messageCopy = message;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureExtractorPHAssetAttributes" code:code userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)floatVectorWithEntity:(id)entity error:(id *)error
{
  entityCopy = entity;
  if ([entityCopy pixelHeight])
  {
    pixelWidth = [entityCopy pixelWidth];
    v8 = (pixelWidth / [entityCopy pixelHeight]);
    v9 = MEMORY[0x277D22C40];
    featureLength = [(PGFeatureExtractorImageAspectRatio *)self featureLength];
    *&v11 = v8;
    v12 = [v9 vectorRepeatingFloat:featureLength count:v11];
  }

  else
  {
    if (error)
    {
      v13 = MEMORY[0x277CCACA8];
      localIdentifier = [entityCopy localIdentifier];
      v15 = [v13 stringWithFormat:@"Divide by 0 is not a valid operation, in asset %@", localIdentifier];
      *error = [(PGFeatureExtractorImageAspectRatio *)self _generateErrorWithErrorCode:0 andMessage:v15];
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