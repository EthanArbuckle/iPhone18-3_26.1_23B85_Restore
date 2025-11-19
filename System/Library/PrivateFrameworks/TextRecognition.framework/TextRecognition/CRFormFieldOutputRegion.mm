@interface CRFormFieldOutputRegion
- (BOOL)isEqual:(id)a3;
- (CRFormFieldOutputRegion)initWithCRCodableDataRepresentation:(id)a3 version:(int64_t)a4 offset:(unint64_t *)a5;
- (CRFormFieldOutputRegion)initWithQuad:(id)a3 labelRegion:(id)a4 subFields:(id)a5 source:(unint64_t)a6;
- (id)copyWithZone:(_NSZone *)a3 copyChildren:(BOOL)a4 copyCandidates:(BOOL)a5 deepCopy:(BOOL)a6;
- (id)crCodableDataRepresentation;
@end

@implementation CRFormFieldOutputRegion

- (CRFormFieldOutputRegion)initWithQuad:(id)a3 labelRegion:(id)a4 subFields:(id)a5 source:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v19.receiver = self;
  v19.super_class = CRFormFieldOutputRegion;
  v13 = [(CROutputRegion *)&v19 initWithConfidence:2 baselineAngle:0.0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_labelRegion, a4);
    v14->_fieldSource = a6;
    [(CROutputRegion *)v14 setBoundingQuad:v10];
    v15 = [v12 copy];
    [(CROutputRegion *)v14 setFormFieldRegions:v15];

    v14->_hasBoundedWidth = 0;
    v14->_hasBoundedHeight = 0;
    v16 = objc_opt_new();
    debugInfo = v14->_debugInfo;
    v14->_debugInfo = v16;
  }

  return v14;
}

- (CRFormFieldOutputRegion)initWithCRCodableDataRepresentation:(id)a3 version:(int64_t)a4 offset:(unint64_t *)a5
{
  v8 = a3;
  v16.receiver = self;
  v16.super_class = CRFormFieldOutputRegion;
  v9 = [(CROutputRegion *)&v16 initWithCRCodableDataRepresentation:v8 version:a4 offset:a5];
  if (v9)
  {
    v10 = [CRCodingUtilities objectDataFromEncodingData:v8 offset:a5];
    v11 = [CROutputRegion outputRegionWithCRCodableDataRepresentation:v10];
    labelRegion = v9->_labelRegion;
    v9->_labelRegion = v11;

    v9->_fieldSource = [CRCodingUtilities unsignedIntegerFromEncodingData:v8 offset:a5];
    v9->_indexInGlobalOrder = [CRCodingUtilities unsignedIntegerFromEncodingData:v8 offset:a5];
    v13 = objc_opt_new();
    debugInfo = v9->_debugInfo;
    v9->_debugInfo = v13;
  }

  return v9;
}

- (id)crCodableDataRepresentation
{
  v3 = MEMORY[0x1E695DF88];
  v7.receiver = self;
  v7.super_class = CRFormFieldOutputRegion;
  v4 = [(CROutputRegion *)&v7 crCodableDataRepresentation];
  v5 = [v3 dataWithData:v4];

  [CRCodingUtilities appendCodable:self->_labelRegion toData:v5];
  [CRCodingUtilities appendUInteger:self->_fieldSource toData:v5];
  [CRCodingUtilities appendUInteger:self->_indexInGlobalOrder toData:v5];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3 copyChildren:(BOOL)a4 copyCandidates:(BOOL)a5 deepCopy:(BOOL)a6
{
  v14.receiver = self;
  v14.super_class = CRFormFieldOutputRegion;
  v7 = [(CROutputRegion *)&v14 copyWithZone:a3 copyChildren:a4 copyCandidates:a5 deepCopy:a6];
  v8 = [(CRFormFieldOutputRegion *)self labelRegion];
  [v7 setLabelRegion:v8];

  *(v7 + 49) = [(CRFormFieldOutputRegion *)self fieldSource];
  v9 = [(CRFormFieldOutputRegion *)self precedingExternalField];
  v10 = *(v7 + 44);
  *(v7 + 44) = v9;

  *(v7 + 47) = [(CRFormFieldOutputRegion *)self indexInGlobalOrder];
  *(v7 + 368) = [(CRFormFieldOutputRegion *)self hasBoundedWidth];
  *(v7 + 369) = [(CRFormFieldOutputRegion *)self hasBoundedHeight];
  v11 = [(CRFormFieldOutputRegion *)self debugInfo];
  v12 = *(v7 + 45);
  *(v7 + 45) = v11;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(CROutputRegion *)self boundingQuad];
      v7 = [(CROutputRegion *)v5 boundingQuad];
      v8 = [v6 isEqual:v7];

      if (v8 && (v9 = [(CRFormFieldOutputRegion *)self fieldType], v9 == [(CRFormFieldOutputRegion *)v5 fieldType]) && (v10 = [(CRFormFieldOutputRegion *)self fieldSource], v10 == [(CRFormFieldOutputRegion *)v5 fieldSource]) && (v11 = [(CRFormFieldOutputRegion *)self hasBoundedWidth], v11 == [(CRFormFieldOutputRegion *)v5 hasBoundedWidth]) && (v12 = [(CRFormFieldOutputRegion *)self hasBoundedHeight], v12 == [(CRFormFieldOutputRegion *)v5 hasBoundedHeight]))
      {
        v15 = [(CRFormFieldOutputRegion *)self fieldValue];
        v16 = [(CRFormFieldOutputRegion *)v5 fieldValue];
        v13 = [v15 isEqualToString:v16];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

@end