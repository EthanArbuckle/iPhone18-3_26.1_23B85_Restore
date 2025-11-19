@interface TRIAssetIdFactorName
+ (id)nameWithAssetId:(id)a3 factorName:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToName:(id)a3;
- (TRIAssetIdFactorName)initWithAssetId:(id)a3 factorName:(id)a4;
- (id)copyWithReplacementAssetId:(id)a3;
- (id)copyWithReplacementFactorName:(id)a3;
- (id)description;
@end

@implementation TRIAssetIdFactorName

- (TRIAssetIdFactorName)initWithAssetId:(id)a3 factorName:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:2447 description:{@"Invalid parameter not satisfying: %@", @"assetId != nil"}];
  }

  v14.receiver = self;
  v14.super_class = TRIAssetIdFactorName;
  v10 = [(TRIAssetIdFactorName *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_assetId, a3);
    objc_storeStrong(&v11->_factorName, a4);
  }

  return v11;
}

+ (id)nameWithAssetId:(id)a3 factorName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithAssetId:v7 factorName:v6];

  return v8;
}

- (id)copyWithReplacementAssetId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithAssetId:v4 factorName:self->_factorName];

  return v5;
}

- (id)copyWithReplacementFactorName:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithAssetId:self->_assetId factorName:v4];

  return v5;
}

- (BOOL)isEqualToName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = self->_assetId == 0;
  v7 = [v4 assetId];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  assetId = self->_assetId;
  if (assetId)
  {
    v10 = [v5 assetId];
    v11 = [(TRIAssetId *)assetId isEqual:v10];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_factorName == 0;
  v13 = [v5 factorName];
  v14 = v13 != 0;

  if (v12 == v14)
  {
LABEL_8:
    v17 = 0;
  }

  else
  {
    factorName = self->_factorName;
    if (factorName)
    {
      v16 = [v5 factorName];
      v17 = [(NSString *)factorName isEqual:v16];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIAssetIdFactorName *)self isEqualToName:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIAssetIdFactorName | assetId:%@ factorName:%@>", self->_assetId, self->_factorName];

  return v2;
}

@end