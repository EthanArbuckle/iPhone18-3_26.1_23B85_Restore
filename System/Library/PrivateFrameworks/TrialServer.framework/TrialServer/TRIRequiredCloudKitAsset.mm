@interface TRIRequiredCloudKitAsset
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAsset:(id)asset;
- (TRIRequiredCloudKitAsset)initWithFactorName:(id)name isInstalled:(BOOL)installed isOnDemand:(BOOL)demand assetId:(id)id metadata:(id)metadata;
- (id)copyWithReplacementAssetId:(id)id;
- (id)copyWithReplacementFactorName:(id)name;
- (id)copyWithReplacementMetadata:(id)metadata;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIRequiredCloudKitAsset

- (TRIRequiredCloudKitAsset)initWithFactorName:(id)name isInstalled:(BOOL)installed isOnDemand:(BOOL)demand assetId:(id)id metadata:(id)metadata
{
  nameCopy = name;
  idCopy = id;
  metadataCopy = metadata;
  if (nameCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:2903 description:{@"Invalid parameter not satisfying: %@", @"assetId != nil"}];

    if (metadataCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:2902 description:{@"Invalid parameter not satisfying: %@", @"factorName != nil"}];

  if (!idCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (metadataCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:2904 description:{@"Invalid parameter not satisfying: %@", @"metadata != nil"}];

LABEL_4:
  v23.receiver = self;
  v23.super_class = TRIRequiredCloudKitAsset;
  v17 = [(TRIRequiredCloudKitAsset *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_factorName, name);
    v18->_isInstalled = installed;
    v18->_isOnDemand = demand;
    objc_storeStrong(&v18->_assetId, id);
    objc_storeStrong(&v18->_metadata, metadata);
  }

  return v18;
}

- (id)copyWithReplacementFactorName:(id)name
{
  nameCopy = name;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:nameCopy isInstalled:self->_isInstalled isOnDemand:self->_isOnDemand assetId:self->_assetId metadata:self->_metadata];

  return v5;
}

- (id)copyWithReplacementAssetId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName isInstalled:self->_isInstalled isOnDemand:self->_isOnDemand assetId:idCopy metadata:self->_metadata];

  return v5;
}

- (id)copyWithReplacementMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName isInstalled:self->_isInstalled isOnDemand:self->_isOnDemand assetId:self->_assetId metadata:metadataCopy];

  return v5;
}

- (BOOL)isEqualToAsset:(id)asset
{
  assetCopy = asset;
  v5 = assetCopy;
  if (!assetCopy)
  {
    goto LABEL_13;
  }

  v6 = self->_factorName == 0;
  factorName = [assetCopy factorName];
  v8 = factorName != 0;

  if (v6 == v8)
  {
    goto LABEL_13;
  }

  factorName = self->_factorName;
  if (factorName)
  {
    factorName2 = [v5 factorName];
    v11 = [(NSString *)factorName isEqual:factorName2];

    if (!v11)
    {
      goto LABEL_13;
    }
  }

  isInstalled = self->_isInstalled;
  if (isInstalled != [v5 isInstalled])
  {
    goto LABEL_13;
  }

  isOnDemand = self->_isOnDemand;
  if (isOnDemand != [v5 isOnDemand])
  {
    goto LABEL_13;
  }

  v14 = self->_assetId == 0;
  assetId = [v5 assetId];
  v16 = assetId != 0;

  if (v14 == v16)
  {
    goto LABEL_13;
  }

  assetId = self->_assetId;
  if (assetId)
  {
    assetId2 = [v5 assetId];
    v19 = [(TRIAssetId *)assetId isEqual:assetId2];

    if (!v19)
    {
      goto LABEL_13;
    }
  }

  v20 = self->_metadata == 0;
  metadata = [v5 metadata];
  v22 = metadata != 0;

  if (v20 == v22)
  {
LABEL_13:
    v25 = 0;
  }

  else
  {
    metadata = self->_metadata;
    if (metadata)
    {
      metadata2 = [v5 metadata];
      v25 = [(TRICKAssetMetadata *)metadata isEqual:metadata2];
    }

    else
    {
      v25 = 1;
    }
  }

  return v25 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIRequiredCloudKitAsset *)self isEqualToAsset:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_factorName hash];
  v4 = self->_isInstalled - v3 + 32 * v3;
  v5 = self->_isOnDemand - v4 + 32 * v4;
  v6 = [(TRIAssetId *)self->_assetId hash]- v5 + 32 * v5;
  return [(TRICKAssetMetadata *)self->_metadata hash]- v6 + 32 * v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  factorName = self->_factorName;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInstalled];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isOnDemand];
  v7 = [v3 initWithFormat:@"<TRIRequiredCloudKitAsset | factorName:%@ isInstalled:%@ isOnDemand:%@ assetId:%@ metadata:%@>", factorName, v5, v6, self->_assetId, self->_metadata];

  return v7;
}

@end