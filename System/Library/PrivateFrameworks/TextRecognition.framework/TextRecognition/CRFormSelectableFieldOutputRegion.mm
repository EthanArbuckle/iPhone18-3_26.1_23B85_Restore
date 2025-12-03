@interface CRFormSelectableFieldOutputRegion
- (CRFormSelectableFieldOutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset;
- (CRFormSelectableFieldOutputRegion)initWithQuad:(id)quad type:(unint64_t)type labelRegion:(id)region source:(unint64_t)source;
- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy;
- (id)crCodableDataRepresentation;
@end

@implementation CRFormSelectableFieldOutputRegion

- (CRFormSelectableFieldOutputRegion)initWithQuad:(id)quad type:(unint64_t)type labelRegion:(id)region source:(unint64_t)source
{
  v10.receiver = self;
  v10.super_class = CRFormSelectableFieldOutputRegion;
  v7 = [(CRFormFieldOutputRegion *)&v10 initWithQuad:quad labelRegion:region subFields:0 source:source];
  v8 = v7;
  if (v7)
  {
    v7->_selectableFieldType = type;
    [(CRFormFieldOutputRegion *)v7 setHasBoundedWidth:1];
    [(CRFormFieldOutputRegion *)v8 setHasBoundedHeight:1];
  }

  return v8;
}

- (CRFormSelectableFieldOutputRegion)initWithCRCodableDataRepresentation:(id)representation version:(int64_t)version offset:(unint64_t *)offset
{
  representationCopy = representation;
  v11.receiver = self;
  v11.super_class = CRFormSelectableFieldOutputRegion;
  v9 = [(CRFormFieldOutputRegion *)&v11 initWithCRCodableDataRepresentation:representationCopy version:version offset:offset];
  if (v9)
  {
    v9->_selectableFieldType = [CRCodingUtilities unsignedIntegerFromEncodingData:representationCopy offset:offset];
  }

  return v9;
}

- (id)crCodableDataRepresentation
{
  v3 = MEMORY[0x1E695DF88];
  v7.receiver = self;
  v7.super_class = CRFormSelectableFieldOutputRegion;
  crCodableDataRepresentation = [(CRFormFieldOutputRegion *)&v7 crCodableDataRepresentation];
  v5 = [v3 dataWithData:crCodableDataRepresentation];

  [CRCodingUtilities appendUInteger:self->_selectableFieldType toData:v5];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone copyChildren:(BOOL)children copyCandidates:(BOOL)candidates deepCopy:(BOOL)copy
{
  v9.receiver = self;
  v9.super_class = CRFormSelectableFieldOutputRegion;
  v7 = [(CRFormFieldOutputRegion *)&v9 copyWithZone:zone copyChildren:children copyCandidates:candidates deepCopy:copy];
  [v7 setSelectableFieldType:{-[CRFormSelectableFieldOutputRegion selectableFieldType](self, "selectableFieldType")}];
  return v7;
}

@end