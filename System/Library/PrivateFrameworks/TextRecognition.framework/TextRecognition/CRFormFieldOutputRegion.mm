@interface CRFormFieldOutputRegion
- (BOOL)isEqual:(id)equal;
- (CRFormFieldOutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset;
- (CRFormFieldOutputRegion)initWithQuad:(id)quad labelRegion:(id)region subFields:(id)fields source:(unint64_t)source;
- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy;
- (id)crCodableDataRepresentation;
@end

@implementation CRFormFieldOutputRegion

- (CRFormFieldOutputRegion)initWithQuad:(id)quad labelRegion:(id)region subFields:(id)fields source:(unint64_t)source
{
  quadCopy = quad;
  regionCopy = region;
  fieldsCopy = fields;
  v19.receiver = self;
  v19.super_class = CRFormFieldOutputRegion;
  v13 = [(CROutputRegion *)&v19 initWithConfidence:2 baselineAngle:0.0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_labelRegion, region);
    v14->_fieldSource = source;
    [(CROutputRegion *)v14 setBoundingQuad:quadCopy];
    v15 = [fieldsCopy copy];
    [(CROutputRegion *)v14 setFormFieldRegions:v15];

    v14->_hasBoundedWidth = 0;
    v14->_hasBoundedHeight = 0;
    v16 = objc_opt_new();
    debugInfo = v14->_debugInfo;
    v14->_debugInfo = v16;
  }

  return v14;
}

- (CRFormFieldOutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset
{
  representationCopy = representation;
  v16.receiver = self;
  v16.super_class = CRFormFieldOutputRegion;
  v9 = [(CROutputRegion *)&v16 initWithCRCodableDataRepresentation:representationCopy version:version offset:offset];
  if (v9)
  {
    v10 = [CRCodingUtilities objectDataFromEncodingData:representationCopy offset:offset];
    v11 = [CROutputRegion outputRegionWithCRCodableDataRepresentation:v10];
    labelRegion = v9->_labelRegion;
    v9->_labelRegion = v11;

    v9->_fieldSource = [CRCodingUtilities unsignedIntegerFromEncodingData:representationCopy offset:offset];
    v9->_indexInGlobalOrder = [CRCodingUtilities unsignedIntegerFromEncodingData:representationCopy offset:offset];
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
  crCodableDataRepresentation = [(CROutputRegion *)&v7 crCodableDataRepresentation];
  v5 = [v3 dataWithData:crCodableDataRepresentation];

  [CRCodingUtilities appendCodable:self->_labelRegion toData:v5];
  [CRCodingUtilities appendUInteger:self->_fieldSource toData:v5];
  [CRCodingUtilities appendUInteger:self->_indexInGlobalOrder toData:v5];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy
{
  v14.receiver = self;
  v14.super_class = CRFormFieldOutputRegion;
  v7 = [(CROutputRegion *)&v14 copyWithZone:zone copyChildren:children copyCandidates:candidates deepCopy:copy];
  labelRegion = [(CRFormFieldOutputRegion *)self labelRegion];
  [v7 setLabelRegion:labelRegion];

  *(v7 + 49) = [(CRFormFieldOutputRegion *)self fieldSource];
  precedingExternalField = [(CRFormFieldOutputRegion *)self precedingExternalField];
  v10 = *(v7 + 44);
  *(v7 + 44) = precedingExternalField;

  *(v7 + 47) = [(CRFormFieldOutputRegion *)self indexInGlobalOrder];
  *(v7 + 368) = [(CRFormFieldOutputRegion *)self hasBoundedWidth];
  *(v7 + 369) = [(CRFormFieldOutputRegion *)self hasBoundedHeight];
  debugInfo = [(CRFormFieldOutputRegion *)self debugInfo];
  v12 = *(v7 + 45);
  *(v7 + 45) = debugInfo;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      boundingQuad = [(CROutputRegion *)self boundingQuad];
      boundingQuad2 = [(CROutputRegion *)v5 boundingQuad];
      v8 = [boundingQuad isEqual:boundingQuad2];

      if (v8 && (v9 = [(CRFormFieldOutputRegion *)self fieldType], v9 == [(CRFormFieldOutputRegion *)v5 fieldType]) && (v10 = [(CRFormFieldOutputRegion *)self fieldSource], v10 == [(CRFormFieldOutputRegion *)v5 fieldSource]) && (v11 = [(CRFormFieldOutputRegion *)self hasBoundedWidth], v11 == [(CRFormFieldOutputRegion *)v5 hasBoundedWidth]) && (v12 = [(CRFormFieldOutputRegion *)self hasBoundedHeight], v12 == [(CRFormFieldOutputRegion *)v5 hasBoundedHeight]))
      {
        fieldValue = [(CRFormFieldOutputRegion *)self fieldValue];
        fieldValue2 = [(CRFormFieldOutputRegion *)v5 fieldValue];
        v13 = [fieldValue isEqualToString:fieldValue2];
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