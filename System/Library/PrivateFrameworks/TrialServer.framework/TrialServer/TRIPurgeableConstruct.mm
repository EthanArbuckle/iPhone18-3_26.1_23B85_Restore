@interface TRIPurgeableConstruct
+ (id)constructWithFactorPackId:(id)a3 treatmentId:(id)a4 namespaceName:(id)a5 purgeableAssetFactorNames:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConstruct:(id)a3;
- (TRIPurgeableConstruct)initWithFactorPackId:(id)a3 treatmentId:(id)a4 namespaceName:(id)a5 purgeableAssetFactorNames:(id)a6;
- (id)copyWithReplacementFactorPackId:(id)a3;
- (id)copyWithReplacementNamespaceName:(id)a3;
- (id)copyWithReplacementPurgeableAssetFactorNames:(id)a3;
- (id)copyWithReplacementTreatmentId:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIPurgeableConstruct

- (TRIPurgeableConstruct)initWithFactorPackId:(id)a3 treatmentId:(id)a4 namespaceName:(id)a5 purgeableAssetFactorNames:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3853 description:{@"Invalid parameter not satisfying: %@", @"namespaceName != nil"}];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x277CCA890] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3854 description:{@"Invalid parameter not satisfying: %@", @"purgeableAssetFactorNames != nil"}];

LABEL_3:
  v22.receiver = self;
  v22.super_class = TRIPurgeableConstruct;
  v17 = [(TRIPurgeableConstruct *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_factorPackId, a3);
    objc_storeStrong(&v18->_treatmentId, a4);
    objc_storeStrong(&v18->_namespaceName, a5);
    objc_storeStrong(&v18->_purgeableAssetFactorNames, a6);
  }

  return v18;
}

+ (id)constructWithFactorPackId:(id)a3 treatmentId:(id)a4 namespaceName:(id)a5 purgeableAssetFactorNames:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithFactorPackId:v13 treatmentId:v12 namespaceName:v11 purgeableAssetFactorNames:v10];

  return v14;
}

- (id)copyWithReplacementFactorPackId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorPackId:v4 treatmentId:self->_treatmentId namespaceName:self->_namespaceName purgeableAssetFactorNames:self->_purgeableAssetFactorNames];

  return v5;
}

- (id)copyWithReplacementTreatmentId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorPackId:self->_factorPackId treatmentId:v4 namespaceName:self->_namespaceName purgeableAssetFactorNames:self->_purgeableAssetFactorNames];

  return v5;
}

- (id)copyWithReplacementNamespaceName:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorPackId:self->_factorPackId treatmentId:self->_treatmentId namespaceName:v4 purgeableAssetFactorNames:self->_purgeableAssetFactorNames];

  return v5;
}

- (id)copyWithReplacementPurgeableAssetFactorNames:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorPackId:self->_factorPackId treatmentId:self->_treatmentId namespaceName:self->_namespaceName purgeableAssetFactorNames:v4];

  return v5;
}

- (BOOL)isEqualToConstruct:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_14;
  }

  v6 = self->_factorPackId == 0;
  v7 = [v4 factorPackId];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_14;
  }

  factorPackId = self->_factorPackId;
  if (factorPackId)
  {
    v10 = [v5 factorPackId];
    v11 = [(TRIFactorPackId *)factorPackId isEqual:v10];

    if (!v11)
    {
      goto LABEL_14;
    }
  }

  v12 = self->_treatmentId == 0;
  v13 = [v5 treatmentId];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_14;
  }

  treatmentId = self->_treatmentId;
  if (treatmentId)
  {
    v16 = [v5 treatmentId];
    v17 = [(NSString *)treatmentId isEqual:v16];

    if (!v17)
    {
      goto LABEL_14;
    }
  }

  v18 = self->_namespaceName == 0;
  v19 = [v5 namespaceName];
  v20 = v19 != 0;

  if (v18 == v20)
  {
    goto LABEL_14;
  }

  namespaceName = self->_namespaceName;
  if (namespaceName)
  {
    v22 = [v5 namespaceName];
    v23 = [(NSString *)namespaceName isEqual:v22];

    if (!v23)
    {
      goto LABEL_14;
    }
  }

  v24 = self->_purgeableAssetFactorNames == 0;
  v25 = [v5 purgeableAssetFactorNames];
  v26 = v25 != 0;

  if (v24 == v26)
  {
LABEL_14:
    v29 = 0;
  }

  else
  {
    purgeableAssetFactorNames = self->_purgeableAssetFactorNames;
    if (purgeableAssetFactorNames)
    {
      v28 = [v5 purgeableAssetFactorNames];
      v29 = [(NSSet *)purgeableAssetFactorNames isEqual:v28];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIPurgeableConstruct *)self isEqualToConstruct:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(TRIFactorPackId *)self->_factorPackId hash];
  v4 = [(NSString *)self->_treatmentId hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_namespaceName hash]- v4 + 32 * v4;
  return [(NSSet *)self->_purgeableAssetFactorNames hash]- v5 + 32 * v5;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIPurgeableConstruct | factorPackId:%@ treatmentId:%@ namespaceName:%@ purgeableAssetFactorNames:%@>", self->_factorPackId, self->_treatmentId, self->_namespaceName, self->_purgeableAssetFactorNames];

  return v2;
}

@end