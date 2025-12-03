@interface PGFeatureExtractorStandardAspectRatio
- (id)_generateErrorWithErrorCode:(int64_t)code andMessage:(id)message;
- (id)featureNames;
- (id)floatVectorWithEntity:(id)entity error:(id *)error;
- (int64_t)standardAspectRatioFromFloatVector:(id)vector;
@end

@implementation PGFeatureExtractorStandardAspectRatio

- (id)_generateErrorWithErrorCode:(int64_t)code andMessage:(id)message
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
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
    *&v8 = pixelWidth / [entityCopy pixelHeight];
    localIdentifier = [MEMORY[0x277D22C40] vectorRepeatingFloat:1 count:v8];
    v10 = [(PGFeatureExtractorStandardAspectRatio *)self standardAspectRatioFromFloatVector:localIdentifier];
    v11 = [MEMORY[0x277D22C68] zerosOfCount:{-[PGFeatureExtractorStandardAspectRatio featureLength](self, "featureLength")}];
    v13 = v11;
    if (v10 <= 3)
    {
      LODWORD(v12) = 1.0;
      [v11 setFloat:v10 atIndex:v12];
    }

    goto LABEL_6;
  }

  if (error)
  {
    v14 = MEMORY[0x277CCACA8];
    localIdentifier = [entityCopy localIdentifier];
    v15 = [v14 stringWithFormat:@"Divide by 0 is not a valid operation, in asset %@", localIdentifier];
    *error = [(PGFeatureExtractorStandardAspectRatio *)self _generateErrorWithErrorCode:0 andMessage:v15];

    v13 = 0;
LABEL_6:

    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (int64_t)standardAspectRatioFromFloatVector:(id)vector
{
  vectorCopy = vector;
  v15 = 1068149419;
  v13 = 1071877689;
  v14 = 1069547520;
  v5 = [objc_alloc(MEMORY[0x277D22C40]) initWithFloats:&v15 count:1];
  [(PGFeatureExtractorStandardAspectRatio *)self precisionEpsilon];
  v6 = [vectorCopy isApproximatelyEqualTo:v5 epsilon:?];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
    v8 = [objc_alloc(MEMORY[0x277D22C40]) initWithFloats:&v14 count:1];
    [(PGFeatureExtractorStandardAspectRatio *)self precisionEpsilon];
    v9 = [vectorCopy isApproximatelyEqualTo:v8 epsilon:?];

    if ((v9 & 1) == 0)
    {
      v10 = [objc_alloc(MEMORY[0x277D22C40]) initWithFloats:&v13 count:1];
      [(PGFeatureExtractorStandardAspectRatio *)self precisionEpsilon];
      v11 = [vectorCopy isApproximatelyEqualTo:v10 epsilon:?];

      if (v11)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }
    }
  }

  return v7;
}

- (id)featureNames
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"StandardAspectRatioFourByThree";
  v5[1] = @"StandardAspectRatioThreeByTwo";
  v5[2] = @"StandardAspectRatioSixteenByNine";
  v5[3] = @"StandardAspectRatioOthers";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end