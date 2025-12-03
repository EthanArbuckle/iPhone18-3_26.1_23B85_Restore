@interface TRITreatmentQualifiedAssetIndex
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToIndex:(id)index;
- (TRITreatmentQualifiedAssetIndex)initWithTreatmentId:(id)id index:(unsigned int)index;
- (id)copyWithReplacementTreatmentId:(id)id;
- (id)description;
@end

@implementation TRITreatmentQualifiedAssetIndex

- (TRITreatmentQualifiedAssetIndex)initWithTreatmentId:(id)id index:(unsigned int)index
{
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:2636 description:{@"Invalid parameter not satisfying: %@", @"treatmentId != nil"}];
  }

  v13.receiver = self;
  v13.super_class = TRITreatmentQualifiedAssetIndex;
  v9 = [(TRITreatmentQualifiedAssetIndex *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_treatmentId, id);
    v10->_index = index;
  }

  return v10;
}

- (id)copyWithReplacementTreatmentId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithTreatmentId:idCopy index:self->_index];

  return v5;
}

- (BOOL)isEqualToIndex:(id)index
{
  indexCopy = index;
  v5 = indexCopy;
  if (!indexCopy)
  {
    goto LABEL_6;
  }

  v6 = self->_treatmentId == 0;
  treatmentId = [indexCopy treatmentId];
  v8 = treatmentId != 0;

  if (v6 == v8 || (treatmentId = self->_treatmentId) != 0 && ([v5 treatmentId], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqual:](treatmentId, "isEqual:", v10), v10, !v11))
  {
LABEL_6:
    v13 = 0;
  }

  else
  {
    index = self->_index;
    v13 = index == [v5 index];
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITreatmentQualifiedAssetIndex *)self isEqualToIndex:v5];
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  treatmentId = self->_treatmentId;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_index];
  v6 = [v3 initWithFormat:@"<TRITreatmentQualifiedAssetIndex | treatmentId:%@ index:%@>", treatmentId, v5];

  return v6;
}

@end