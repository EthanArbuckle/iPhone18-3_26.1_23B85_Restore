@interface TRIRequiredMAAsset
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAsset:(id)a3;
- (TRIRequiredMAAsset)initWithFactorName:(id)a3 isInstalled:(BOOL)a4 isOnDemand:(BOOL)a5 metadata:(id)a6 fullAssetId:(id)a7;
- (id)copyWithReplacementFactorName:(id)a3;
- (id)copyWithReplacementFullAssetId:(id)a3;
- (id)copyWithReplacementMetadata:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIRequiredMAAsset

- (TRIRequiredMAAsset)initWithFactorName:(id)a3 isInstalled:(BOOL)a4 isOnDemand:(BOOL)a5 metadata:(id)a6 fullAssetId:(id)a7
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_8:
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3029 description:{@"Invalid parameter not satisfying: %@", @"metadata != nil"}];

    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3028 description:{@"Invalid parameter not satisfying: %@", @"factorName != nil"}];

  if (!v15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v16)
  {
    goto LABEL_4;
  }

LABEL_9:
  v22 = [MEMORY[0x277CCA890] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3030 description:{@"Invalid parameter not satisfying: %@", @"fullAssetId != nil"}];

LABEL_4:
  v23.receiver = self;
  v23.super_class = TRIRequiredMAAsset;
  v17 = [(TRIRequiredMAAsset *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_factorName, a3);
    v18->_isInstalled = a4;
    v18->_isOnDemand = a5;
    objc_storeStrong(&v18->_metadata, a6);
    objc_storeStrong(&v18->_fullAssetId, a7);
  }

  return v18;
}

- (id)copyWithReplacementFactorName:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:v4 isInstalled:self->_isInstalled isOnDemand:self->_isOnDemand metadata:self->_metadata fullAssetId:self->_fullAssetId];

  return v5;
}

- (id)copyWithReplacementMetadata:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName isInstalled:self->_isInstalled isOnDemand:self->_isOnDemand metadata:v4 fullAssetId:self->_fullAssetId];

  return v5;
}

- (id)copyWithReplacementFullAssetId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName isInstalled:self->_isInstalled isOnDemand:self->_isOnDemand metadata:self->_metadata fullAssetId:v4];

  return v5;
}

- (BOOL)isEqualToAsset:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = self->_factorName == 0;
  v7 = [v4 factorName];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_13;
  }

  factorName = self->_factorName;
  if (factorName)
  {
    v10 = [v5 factorName];
    v11 = [(NSString *)factorName isEqual:v10];

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

  v14 = self->_metadata == 0;
  v15 = [v5 metadata];
  v16 = v15 != 0;

  if (v14 == v16)
  {
    goto LABEL_13;
  }

  metadata = self->_metadata;
  if (metadata)
  {
    v18 = [v5 metadata];
    v19 = [(TRIMAAssetMetadata *)metadata isEqual:v18];

    if (!v19)
    {
      goto LABEL_13;
    }
  }

  v20 = self->_fullAssetId == 0;
  v21 = [v5 fullAssetId];
  v22 = v21 != 0;

  if (v20 == v22)
  {
LABEL_13:
    v25 = 0;
  }

  else
  {
    fullAssetId = self->_fullAssetId;
    if (fullAssetId)
    {
      v24 = [v5 fullAssetId];
      v25 = [(TRIFullMAAssetId *)fullAssetId isEqual:v24];
    }

    else
    {
      v25 = 1;
    }
  }

  return v25 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIRequiredMAAsset *)self isEqualToAsset:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_factorName hash];
  v4 = self->_isInstalled - v3 + 32 * v3;
  v5 = self->_isOnDemand - v4 + 32 * v4;
  v6 = [(TRIMAAssetMetadata *)self->_metadata hash]- v5 + 32 * v5;
  return [(TRIFullMAAssetId *)self->_fullAssetId hash]- v6 + 32 * v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  factorName = self->_factorName;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInstalled];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isOnDemand];
  v7 = [v3 initWithFormat:@"<TRIRequiredMAAsset | factorName:%@ isInstalled:%@ isOnDemand:%@ metadata:%@ fullAssetId:%@>", factorName, v5, v6, self->_metadata, self->_fullAssetId];

  return v7;
}

@end