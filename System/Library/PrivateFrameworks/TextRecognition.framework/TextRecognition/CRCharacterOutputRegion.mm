@interface CRCharacterOutputRegion
+ (id)characterWithText:(id)text confidence:(unint64_t)confidence quad:(id)quad baselineAngle:(double)angle;
+ (id)characterWithTextFeature:(id)feature imageSize:(CGSize)size confidenceThresholdProvider:(id)provider;
+ (id)characterWithTextFeature:(uint64_t)feature candidateIdx:(void *)idx imageSize:(uint64_t)size confidenceThresholdProvider:(void *)provider;
- (BOOL)isEqual:(id)equal;
- (CRCharacterOutputRegion)init;
- (CRCharacterOutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset;
- (id)contentBaselines;
- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy;
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

- (CRCharacterOutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset
{
  representationCopy = representation;
  v15.receiver = self;
  v15.super_class = CRCharacterOutputRegion;
  v9 = [(CROutputRegion *)&v15 initWithCRCodableDataRepresentation:representationCopy version:version offset:offset];
  if (v9)
  {
    v10 = [CRNormalizedPolyline alloc];
    v11 = [CRCodingUtilities objectDataFromEncodingData:representationCopy offset:offset];
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
  crCodableDataRepresentation = [(CROutputRegion *)&v9 crCodableDataRepresentation];
  v5 = [v3 dataWithData:crCodableDataRepresentation];

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

+ (id)characterWithTextFeature:(id)feature imageSize:(CGSize)size confidenceThresholdProvider:(id)provider
{
  height = size.height;
  width = size.width;
  featureCopy = feature;
  providerCopy = provider;
  v11 = [(CRCharacterOutputRegion *)width characterWithTextFeature:self candidateIdx:featureCopy imageSize:0 confidenceThresholdProvider:providerCopy];
  stringValueCandidates = [featureCopy stringValueCandidates];
  v13 = [stringValueCandidates count];

  if (v13 >= 2)
  {
    v14 = MEMORY[0x1E695DF70];
    stringValueCandidates2 = [featureCopy stringValueCandidates];
    v16 = [v14 arrayWithCapacity:{objc_msgSend(stringValueCandidates2, "count")}];

    stringValueCandidates3 = [featureCopy stringValueCandidates];
    v18 = [stringValueCandidates3 count];

    if (v18)
    {
      v19 = 0;
      do
      {
        v20 = [(CRCharacterOutputRegion *)width characterWithTextFeature:self candidateIdx:featureCopy imageSize:v19 confidenceThresholdProvider:providerCopy];
        [v16 addObject:v20];

        ++v19;
        stringValueCandidates4 = [featureCopy stringValueCandidates];
        v22 = [stringValueCandidates4 count];
      }

      while (v19 < v22);
    }

    v23 = [MEMORY[0x1E695DEC8] arrayWithArray:v16];
    [v11 setCandidates:v23];
  }

  [v11 setNumberOfLines:0];

  return v11;
}

+ (id)characterWithTextFeature:(uint64_t)feature candidateIdx:(void *)idx imageSize:(uint64_t)size confidenceThresholdProvider:(void *)provider
{
  providerCopy = provider;
  idxCopy = idx;
  v12 = objc_opt_self();
  selectedLocale = [idxCopy selectedLocale];
  v14 = [providerCopy thresholdsForTextRegion:idxCopy withLocale:selectedLocale];

  candidateProbs = [idxCopy candidateProbs];
  v16 = [candidateProbs objectAtIndexedSubscript:size];
  [v16 doubleValue];
  v17 = [CRImageReaderOutput confidenceLevelForConfidenceScore:v14 confidenceThresholds:?];

  v18 = [CRNormalizedQuad alloc];
  [idxCopy topLeft];
  v20 = v19;
  v22 = v21;
  [idxCopy topRight];
  v24 = v23;
  v26 = v25;
  [idxCopy bottomRight];
  v28 = v27;
  v30 = v29;
  [idxCopy bottomLeft];
  v33 = [(CRNormalizedQuad *)v18 initWithNormalizedTopLeft:v20 topRight:v22 bottomRight:v24 bottomLeft:v26 size:v28, v30, v31, v32, *&self, *&a2];
  stringValueCandidates = [idxCopy stringValueCandidates];
  v35 = [stringValueCandidates objectAtIndexedSubscript:size];
  [idxCopy baselineAngle];
  v37 = [v12 characterWithText:v35 confidence:v17 quad:v33 baselineAngle:v36];

  candidateProbs2 = [idxCopy candidateProbs];
  v39 = [candidateProbs2 objectAtIndexedSubscript:size];
  [v39 floatValue];
  [v37 setRawConfidence:?];

  candidateActivationProbs = [idxCopy candidateActivationProbs];
  v41 = [candidateActivationProbs objectAtIndexedSubscript:size];
  [v41 floatValue];
  [v37 setActivationProbability:v42];

  selectedLocale2 = [idxCopy selectedLocale];
  [v37 setRecognizedLocale:selectedLocale2];

  uuid = [idxCopy uuid];

  [v37 setUuid:uuid];
  [v37 setNumberOfLines:0];

  return v37;
}

+ (id)characterWithText:(id)text confidence:(unint64_t)confidence quad:(id)quad baselineAngle:(double)angle
{
  v24[4] = *MEMORY[0x1E69E9840];
  quadCopy = quad;
  textCopy = text;
  v11 = [(CROutputRegion *)[CRCharacterOutputRegion alloc] initWithConfidence:confidence baselineAngle:angle];
  [(CROutputRegion *)v11 setText:textCopy];

  [(CROutputRegion *)v11 setBoundingQuad:quadCopy];
  [quadCopy bottomLeft];
  v24[0] = v12;
  v24[1] = v13;
  [quadCopy bottomRight];
  v24[2] = v14;
  v24[3] = v15;
  v16 = [CRNormalizedPolyline alloc];
  [quadCopy normalizationSize];
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
  selfCopy = self;
  v7[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (objc_getProperty(self, a2, 352, 1))
    {
      v7[0] = objc_getProperty(selfCopy, v3, 352, 1);
      v4 = MEMORY[0x1E695DEC8];
      v5 = v7[0];
      selfCopy = [v4 arrayWithObjects:v7 count:1];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy
{
  v12.receiver = self;
  v12.super_class = CRCharacterOutputRegion;
  v7 = [(CROutputRegion *)&v12 copyWithZone:zone copyChildren:children copyCandidates:candidates deepCopy:copy];
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