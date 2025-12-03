@interface TRIFactorPackAssetFetchPlan
+ (id)planWithMetadataForRequestedUnlinkedAssets:(id)assets recordIdsForDiffableAssetIds:(id)ids recordIdsForNonDiffableAssetIds:(id)assetIds;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPlan:(id)plan;
- (TRIFactorPackAssetFetchPlan)initWithMetadataForRequestedUnlinkedAssets:(id)assets recordIdsForDiffableAssetIds:(id)ids recordIdsForNonDiffableAssetIds:(id)assetIds;
- (id)copyWithReplacementMetadataForRequestedUnlinkedAssets:(id)assets;
- (id)copyWithReplacementRecordIdsForDiffableAssetIds:(id)ids;
- (id)copyWithReplacementRecordIdsForNonDiffableAssetIds:(id)ids;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIFactorPackAssetFetchPlan

- (TRIFactorPackAssetFetchPlan)initWithMetadataForRequestedUnlinkedAssets:(id)assets recordIdsForDiffableAssetIds:(id)ids recordIdsForNonDiffableAssetIds:(id)assetIds
{
  assetsCopy = assets;
  idsCopy = ids;
  assetIdsCopy = assetIds;
  if (assetsCopy)
  {
    if (idsCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4175 description:{@"Invalid parameter not satisfying: %@", @"recordIdsForDiffableAssetIds != nil"}];

    if (assetIdsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4174 description:{@"Invalid parameter not satisfying: %@", @"metadataForRequestedUnlinkedAssets != nil"}];

  if (!idsCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (assetIdsCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4176 description:{@"Invalid parameter not satisfying: %@", @"recordIdsForNonDiffableAssetIds != nil"}];

LABEL_4:
  v19.receiver = self;
  v19.super_class = TRIFactorPackAssetFetchPlan;
  v13 = [(TRIFactorPackAssetFetchPlan *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_metadataForRequestedUnlinkedAssets, assets);
    objc_storeStrong(&v14->_recordIdsForDiffableAssetIds, ids);
    objc_storeStrong(&v14->_recordIdsForNonDiffableAssetIds, assetIds);
  }

  return v14;
}

+ (id)planWithMetadataForRequestedUnlinkedAssets:(id)assets recordIdsForDiffableAssetIds:(id)ids recordIdsForNonDiffableAssetIds:(id)assetIds
{
  assetIdsCopy = assetIds;
  idsCopy = ids;
  assetsCopy = assets;
  v11 = [[self alloc] initWithMetadataForRequestedUnlinkedAssets:assetsCopy recordIdsForDiffableAssetIds:idsCopy recordIdsForNonDiffableAssetIds:assetIdsCopy];

  return v11;
}

- (id)copyWithReplacementMetadataForRequestedUnlinkedAssets:(id)assets
{
  assetsCopy = assets;
  v5 = [objc_alloc(objc_opt_class()) initWithMetadataForRequestedUnlinkedAssets:assetsCopy recordIdsForDiffableAssetIds:self->_recordIdsForDiffableAssetIds recordIdsForNonDiffableAssetIds:self->_recordIdsForNonDiffableAssetIds];

  return v5;
}

- (id)copyWithReplacementRecordIdsForDiffableAssetIds:(id)ids
{
  idsCopy = ids;
  v5 = [objc_alloc(objc_opt_class()) initWithMetadataForRequestedUnlinkedAssets:self->_metadataForRequestedUnlinkedAssets recordIdsForDiffableAssetIds:idsCopy recordIdsForNonDiffableAssetIds:self->_recordIdsForNonDiffableAssetIds];

  return v5;
}

- (id)copyWithReplacementRecordIdsForNonDiffableAssetIds:(id)ids
{
  idsCopy = ids;
  v5 = [objc_alloc(objc_opt_class()) initWithMetadataForRequestedUnlinkedAssets:self->_metadataForRequestedUnlinkedAssets recordIdsForDiffableAssetIds:self->_recordIdsForDiffableAssetIds recordIdsForNonDiffableAssetIds:idsCopy];

  return v5;
}

- (BOOL)isEqualToPlan:(id)plan
{
  planCopy = plan;
  v5 = planCopy;
  if (!planCopy)
  {
    goto LABEL_11;
  }

  v6 = self->_metadataForRequestedUnlinkedAssets == 0;
  metadataForRequestedUnlinkedAssets = [planCopy metadataForRequestedUnlinkedAssets];
  v8 = metadataForRequestedUnlinkedAssets != 0;

  if (v6 == v8)
  {
    goto LABEL_11;
  }

  metadataForRequestedUnlinkedAssets = self->_metadataForRequestedUnlinkedAssets;
  if (metadataForRequestedUnlinkedAssets)
  {
    metadataForRequestedUnlinkedAssets2 = [v5 metadataForRequestedUnlinkedAssets];
    v11 = [(TRIGenericRequiredAssets *)metadataForRequestedUnlinkedAssets isEqual:metadataForRequestedUnlinkedAssets2];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = self->_recordIdsForDiffableAssetIds == 0;
  recordIdsForDiffableAssetIds = [v5 recordIdsForDiffableAssetIds];
  v14 = recordIdsForDiffableAssetIds != 0;

  if (v12 == v14)
  {
    goto LABEL_11;
  }

  recordIdsForDiffableAssetIds = self->_recordIdsForDiffableAssetIds;
  if (recordIdsForDiffableAssetIds)
  {
    recordIdsForDiffableAssetIds2 = [v5 recordIdsForDiffableAssetIds];
    v17 = [(NSDictionary *)recordIdsForDiffableAssetIds isEqual:recordIdsForDiffableAssetIds2];

    if (!v17)
    {
      goto LABEL_11;
    }
  }

  v18 = self->_recordIdsForNonDiffableAssetIds == 0;
  recordIdsForNonDiffableAssetIds = [v5 recordIdsForNonDiffableAssetIds];
  v20 = recordIdsForNonDiffableAssetIds != 0;

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
      recordIdsForNonDiffableAssetIds2 = [v5 recordIdsForNonDiffableAssetIds];
      v23 = [(NSDictionary *)recordIdsForNonDiffableAssetIds isEqual:recordIdsForNonDiffableAssetIds2];
    }

    else
    {
      v23 = 1;
    }
  }

  return v23 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIFactorPackAssetFetchPlan *)self isEqualToPlan:v5];
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