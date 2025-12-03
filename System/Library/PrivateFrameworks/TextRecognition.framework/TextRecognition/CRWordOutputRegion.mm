@interface CRWordOutputRegion
+ (id)wordWithCharacters:(id)characters confidence:(unint64_t)confidence quad:(id)quad baselineAngle:(double)angle;
+ (id)wordWithText:(id)text confidence:(unint64_t)confidence quad:(id)quad baselineAngle:(double)angle;
- (BOOL)isEqual:(id)equal;
- (CRWordOutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset;
- (id)contentBaselines;
- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy;
- (id)crCodableDataRepresentation;
@end

@implementation CRWordOutputRegion

- (CRWordOutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset
{
  representationCopy = representation;
  v15.receiver = self;
  v15.super_class = CRWordOutputRegion;
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
  v9.super_class = CRWordOutputRegion;
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

+ (id)wordWithText:(id)text confidence:(unint64_t)confidence quad:(id)quad baselineAngle:(double)angle
{
  v24[4] = *MEMORY[0x1E69E9840];
  quadCopy = quad;
  textCopy = text;
  v11 = [(CROutputRegion *)[CRWordOutputRegion alloc] initWithConfidence:confidence baselineAngle:angle];
  [(CROutputRegion *)v11 setText:textCopy];

  [(CROutputRegion *)v11 setBoundingQuad:quadCopy];
  [(CROutputRegion *)v11 setShouldComputeBoundsFromChildren:0];
  [(CROutputRegion *)v11 setShouldComputeTranscriptFromChildren:0];
  [(CROutputRegion *)v11 setChildren:0];
  [(CROutputRegion *)v11 setNumberOfLines:0];
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

  return v11;
}

+ (id)wordWithCharacters:(id)characters confidence:(unint64_t)confidence quad:(id)quad baselineAngle:(double)angle
{
  v23[4] = *MEMORY[0x1E69E9840];
  quadCopy = quad;
  charactersCopy = characters;
  v11 = [(CROutputRegion *)[CRWordOutputRegion alloc] initWithConfidence:confidence baselineAngle:angle];
  [(CROutputRegion *)v11 setShouldComputeTranscriptFromChildren:1];
  if (quadCopy)
  {
    [(CROutputRegion *)v11 setShouldComputeBoundsFromChildren:0];
    [(CROutputRegion *)v11 setBoundingQuad:quadCopy];
  }

  else
  {
    [(CROutputRegion *)v11 setShouldComputeBoundsFromChildren:1];
  }

  [(CROutputRegion *)v11 setChildren:charactersCopy];

  [(CROutputRegion *)v11 setNumberOfLines:0];
  boundingQuad = [(CROutputRegion *)v11 boundingQuad];
  [boundingQuad bottomLeft];
  v23[0] = v13;
  v23[1] = v14;
  boundingQuad2 = [(CROutputRegion *)v11 boundingQuad];
  [boundingQuad2 bottomRight];
  v23[2] = v16;
  v23[3] = v17;

  v18 = [CRNormalizedPolyline alloc];
  boundingQuad3 = [(CROutputRegion *)v11 boundingQuad];
  [boundingQuad3 normalizationSize];
  v21 = [(CRNormalizedPolyline *)v18 initWithNormalizedPoints:v23 count:2 size:?];
  if (v11)
  {
    objc_setProperty_atomic(v11, v20, v21, 352);
  }

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
      v13.super_class = CRWordOutputRegion;
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
  v12.super_class = CRWordOutputRegion;
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