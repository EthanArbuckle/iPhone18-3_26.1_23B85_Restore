@interface TRIPurgeableAsset
+ (id)assetWithFactorName:(id)name assetId:(id)id filePath:(id)path factorPackId:(id)packId treatmentId:(id)treatmentId;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAsset:(id)asset;
- (TRIPurgeableAsset)initWithFactorName:(id)name assetId:(id)id filePath:(id)path factorPackId:(id)packId treatmentId:(id)treatmentId;
- (id)copyWithReplacementAssetId:(id)id;
- (id)copyWithReplacementFactorName:(id)name;
- (id)copyWithReplacementFactorPackId:(id)id;
- (id)copyWithReplacementFilePath:(id)path;
- (id)copyWithReplacementTreatmentId:(id)id;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIPurgeableAsset

- (TRIPurgeableAsset)initWithFactorName:(id)name assetId:(id)id filePath:(id)path factorPackId:(id)packId treatmentId:(id)treatmentId
{
  nameCopy = name;
  idCopy = id;
  pathCopy = path;
  packIdCopy = packId;
  treatmentIdCopy = treatmentId;
  if (nameCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3727 description:{@"Invalid parameter not satisfying: %@", @"factorName != nil"}];

    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3728 description:{@"Invalid parameter not satisfying: %@", @"assetId != nil"}];

LABEL_3:
  v24.receiver = self;
  v24.super_class = TRIPurgeableAsset;
  v17 = [(TRIPurgeableAsset *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_factorName, name);
    objc_storeStrong(&v18->_assetId, id);
    objc_storeStrong(&v18->_filePath, path);
    objc_storeStrong(&v18->_factorPackId, packId);
    objc_storeStrong(&v18->_treatmentId, treatmentId);
  }

  return v18;
}

+ (id)assetWithFactorName:(id)name assetId:(id)id filePath:(id)path factorPackId:(id)packId treatmentId:(id)treatmentId
{
  treatmentIdCopy = treatmentId;
  packIdCopy = packId;
  pathCopy = path;
  idCopy = id;
  nameCopy = name;
  v17 = [[self alloc] initWithFactorName:nameCopy assetId:idCopy filePath:pathCopy factorPackId:packIdCopy treatmentId:treatmentIdCopy];

  return v17;
}

- (id)copyWithReplacementFactorName:(id)name
{
  nameCopy = name;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:nameCopy assetId:self->_assetId filePath:self->_filePath factorPackId:self->_factorPackId treatmentId:self->_treatmentId];

  return v5;
}

- (id)copyWithReplacementAssetId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:idCopy filePath:self->_filePath factorPackId:self->_factorPackId treatmentId:self->_treatmentId];

  return v5;
}

- (id)copyWithReplacementFilePath:(id)path
{
  pathCopy = path;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:self->_assetId filePath:pathCopy factorPackId:self->_factorPackId treatmentId:self->_treatmentId];

  return v5;
}

- (id)copyWithReplacementFactorPackId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:self->_assetId filePath:self->_filePath factorPackId:idCopy treatmentId:self->_treatmentId];

  return v5;
}

- (id)copyWithReplacementTreatmentId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:self->_assetId filePath:self->_filePath factorPackId:self->_factorPackId treatmentId:idCopy];

  return v5;
}

- (BOOL)isEqualToAsset:(id)asset
{
  assetCopy = asset;
  v5 = assetCopy;
  if (!assetCopy)
  {
    goto LABEL_17;
  }

  v6 = self->_factorName == 0;
  factorName = [assetCopy factorName];
  v8 = factorName != 0;

  if (v6 == v8)
  {
    goto LABEL_17;
  }

  factorName = self->_factorName;
  if (factorName)
  {
    factorName2 = [v5 factorName];
    v11 = [(NSString *)factorName isEqual:factorName2];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  v12 = self->_assetId == 0;
  assetId = [v5 assetId];
  v14 = assetId != 0;

  if (v12 == v14)
  {
    goto LABEL_17;
  }

  assetId = self->_assetId;
  if (assetId)
  {
    assetId2 = [v5 assetId];
    v17 = [(TRIAssetId *)assetId isEqual:assetId2];

    if (!v17)
    {
      goto LABEL_17;
    }
  }

  v18 = self->_filePath == 0;
  filePath = [v5 filePath];
  v20 = filePath != 0;

  if (v18 == v20)
  {
    goto LABEL_17;
  }

  filePath = self->_filePath;
  if (filePath)
  {
    filePath2 = [v5 filePath];
    v23 = [(NSString *)filePath isEqual:filePath2];

    if (!v23)
    {
      goto LABEL_17;
    }
  }

  v24 = self->_factorPackId == 0;
  factorPackId = [v5 factorPackId];
  v26 = factorPackId != 0;

  if (v24 == v26)
  {
    goto LABEL_17;
  }

  factorPackId = self->_factorPackId;
  if (factorPackId)
  {
    factorPackId2 = [v5 factorPackId];
    v29 = [(TRIFactorPackId *)factorPackId isEqual:factorPackId2];

    if (!v29)
    {
      goto LABEL_17;
    }
  }

  v30 = self->_treatmentId == 0;
  treatmentId = [v5 treatmentId];
  v32 = treatmentId != 0;

  if (v30 == v32)
  {
LABEL_17:
    v35 = 0;
  }

  else
  {
    treatmentId = self->_treatmentId;
    if (treatmentId)
    {
      treatmentId2 = [v5 treatmentId];
      v35 = [(NSString *)treatmentId isEqual:treatmentId2];
    }

    else
    {
      v35 = 1;
    }
  }

  return v35 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIPurgeableAsset *)self isEqualToAsset:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_factorName hash];
  v4 = [(TRIAssetId *)self->_assetId hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_filePath hash]- v4 + 32 * v4;
  v6 = [(TRIFactorPackId *)self->_factorPackId hash]- v5 + 32 * v5;
  return [(NSString *)self->_treatmentId hash]- v6 + 32 * v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = *&self->_factorName;
  v5 = [v3 initWithFormat:@"<TRIPurgeableAsset | factorName:%@ assetId:%@ filePath:%@ factorPackId:%@ treatmentId:%@>", self->_factorName, self->_assetId, self->_filePath, self->_factorPackId, self->_treatmentId];

  return v5;
}

@end