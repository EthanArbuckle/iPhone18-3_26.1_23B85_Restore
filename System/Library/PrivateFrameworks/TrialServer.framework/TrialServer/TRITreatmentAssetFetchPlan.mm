@interface TRITreatmentAssetFetchPlan
+ (id)planWithMetadataForRequestedUnlinkedAssets:(id)assets fetchPlansForTreatmentIds:(id)ids;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPlan:(id)plan;
- (TRITreatmentAssetFetchPlan)initWithMetadataForRequestedUnlinkedAssets:(id)assets fetchPlansForTreatmentIds:(id)ids;
- (id)copyWithReplacementFetchPlansForTreatmentIds:(id)ids;
- (id)copyWithReplacementMetadataForRequestedUnlinkedAssets:(id)assets;
- (id)description;
@end

@implementation TRITreatmentAssetFetchPlan

- (TRITreatmentAssetFetchPlan)initWithMetadataForRequestedUnlinkedAssets:(id)assets fetchPlansForTreatmentIds:(id)ids
{
  assetsCopy = assets;
  idsCopy = ids;
  v10 = idsCopy;
  if (assetsCopy)
  {
    if (idsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4100 description:{@"Invalid parameter not satisfying: %@", @"metadataForRequestedUnlinkedAssets != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4101 description:{@"Invalid parameter not satisfying: %@", @"fetchPlansForTreatmentIds != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRITreatmentAssetFetchPlan;
  v11 = [(TRITreatmentAssetFetchPlan *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_metadataForRequestedUnlinkedAssets, assets);
    objc_storeStrong(&v12->_fetchPlansForTreatmentIds, ids);
  }

  return v12;
}

+ (id)planWithMetadataForRequestedUnlinkedAssets:(id)assets fetchPlansForTreatmentIds:(id)ids
{
  idsCopy = ids;
  assetsCopy = assets;
  v8 = [[self alloc] initWithMetadataForRequestedUnlinkedAssets:assetsCopy fetchPlansForTreatmentIds:idsCopy];

  return v8;
}

- (id)copyWithReplacementMetadataForRequestedUnlinkedAssets:(id)assets
{
  assetsCopy = assets;
  v5 = [objc_alloc(objc_opt_class()) initWithMetadataForRequestedUnlinkedAssets:assetsCopy fetchPlansForTreatmentIds:self->_fetchPlansForTreatmentIds];

  return v5;
}

- (id)copyWithReplacementFetchPlansForTreatmentIds:(id)ids
{
  idsCopy = ids;
  v5 = [objc_alloc(objc_opt_class()) initWithMetadataForRequestedUnlinkedAssets:self->_metadataForRequestedUnlinkedAssets fetchPlansForTreatmentIds:idsCopy];

  return v5;
}

- (BOOL)isEqualToPlan:(id)plan
{
  planCopy = plan;
  v5 = planCopy;
  if (!planCopy)
  {
    goto LABEL_8;
  }

  v6 = self->_metadataForRequestedUnlinkedAssets == 0;
  metadataForRequestedUnlinkedAssets = [planCopy metadataForRequestedUnlinkedAssets];
  v8 = metadataForRequestedUnlinkedAssets != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  metadataForRequestedUnlinkedAssets = self->_metadataForRequestedUnlinkedAssets;
  if (metadataForRequestedUnlinkedAssets)
  {
    metadataForRequestedUnlinkedAssets2 = [v5 metadataForRequestedUnlinkedAssets];
    v11 = [(TRIGenericUniqueRequiredAssets *)metadataForRequestedUnlinkedAssets isEqual:metadataForRequestedUnlinkedAssets2];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_fetchPlansForTreatmentIds == 0;
  fetchPlansForTreatmentIds = [v5 fetchPlansForTreatmentIds];
  v14 = fetchPlansForTreatmentIds != 0;

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
      fetchPlansForTreatmentIds2 = [v5 fetchPlansForTreatmentIds];
      v17 = [(NSDictionary *)fetchPlansForTreatmentIds isEqual:fetchPlansForTreatmentIds2];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITreatmentAssetFetchPlan *)self isEqualToPlan:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRITreatmentAssetFetchPlan | metadataForRequestedUnlinkedAssets:%@ fetchPlansForTreatmentIds:%@>", self->_metadataForRequestedUnlinkedAssets, self->_fetchPlansForTreatmentIds];

  return v2;
}

@end