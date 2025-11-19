@interface TRIPurgeableAsset
+ (id)assetWithFactorName:(id)a3 assetId:(id)a4 filePath:(id)a5 factorPackId:(id)a6 treatmentId:(id)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAsset:(id)a3;
- (TRIPurgeableAsset)initWithFactorName:(id)a3 assetId:(id)a4 filePath:(id)a5 factorPackId:(id)a6 treatmentId:(id)a7;
- (id)copyWithReplacementAssetId:(id)a3;
- (id)copyWithReplacementFactorName:(id)a3;
- (id)copyWithReplacementFactorPackId:(id)a3;
- (id)copyWithReplacementFilePath:(id)a3;
- (id)copyWithReplacementTreatmentId:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIPurgeableAsset

- (TRIPurgeableAsset)initWithFactorName:(id)a3 assetId:(id)a4 filePath:(id)a5 factorPackId:(id)a6 treatmentId:(id)a7
{
  v13 = a3;
  v14 = a4;
  v23 = a5;
  v15 = a6;
  v16 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3727 description:{@"Invalid parameter not satisfying: %@", @"factorName != nil"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x277CCA890] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3728 description:{@"Invalid parameter not satisfying: %@", @"assetId != nil"}];

LABEL_3:
  v24.receiver = self;
  v24.super_class = TRIPurgeableAsset;
  v17 = [(TRIPurgeableAsset *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_factorName, a3);
    objc_storeStrong(&v18->_assetId, a4);
    objc_storeStrong(&v18->_filePath, a5);
    objc_storeStrong(&v18->_factorPackId, a6);
    objc_storeStrong(&v18->_treatmentId, a7);
  }

  return v18;
}

+ (id)assetWithFactorName:(id)a3 assetId:(id)a4 filePath:(id)a5 factorPackId:(id)a6 treatmentId:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] initWithFactorName:v16 assetId:v15 filePath:v14 factorPackId:v13 treatmentId:v12];

  return v17;
}

- (id)copyWithReplacementFactorName:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:v4 assetId:self->_assetId filePath:self->_filePath factorPackId:self->_factorPackId treatmentId:self->_treatmentId];

  return v5;
}

- (id)copyWithReplacementAssetId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:v4 filePath:self->_filePath factorPackId:self->_factorPackId treatmentId:self->_treatmentId];

  return v5;
}

- (id)copyWithReplacementFilePath:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:self->_assetId filePath:v4 factorPackId:self->_factorPackId treatmentId:self->_treatmentId];

  return v5;
}

- (id)copyWithReplacementFactorPackId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:self->_assetId filePath:self->_filePath factorPackId:v4 treatmentId:self->_treatmentId];

  return v5;
}

- (id)copyWithReplacementTreatmentId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:self->_assetId filePath:self->_filePath factorPackId:self->_factorPackId treatmentId:v4];

  return v5;
}

- (BOOL)isEqualToAsset:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_17;
  }

  v6 = self->_factorName == 0;
  v7 = [v4 factorName];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_17;
  }

  factorName = self->_factorName;
  if (factorName)
  {
    v10 = [v5 factorName];
    v11 = [(NSString *)factorName isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  v12 = self->_assetId == 0;
  v13 = [v5 assetId];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_17;
  }

  assetId = self->_assetId;
  if (assetId)
  {
    v16 = [v5 assetId];
    v17 = [(TRIAssetId *)assetId isEqual:v16];

    if (!v17)
    {
      goto LABEL_17;
    }
  }

  v18 = self->_filePath == 0;
  v19 = [v5 filePath];
  v20 = v19 != 0;

  if (v18 == v20)
  {
    goto LABEL_17;
  }

  filePath = self->_filePath;
  if (filePath)
  {
    v22 = [v5 filePath];
    v23 = [(NSString *)filePath isEqual:v22];

    if (!v23)
    {
      goto LABEL_17;
    }
  }

  v24 = self->_factorPackId == 0;
  v25 = [v5 factorPackId];
  v26 = v25 != 0;

  if (v24 == v26)
  {
    goto LABEL_17;
  }

  factorPackId = self->_factorPackId;
  if (factorPackId)
  {
    v28 = [v5 factorPackId];
    v29 = [(TRIFactorPackId *)factorPackId isEqual:v28];

    if (!v29)
    {
      goto LABEL_17;
    }
  }

  v30 = self->_treatmentId == 0;
  v31 = [v5 treatmentId];
  v32 = v31 != 0;

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
      v34 = [v5 treatmentId];
      v35 = [(NSString *)treatmentId isEqual:v34];
    }

    else
    {
      v35 = 1;
    }
  }

  return v35 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIPurgeableAsset *)self isEqualToAsset:v5];
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