@interface TRIFactorPackAsset
+ (id)assetWithFactorName:(id)a3 assetId:(id)a4 filePath:(id)a5 factorPackId:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAsset:(id)a3;
- (TRIFactorPackAsset)initWithFactorName:(id)a3 assetId:(id)a4 filePath:(id)a5 factorPackId:(id)a6;
- (id)copyWithReplacementAssetId:(id)a3;
- (id)copyWithReplacementFactorName:(id)a3;
- (id)copyWithReplacementFactorPackId:(id)a3;
- (id)copyWithReplacementFilePath:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIFactorPackAsset

- (TRIFactorPackAsset)initWithFactorName:(id)a3 assetId:(id)a4 filePath:(id)a5 factorPackId:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_8:
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3619 description:{@"Invalid parameter not satisfying: %@", @"assetId != nil"}];

    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3618 description:{@"Invalid parameter not satisfying: %@", @"factorName != nil"}];

  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v15)
  {
    goto LABEL_4;
  }

LABEL_9:
  v21 = [MEMORY[0x277CCA890] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3620 description:{@"Invalid parameter not satisfying: %@", @"factorPackId != nil"}];

LABEL_4:
  v22.receiver = self;
  v22.super_class = TRIFactorPackAsset;
  v16 = [(TRIFactorPackAsset *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_factorName, a3);
    objc_storeStrong(&v17->_assetId, a4);
    objc_storeStrong(&v17->_filePath, a5);
    objc_storeStrong(&v17->_factorPackId, a6);
  }

  return v17;
}

+ (id)assetWithFactorName:(id)a3 assetId:(id)a4 filePath:(id)a5 factorPackId:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithFactorName:v13 assetId:v12 filePath:v11 factorPackId:v10];

  return v14;
}

- (id)copyWithReplacementFactorName:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:v4 assetId:self->_assetId filePath:self->_filePath factorPackId:self->_factorPackId];

  return v5;
}

- (id)copyWithReplacementAssetId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:v4 filePath:self->_filePath factorPackId:self->_factorPackId];

  return v5;
}

- (id)copyWithReplacementFilePath:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:self->_assetId filePath:v4 factorPackId:self->_factorPackId];

  return v5;
}

- (id)copyWithReplacementFactorPackId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:self->_assetId filePath:self->_filePath factorPackId:v4];

  return v5;
}

- (BOOL)isEqualToAsset:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_14;
  }

  v6 = self->_factorName == 0;
  v7 = [v4 factorName];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_14;
  }

  factorName = self->_factorName;
  if (factorName)
  {
    v10 = [v5 factorName];
    v11 = [(NSString *)factorName isEqual:v10];

    if (!v11)
    {
      goto LABEL_14;
    }
  }

  v12 = self->_assetId == 0;
  v13 = [v5 assetId];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_14;
  }

  assetId = self->_assetId;
  if (assetId)
  {
    v16 = [v5 assetId];
    v17 = [(TRIAssetId *)assetId isEqual:v16];

    if (!v17)
    {
      goto LABEL_14;
    }
  }

  v18 = self->_filePath == 0;
  v19 = [v5 filePath];
  v20 = v19 != 0;

  if (v18 == v20)
  {
    goto LABEL_14;
  }

  filePath = self->_filePath;
  if (filePath)
  {
    v22 = [v5 filePath];
    v23 = [(NSString *)filePath isEqual:v22];

    if (!v23)
    {
      goto LABEL_14;
    }
  }

  v24 = self->_factorPackId == 0;
  v25 = [v5 factorPackId];
  v26 = v25 != 0;

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
      v28 = [v5 factorPackId];
      v29 = [(TRIFactorPackId *)factorPackId isEqual:v28];
    }

    else
    {
      v29 = 1;
    }
  }

  return v29 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIFactorPackAsset *)self isEqualToAsset:v5];
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