@interface PGFeatureExtractorStandardAspectRatio
- (id)_generateErrorWithErrorCode:(int64_t)a3 andMessage:(id)a4;
- (id)featureNames;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
- (int64_t)standardAspectRatioFromFloatVector:(id)a3;
@end

@implementation PGFeatureExtractorStandardAspectRatio

- (id)_generateErrorWithErrorCode:(int64_t)a3 andMessage:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
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
    *&v8 = v7 / [v6 pixelHeight];
    v9 = [MEMORY[0x277D22C40] vectorRepeatingFloat:1 count:v8];
    v10 = [(PGFeatureExtractorStandardAspectRatio *)self standardAspectRatioFromFloatVector:v9];
    v11 = [MEMORY[0x277D22C68] zerosOfCount:{-[PGFeatureExtractorStandardAspectRatio featureLength](self, "featureLength")}];
    v13 = v11;
    if (v10 <= 3)
    {
      LODWORD(v12) = 1.0;
      [v11 setFloat:v10 atIndex:v12];
    }

    goto LABEL_6;
  }

  if (a4)
  {
    v14 = MEMORY[0x277CCACA8];
    v9 = [v6 localIdentifier];
    v15 = [v14 stringWithFormat:@"Divide by 0 is not a valid operation, in asset %@", v9];
    *a4 = [(PGFeatureExtractorStandardAspectRatio *)self _generateErrorWithErrorCode:0 andMessage:v15];

    v13 = 0;
LABEL_6:

    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (int64_t)standardAspectRatioFromFloatVector:(id)a3
{
  v4 = a3;
  v15 = 1068149419;
  v13 = 1071877689;
  v14 = 1069547520;
  v5 = [objc_alloc(MEMORY[0x277D22C40]) initWithFloats:&v15 count:1];
  [(PGFeatureExtractorStandardAspectRatio *)self precisionEpsilon];
  v6 = [v4 isApproximatelyEqualTo:v5 epsilon:?];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
    v8 = [objc_alloc(MEMORY[0x277D22C40]) initWithFloats:&v14 count:1];
    [(PGFeatureExtractorStandardAspectRatio *)self precisionEpsilon];
    v9 = [v4 isApproximatelyEqualTo:v8 epsilon:?];

    if ((v9 & 1) == 0)
    {
      v10 = [objc_alloc(MEMORY[0x277D22C40]) initWithFloats:&v13 count:1];
      [(PGFeatureExtractorStandardAspectRatio *)self precisionEpsilon];
      v11 = [v4 isApproximatelyEqualTo:v10 epsilon:?];

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