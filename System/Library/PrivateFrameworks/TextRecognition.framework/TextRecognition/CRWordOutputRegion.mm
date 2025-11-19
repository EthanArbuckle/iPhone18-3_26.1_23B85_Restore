@interface CRWordOutputRegion
+ (id)wordWithCharacters:(id)a3 confidence:(unint64_t)a4 quad:(id)a5 baselineAngle:(double)a6;
+ (id)wordWithText:(id)a3 confidence:(unint64_t)a4 quad:(id)a5 baselineAngle:(double)a6;
- (BOOL)isEqual:(id)a3;
- (CRWordOutputRegion)initWithCRCodableDataRepresentation:(id)a3 version:(int64_t)a4 offset:(unint64_t *)a5;
- (id)contentBaselines;
- (id)copyWithZone:(_NSZone *)a3 copyChildren:(BOOL)a4 copyCandidates:(BOOL)a5 deepCopy:(BOOL)a6;
- (id)crCodableDataRepresentation;
@end

@implementation CRWordOutputRegion

- (CRWordOutputRegion)initWithCRCodableDataRepresentation:(id)a3 version:(int64_t)a4 offset:(unint64_t *)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = CRWordOutputRegion;
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
  v9.super_class = CRWordOutputRegion;
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

+ (id)wordWithText:(id)a3 confidence:(unint64_t)a4 quad:(id)a5 baselineAngle:(double)a6
{
  v24[4] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a3;
  v11 = [(CROutputRegion *)[CRWordOutputRegion alloc] initWithConfidence:a4 baselineAngle:a6];
  [(CROutputRegion *)v11 setText:v10];

  [(CROutputRegion *)v11 setBoundingQuad:v9];
  [(CROutputRegion *)v11 setShouldComputeBoundsFromChildren:0];
  [(CROutputRegion *)v11 setShouldComputeTranscriptFromChildren:0];
  [(CROutputRegion *)v11 setChildren:0];
  [(CROutputRegion *)v11 setNumberOfLines:0];
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

  return v11;
}

+ (id)wordWithCharacters:(id)a3 confidence:(unint64_t)a4 quad:(id)a5 baselineAngle:(double)a6
{
  v23[4] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a3;
  v11 = [(CROutputRegion *)[CRWordOutputRegion alloc] initWithConfidence:a4 baselineAngle:a6];
  [(CROutputRegion *)v11 setShouldComputeTranscriptFromChildren:1];
  if (v9)
  {
    [(CROutputRegion *)v11 setShouldComputeBoundsFromChildren:0];
    [(CROutputRegion *)v11 setBoundingQuad:v9];
  }

  else
  {
    [(CROutputRegion *)v11 setShouldComputeBoundsFromChildren:1];
  }

  [(CROutputRegion *)v11 setChildren:v10];

  [(CROutputRegion *)v11 setNumberOfLines:0];
  v12 = [(CROutputRegion *)v11 boundingQuad];
  [v12 bottomLeft];
  v23[0] = v13;
  v23[1] = v14;
  v15 = [(CROutputRegion *)v11 boundingQuad];
  [v15 bottomRight];
  v23[2] = v16;
  v23[3] = v17;

  v18 = [CRNormalizedPolyline alloc];
  v19 = [(CROutputRegion *)v11 boundingQuad];
  [v19 normalizationSize];
  v21 = [(CRNormalizedPolyline *)v18 initWithNormalizedPoints:v23 count:2 size:?];
  if (v11)
  {
    objc_setProperty_atomic(v11, v20, v21, 352);
  }

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

- (id)copyWithZone:(_NSZone *)a3 copyChildren:(BOOL)a4 copyCandidates:(BOOL)a5 deepCopy:(BOOL)a6
{
  v12.receiver = self;
  v12.super_class = CRWordOutputRegion;
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