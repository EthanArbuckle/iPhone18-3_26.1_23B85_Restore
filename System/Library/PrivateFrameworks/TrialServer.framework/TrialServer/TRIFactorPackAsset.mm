@interface TRIFactorPackAsset
+ (id)assetWithFactorName:(id)name assetId:(id)id filePath:(id)path factorPackId:(id)packId;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAsset:(id)asset;
- (TRIFactorPackAsset)initWithFactorName:(id)name assetId:(id)id filePath:(id)path factorPackId:(id)packId;
- (id)copyWithReplacementAssetId:(id)id;
- (id)copyWithReplacementFactorName:(id)name;
- (id)copyWithReplacementFactorPackId:(id)id;
- (id)copyWithReplacementFilePath:(id)path;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIFactorPackAsset

- (TRIFactorPackAsset)initWithFactorName:(id)name assetId:(id)id filePath:(id)path factorPackId:(id)packId
{
  nameCopy = name;
  idCopy = id;
  pathCopy = path;
  packIdCopy = packId;
  if (nameCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3619 description:{@"Invalid parameter not satisfying: %@", @"assetId != nil"}];

    if (packIdCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3618 description:{@"Invalid parameter not satisfying: %@", @"factorName != nil"}];

  if (!idCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (packIdCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3620 description:{@"Invalid parameter not satisfying: %@", @"factorPackId != nil"}];

LABEL_4:
  v22.receiver = self;
  v22.super_class = TRIFactorPackAsset;
  v16 = [(TRIFactorPackAsset *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_factorName, name);
    objc_storeStrong(&v17->_assetId, id);
    objc_storeStrong(&v17->_filePath, path);
    objc_storeStrong(&v17->_factorPackId, packId);
  }

  return v17;
}

+ (id)assetWithFactorName:(id)name assetId:(id)id filePath:(id)path factorPackId:(id)packId
{
  packIdCopy = packId;
  pathCopy = path;
  idCopy = id;
  nameCopy = name;
  v14 = [[self alloc] initWithFactorName:nameCopy assetId:idCopy filePath:pathCopy factorPackId:packIdCopy];

  return v14;
}

- (id)copyWithReplacementFactorName:(id)name
{
  nameCopy = name;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:nameCopy assetId:self->_assetId filePath:self->_filePath factorPackId:self->_factorPackId];

  return v5;
}

- (id)copyWithReplacementAssetId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:idCopy filePath:self->_filePath factorPackId:self->_factorPackId];

  return v5;
}

- (id)copyWithReplacementFilePath:(id)path
{
  pathCopy = path;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:self->_assetId filePath:pathCopy factorPackId:self->_factorPackId];

  return v5;
}

- (id)copyWithReplacementFactorPackId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:self->_assetId filePath:self->_filePath factorPackId:idCopy];

  return v5;
}

- (BOOL)isEqualToAsset:(id)asset
{
  assetCopy = asset;
  v5 = assetCopy;
  if (!assetCopy)
  {
    goto LABEL_14;
  }

  v6 = self->_factorName == 0;
  factorName = [assetCopy factorName];
  v8 = factorName != 0;

  if (v6 == v8)
  {
    goto LABEL_14;
  }

  factorName = self->_factorName;
  if (factorName)
  {
    factorName2 = [v5 factorName];
    v11 = [(NSString *)factorName isEqual:factorName2];

    if (!v11)
    {
      goto LABEL_14;
    }
  }

  v12 = self->_assetId == 0;
  assetId = [v5 assetId];
  v14 = assetId != 0;

  if (v12 == v14)
  {
    goto LABEL_14;
  }

  assetId = self->_assetId;
  if (assetId)
  {
    assetId2 = [v5 assetId];
    v17 = [(TRIAssetId *)assetId isEqual:assetId2];

    if (!v17)
    {
      goto LABEL_14;
    }
  }

  v18 = self->_filePath == 0;
  filePath = [v5 filePath];
  v20 = filePath != 0;

  if (v18 == v20)
  {
    goto LABEL_14;
  }

  filePath = self->_filePath;
  if (filePath)
  {
    filePath2 = [v5 filePath];
    v23 = [(NSString *)filePath isEqual:filePath2];

    if (!v23)
    {
      goto LABEL_14;
    }
  }

  v24 = self->_factorPackId == 0;
  factorPackId = [v5 factorPackId];
  v26 = factorPackId != 0;

  if (v24 == v26)
  {
LABEL_14:
    v29 = 0;
  }

  else
  {
    factorPackId = self->_factorPackId;
    if (factorPackId)
    {
      factorPackId2 = [v5 factorPackId];
      v29 = [(TRIFactorPackId *)factorPackId isEqual:factorPackId2];
    }

    else
    {
      v29 = 1;
    }
  }

  return v29 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIFactorPackAsset *)self isEqualToAsset:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_factorName hash];
  v4 = [(TRIAssetId *)self->_assetId hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_filePath hash]- v4 + 32 * v4;
  return [(TRIFactorPackId *)self->_factorPackId hash]- v5 + 32 * v5;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIFactorPackAsset | factorName:%@ assetId:%@ filePath:%@ factorPackId:%@>", self->_factorName, self->_assetId, self->_filePath, self->_factorPackId];

  return v2;
}

@end