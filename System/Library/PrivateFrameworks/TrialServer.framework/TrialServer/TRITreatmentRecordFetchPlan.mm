@interface TRITreatmentRecordFetchPlan
+ (id)planWithRecordId:(id)a3 assetIndexes:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPlan:(id)a3;
- (TRITreatmentRecordFetchPlan)initWithRecordId:(id)a3 assetIndexes:(id)a4;
- (id)copyWithReplacementAssetIndexes:(id)a3;
- (id)copyWithReplacementRecordId:(id)a3;
- (id)description;
@end

@implementation TRITreatmentRecordFetchPlan

- (TRITreatmentRecordFetchPlan)initWithRecordId:(id)a3 assetIndexes:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4027 description:{@"Invalid parameter not satisfying: %@", @"recordId != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4028 description:{@"Invalid parameter not satisfying: %@", @"assetIndexes != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRITreatmentRecordFetchPlan;
  v11 = [(TRITreatmentRecordFetchPlan *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_recordId, a3);
    objc_storeStrong(&v12->_assetIndexes, a4);
  }

  return v12;
}

+ (id)planWithRecordId:(id)a3 assetIndexes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithRecordId:v7 assetIndexes:v6];

  return v8;
}

- (id)copyWithReplacementRecordId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRecordId:v4 assetIndexes:self->_assetIndexes];

  return v5;
}

- (id)copyWithReplacementAssetIndexes:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRecordId:self->_recordId assetIndexes:v4];

  return v5;
}

- (BOOL)isEqualToPlan:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = self->_recordId == 0;
  v7 = [v4 recordId];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  recordId = self->_recordId;
  if (recordId)
  {
    v10 = [v5 recordId];
    v11 = [(CKRecordID *)recordId isEqual:v10];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_assetIndexes == 0;
  v13 = [v5 assetIndexes];
  v14 = v13 != 0;

  if (v12 == v14)
  {
LABEL_8:
    v17 = 0;
  }

  else
  {
    assetIndexes = self->_assetIndexes;
    if (assetIndexes)
    {
      v16 = [v5 assetIndexes];
      v17 = [(NSIndexSet *)assetIndexes isEqual:v16];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITreatmentRecordFetchPlan *)self isEqualToPlan:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRITreatmentRecordFetchPlan | recordId:%@ assetIndexes:%@>", self->_recordId, self->_assetIndexes];

  return v2;
}

@end