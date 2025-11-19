@interface TRITreatmentAssetFetchPlan
+ (id)planWithMetadataForRequestedUnlinkedAssets:(id)a3 fetchPlansForTreatmentIds:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPlan:(id)a3;
- (TRITreatmentAssetFetchPlan)initWithMetadataForRequestedUnlinkedAssets:(id)a3 fetchPlansForTreatmentIds:(id)a4;
- (id)copyWithReplacementFetchPlansForTreatmentIds:(id)a3;
- (id)copyWithReplacementMetadataForRequestedUnlinkedAssets:(id)a3;
- (id)description;
@end

@implementation TRITreatmentAssetFetchPlan

- (TRITreatmentAssetFetchPlan)initWithMetadataForRequestedUnlinkedAssets:(id)a3 fetchPlansForTreatmentIds:(id)a4
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
    [v14 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4100 description:{@"Invalid parameter not satisfying: %@", @"metadataForRequestedUnlinkedAssets != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4101 description:{@"Invalid parameter not satisfying: %@", @"fetchPlansForTreatmentIds != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRITreatmentAssetFetchPlan;
  v11 = [(TRITreatmentAssetFetchPlan *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_metadataForRequestedUnlinkedAssets, a3);
    objc_storeStrong(&v12->_fetchPlansForTreatmentIds, a4);
  }

  return v12;
}

+ (id)planWithMetadataForRequestedUnlinkedAssets:(id)a3 fetchPlansForTreatmentIds:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithMetadataForRequestedUnlinkedAssets:v7 fetchPlansForTreatmentIds:v6];

  return v8;
}

- (id)copyWithReplacementMetadataForRequestedUnlinkedAssets:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithMetadataForRequestedUnlinkedAssets:v4 fetchPlansForTreatmentIds:self->_fetchPlansForTreatmentIds];

  return v5;
}

- (id)copyWithReplacementFetchPlansForTreatmentIds:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithMetadataForRequestedUnlinkedAssets:self->_metadataForRequestedUnlinkedAssets fetchPlansForTreatmentIds:v4];

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

  v6 = self->_metadataForRequestedUnlinkedAssets == 0;
  v7 = [v4 metadataForRequestedUnlinkedAssets];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  metadataForRequestedUnlinkedAssets = self->_metadataForRequestedUnlinkedAssets;
  if (metadataForRequestedUnlinkedAssets)
  {
    v10 = [v5 metadataForRequestedUnlinkedAssets];
    v11 = [(TRIGenericUniqueRequiredAssets *)metadataForRequestedUnlinkedAssets isEqual:v10];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_fetchPlansForTreatmentIds == 0;
  v13 = [v5 fetchPlansForTreatmentIds];
  v14 = v13 != 0;

  if (v12 == v14)
  {
LABEL_8:
    v17 = 0;
  }

  else
  {
    fetchPlansForTreatmentIds = self->_fetchPlansForTreatmentIds;
    if (fetchPlansForTreatmentIds)
    {
      v16 = [v5 fetchPlansForTreatmentIds];
      v17 = [(NSDictionary *)fetchPlansForTreatmentIds isEqual:v16];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITreatmentAssetFetchPlan *)self isEqualToPlan:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRITreatmentAssetFetchPlan | metadataForRequestedUnlinkedAssets:%@ fetchPlansForTreatmentIds:%@>", self->_metadataForRequestedUnlinkedAssets, self->_fetchPlansForTreatmentIds];

  return v2;
}

@end