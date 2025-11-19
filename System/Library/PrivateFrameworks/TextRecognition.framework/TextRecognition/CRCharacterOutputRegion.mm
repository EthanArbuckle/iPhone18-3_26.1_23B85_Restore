@interface CRCharacterOutputRegion
+ (id)characterWithText:(id)a3 confidence:(unint64_t)a4 quad:(id)a5 baselineAngle:(double)a6;
+ (id)characterWithTextFeature:(id)a3 imageSize:(CGSize)a4 confidenceThresholdProvider:(id)a5;
+ (id)characterWithTextFeature:(uint64_t)a3 candidateIdx:(void *)a4 imageSize:(uint64_t)a5 confidenceThresholdProvider:(void *)a6;
- (BOOL)isEqual:(id)a3;
- (CRCharacterOutputRegion)init;
- (CRCharacterOutputRegion)initWithCRCodableDataRepresentation:(id)a3 version:(int64_t)a4 offset:(unint64_t *)a5;
- (id)contentBaselines;
- (id)copyWithZone:(_NSZone *)a3 copyChildren:(BOOL)a4 copyCandidates:(BOOL)a5 deepCopy:(BOOL)a6;
- (id)crCodableDataRepresentation;
@end

@implementation CRCharacterOutputRegion

- (CRCharacterOutputRegion)init
{
  v5.receiver = self;
  v5.super_class = CRCharacterOutputRegion;
  v2 = [(CROutputRegion *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CROutputRegion *)v2 setShouldComputeBoundsFromChildren:0];
    [(CROutputRegion *)v3 setShouldComputeTranscriptFromChildren:0];
    [(CROutputRegion *)v3 setNumberOfLines:0];
  }

  return v3;
}

- (CRCharacterOutputRegion)initWithCRCodableDataRepresentation:(id)a3 version:(int64_t)a4 offset:(unint64_t *)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = CRCharacterOutputRegion;
  v9 = [(CROutputRegion *)&v15 initWithCRCodableDataRepresentation:v8 version:a4 offset:a5];
  if (v9)
  {
    v10 = [CRNormalizedPolyline alloc];
    v11 = [CRCodingUtilities objectDataFromEncodingData:v8 offset:a5];
    v12 = [(CRNormalizedPolyline *)v10 initWithCRCodableDataRepresentation:v11];
    baseline = v9->_baseline;
    v9->_baseline = v12;
  }

  return v9;
}

- (id)crCodableDataRepresentation
{
  v3 = MEMORY[0x1E695DF88];
  v9.receiver = self;
  v9.super_class = CRCharacterOutputRegion;
  v4 = [(CROutputRegion *)&v9 crCodableDataRepresentation];
  v5 = [v3 dataWithData:v4];

  if (self)
  {
    Property = objc_getProperty(self, v6, 352, 1);
  }

  else
  {
    Property = 0;
  }

  [CRCodingUtilities appendCodable:Property toData:v5];

  return v5;
}

+ (id)characterWithTextFeature:(id)a3 imageSize:(CGSize)a4 confidenceThresholdProvider:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  v11 = [(CRCharacterOutputRegion *)width characterWithTextFeature:a1 candidateIdx:v9 imageSize:0 confidenceThresholdProvider:v10];
  v12 = [v9 stringValueCandidates];
  v13 = [v12 count];

  if (v13 >= 2)
  {
    v14 = MEMORY[0x1E695DF70];
    v15 = [v9 stringValueCandidates];
    v16 = [v14 arrayWithCapacity:{objc_msgSend(v15, "count")}];

    v17 = [v9 stringValueCandidates];
    v18 = [v17 count];

    if (v18)
    {
      v19 = 0;
      do
      {
        v20 = [(CRCharacterOutputRegion *)width characterWithTextFeature:a1 candidateIdx:v9 imageSize:v19 confidenceThresholdProvider:v10];
        [v16 addObject:v20];

        ++v19;
        v21 = [v9 stringValueCandidates];
        v22 = [v21 count];
      }

      while (v19 < v22);
    }

    v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
    [v11 setCandidates:v23];
  }

  [v11 setNumberOfLines:0];

  return v11;
}

+ (id)characterWithTextFeature:(uint64_t)a3 candidateIdx:(void *)a4 imageSize:(uint64_t)a5 confidenceThresholdProvider:(void *)a6
{
  v10 = a6;
  v11 = a4;
  v12 = objc_opt_self();
  v13 = [v11 selectedLocale];
  v14 = [v10 thresholdsForTextRegion:v11 withLocale:v13];

  v15 = [v11 candidateProbs];
  v16 = [v15 objectAtIndexedSubscript:a5];
  [v16 doubleValue];
  v17 = [CRImageReaderOutput confidenceLevelForConfidenceScore:v14 confidenceThresholds:?];

  v18 = [CRNormalizedQuad alloc];
  [v11 topLeft];
  v20 = v19;
  v22 = v21;
  [v11 topRight];
  v24 = v23;
  v26 = v25;
  [v11 bottomRight];
  v28 = v27;
  v30 = v29;
  [v11 bottomLeft];
  v33 = [(CRNormalizedQuad *)v18 initWithNormalizedTopLeft:v20 topRight:v22 bottomRight:v24 bottomLeft:v26 size:v28, v30, v31, v32, *&a1, *&a2];
  v34 = [v11 stringValueCandidates];
  v35 = [v34 objectAtIndexedSubscript:a5];
  [v11 baselineAngle];
  v37 = [v12 characterWithText:v35 confidence:v17 quad:v33 baselineAngle:v36];

  v38 = [v11 candidateProbs];
  v39 = [v38 objectAtIndexedSubscript:a5];
  [v39 floatValue];
  [v37 setRawConfidence:?];

  v40 = [v11 candidateActivationProbs];
  v41 = [v40 objectAtIndexedSubscript:a5];
  [v41 floatValue];
  [v37 setActivationProbability:v42];

  v43 = [v11 selectedLocale];
  [v37 setRecognizedLocale:v43];

  v44 = [v11 uuid];

  [v37 setUuid:v44];
  [v37 setNumberOfLines:0];

  return v37;
}

+ (id)characterWithText:(id)a3 confidence:(unint64_t)a4 quad:(id)a5 baselineAngle:(double)a6
{
  v24[4] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a3;
  v11 = [(CROutputRegion *)[CRCharacterOutputRegion alloc] initWithConfidence:a4 baselineAngle:a6];
  [(CROutputRegion *)v11 setText:v10];

  [(CROutputRegion *)v11 setBoundingQuad:v9];
  [v9 bottomLeft];
  v24[0] = v12;
  v24[1] = v13;
  [v9 bottomRight];
  v24[2] = v14;
  v24[3] = v15;
  v16 = [CRNormalizedPolyline alloc];
  [v9 normalizationSize];
  v18 = v17;
  v20 = v19;

  v22 = [(CRNormalizedPolyline *)v16 initWithNormalizedPoints:v24 count:2 size:v18, v20];
  if (v11)
  {
    objc_setProperty_atomic(v11, v21, v22, 352);
  }

  [(CROutputRegion *)v11 setNumberOfLines:0];

  return v11;
}

- (id)contentBaselines
{
  v2 = self;
  v7[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (objc_getProperty(self, a2, 352, 1))
    {
      v7[0] = objc_getProperty(v2, v3, 352, 1);
      v4 = MEMORY[0x1E695DEC8];
      v5 = v7[0];
      v2 = [v4 arrayWithObjects:v7 count:1];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v13.receiver = self;
      v13.super_class = CRCharacterOutputRegion;
      if ([(CROutputRegion *)&v13 isEqual:v5])
      {
        if (self)
        {
          Property = objc_getProperty(self, v6, 352, 1);
        }

        else
        {
          Property = 0;
        }

        v9 = Property;
        if (v5)
        {
          v10 = objc_getProperty(v5, v8, 352, 1);
        }

        else
        {
          v10 = 0;
        }

        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3 copyChildren:(BOOL)a4 copyCandidates:(BOOL)a5 deepCopy:(BOOL)a6
{
  v12.receiver = self;
  v12.super_class = CRCharacterOutputRegion;
  v7 = [(CROutputRegion *)&v12 copyWithZone:a3 copyChildren:a4 copyCandidates:a5 deepCopy:a6];
  v9 = v7;
  if (!self)
  {
    Property = 0;
    if (!v7)
    {
      return v9;
    }

    goto LABEL_3;
  }

  Property = objc_getProperty(self, v8, 352, 1);
  if (v9)
  {
LABEL_3:
    objc_setProperty_atomic(v9, v8, Property, 352);
  }

  return v9;
}

@end