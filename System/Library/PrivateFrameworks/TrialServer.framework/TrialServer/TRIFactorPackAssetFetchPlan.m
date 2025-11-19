@interface TRIFactorPackAssetFetchPlan
+ (id)planWithMetadataForRequestedUnlinkedAssets:(id)a3 recordIdsForDiffableAssetIds:(id)a4 recordIdsForNonDiffableAssetIds:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPlan:(id)a3;
- (TRIFactorPackAssetFetchPlan)initWithMetadataForRequestedUnlinkedAssets:(id)a3 recordIdsForDiffableAssetIds:(id)a4 recordIdsForNonDiffableAssetIds:(id)a5;
- (id)copyWithReplacementMetadataForRequestedUnlinkedAssets:(id)a3;
- (id)copyWithReplacementRecordIdsForDiffableAssetIds:(id)a3;
- (id)copyWithReplacementRecordIdsForNonDiffableAssetIds:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIFactorPackAssetFetchPlan

- (TRIFactorPackAssetFetchPlan)initWithMetadataForRequestedUnlinkedAssets:(id)a3 recordIdsForDiffableAssetIds:(id)a4 recordIdsForNonDiffableAssetIds:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4175 description:{@"Invalid parameter not satisfying: %@", @"recordIdsForDiffableAssetIds != nil"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4174 description:{@"Invalid parameter not satisfying: %@", @"metadataForRequestedUnlinkedAssets != nil"}];

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_9:
  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4176 description:{@"Invalid parameter not satisfying: %@", @"recordIdsForNonDiffableAssetIds != nil"}];

LABEL_4:
  v19.receiver = self;
  v19.super_class = TRIFactorPackAssetFetchPlan;
  v13 = [(TRIFactorPackAssetFetchPlan *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_metadataForRequestedUnlinkedAssets, a3);
    objc_storeStrong(&v14->_recordIdsForDiffableAssetIds, a4);
    objc_storeStrong(&v14->_recordIdsForNonDiffableAssetIds, a5);
  }

  return v14;
}

+ (id)planWithMetadataForRequestedUnlinkedAssets:(id)a3 recordIdsForDiffableAssetIds:(id)a4 recordIdsForNonDiffableAssetIds:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithMetadataForRequestedUnlinkedAssets:v10 recordIdsForDiffableAssetIds:v9 recordIdsForNonDiffableAssetIds:v8];

  return v11;
}

- (id)copyWithReplacementMetadataForRequestedUnlinkedAssets:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithMetadataForRequestedUnlinkedAssets:v4 recordIdsForDiffableAssetIds:self->_recordIdsForDiffableAssetIds recordIdsForNonDiffableAssetIds:self->_recordIdsForNonDiffableAssetIds];

  return v5;
}

- (id)copyWithReplacementRecordIdsForDiffableAssetIds:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithMetadataForRequestedUnlinkedAssets:self->_metadataForRequestedUnlinkedAssets recordIdsForDiffableAssetIds:v4 recordIdsForNonDiffableAssetIds:self->_recordIdsForNonDiffableAssetIds];

  return v5;
}

- (id)copyWithReplacementRecordIdsForNonDiffableAssetIds:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithMetadataForRequestedUnlinkedAssets:self->_metadataForRequestedUnlinkedAssets recordIdsForDiffableAssetIds:self->_recordIdsForDiffableAssetIds recordIdsForNonDiffableAssetIds:v4];

  return v5;
}

- (BOOL)isEqualToPlan:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = self->_metadataForRequestedUnlinkedAssets == 0;
  v7 = [v4 metadataForRequestedUnlinkedAssets];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_11;
  }

  metadataForRequestedUnlinkedAssets = self->_metadataForRequestedUnlinkedAssets;
  if (metadataForRequestedUnlinkedAssets)
  {
    v10 = [v5 metadataForRequestedUnlinkedAssets];
    v11 = [(TRIGenericRequiredAssets *)metadataForRequestedUnlinkedAssets isEqual:v10];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = self->_recordIdsForDiffableAssetIds == 0;
  v13 = [v5 recordIdsForDiffableAssetIds];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_11;
  }

  recordIdsForDiffableAssetIds = self->_recordIdsForDiffableAssetIds;
  if (recordIdsForDiffableAssetIds)
  {
    v16 = [v5 recordIdsForDiffableAssetIds];
    v17 = [(NSDictionary *)recordIdsForDiffableAssetIds isEqual:v16];

    if (!v17)
    {
      goto LABEL_11;
    }
  }

  v18 = self->_recordIdsForNonDiffableAssetIds == 0;
  v19 = [v5 recordIdsForNonDiffableAssetIds];
  v20 = v19 != 0;

  if (v18 == v20)
  {
LABEL_11:
    v23 = 0;
  }

  else
  {
    recordIdsForNonDiffableAssetIds = self->_recordIdsForNonDiffableAssetIds;
    if (recordIdsForNonDiffableAssetIds)
    {
      v22 = [v5 recordIdsForNonDiffableAssetIds];
      v23 = [(NSDictionary *)recordIdsForNonDiffableAssetIds isEqual:v22];
    }

    else
    {
      v23 = 1;
    }
  }

  return v23 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIFactorPackAssetFetchPlan *)self isEqualToPlan:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(TRIGenericRequiredAssets *)self->_metadataForRequestedUnlinkedAssets hash];
  v4 = [(NSDictionary *)self->_recordIdsForDiffableAssetIds hash]- v3 + 32 * v3;
  return [(NSDictionary *)self->_recordIdsForNonDiffableAssetIds hash]- v4 + 32 * v4;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIFactorPackAssetFetchPlan | metadataForRequestedUnlinkedAssets:%@ recordIdsForDiffableAssetIds:%@ recordIdsForNonDiffableAssetIds:%@>", self->_metadataForRequestedUnlinkedAssets, self->_recordIdsForDiffableAssetIds, self->_recordIdsForNonDiffableAssetIds];

  return v2;
}

@end