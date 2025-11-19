@interface TRITreatmentQualifiedAssetIndex
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToIndex:(id)a3;
- (TRITreatmentQualifiedAssetIndex)initWithTreatmentId:(id)a3 index:(unsigned int)a4;
- (id)copyWithReplacementTreatmentId:(id)a3;
- (id)description;
@end

@implementation TRITreatmentQualifiedAssetIndex

- (TRITreatmentQualifiedAssetIndex)initWithTreatmentId:(id)a3 index:(unsigned int)a4
{
  v8 = a3;
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:2636 description:{@"Invalid parameter not satisfying: %@", @"treatmentId != nil"}];
  }

  v13.receiver = self;
  v13.super_class = TRITreatmentQualifiedAssetIndex;
  v9 = [(TRITreatmentQualifiedAssetIndex *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_treatmentId, a3);
    v10->_index = a4;
  }

  return v10;
}

- (id)copyWithReplacementTreatmentId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithTreatmentId:v4 index:self->_index];

  return v5;
}

- (BOOL)isEqualToIndex:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = self->_treatmentId == 0;
  v7 = [v4 treatmentId];
  v8 = v7 != 0;

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITreatmentQualifiedAssetIndex *)self isEqualToIndex:v5];
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