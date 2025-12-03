@interface TRIPurgeableConstruct
+ (id)constructWithFactorPackId:(id)id treatmentId:(id)treatmentId namespaceName:(id)name purgeableAssetFactorNames:(id)names;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConstruct:(id)construct;
- (TRIPurgeableConstruct)initWithFactorPackId:(id)id treatmentId:(id)treatmentId namespaceName:(id)name purgeableAssetFactorNames:(id)names;
- (id)copyWithReplacementFactorPackId:(id)id;
- (id)copyWithReplacementNamespaceName:(id)name;
- (id)copyWithReplacementPurgeableAssetFactorNames:(id)names;
- (id)copyWithReplacementTreatmentId:(id)id;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIPurgeableConstruct

- (TRIPurgeableConstruct)initWithFactorPackId:(id)id treatmentId:(id)treatmentId namespaceName:(id)name purgeableAssetFactorNames:(id)names
{
  idCopy = id;
  treatmentIdCopy = treatmentId;
  nameCopy = name;
  namesCopy = names;
  v16 = namesCopy;
  if (nameCopy)
  {
    if (namesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3853 description:{@"Invalid parameter not satisfying: %@", @"namespaceName != nil"}];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3854 description:{@"Invalid parameter not satisfying: %@", @"purgeableAssetFactorNames != nil"}];

LABEL_3:
  v22.receiver = self;
  v22.super_class = TRIPurgeableConstruct;
  v17 = [(TRIPurgeableConstruct *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_factorPackId, id);
    objc_storeStrong(&v18->_treatmentId, treatmentId);
    objc_storeStrong(&v18->_namespaceName, name);
    objc_storeStrong(&v18->_purgeableAssetFactorNames, names);
  }

  return v18;
}

+ (id)constructWithFactorPackId:(id)id treatmentId:(id)treatmentId namespaceName:(id)name purgeableAssetFactorNames:(id)names
{
  namesCopy = names;
  nameCopy = name;
  treatmentIdCopy = treatmentId;
  idCopy = id;
  v14 = [[self alloc] initWithFactorPackId:idCopy treatmentId:treatmentIdCopy namespaceName:nameCopy purgeableAssetFactorNames:namesCopy];

  return v14;
}

- (id)copyWithReplacementFactorPackId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorPackId:idCopy treatmentId:self->_treatmentId namespaceName:self->_namespaceName purgeableAssetFactorNames:self->_purgeableAssetFactorNames];

  return v5;
}

- (id)copyWithReplacementTreatmentId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorPackId:self->_factorPackId treatmentId:idCopy namespaceName:self->_namespaceName purgeableAssetFactorNames:self->_purgeableAssetFactorNames];

  return v5;
}

- (id)copyWithReplacementNamespaceName:(id)name
{
  nameCopy = name;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorPackId:self->_factorPackId treatmentId:self->_treatmentId namespaceName:nameCopy purgeableAssetFactorNames:self->_purgeableAssetFactorNames];

  return v5;
}

- (id)copyWithReplacementPurgeableAssetFactorNames:(id)names
{
  namesCopy = names;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorPackId:self->_factorPackId treatmentId:self->_treatmentId namespaceName:self->_namespaceName purgeableAssetFactorNames:namesCopy];

  return v5;
}

- (BOOL)isEqualToConstruct:(id)construct
{
  constructCopy = construct;
  v5 = constructCopy;
  if (!constructCopy)
  {
    goto LABEL_14;
  }

  v6 = self->_factorPackId == 0;
  factorPackId = [constructCopy factorPackId];
  v8 = factorPackId != 0;

  if (v6 == v8)
  {
    goto LABEL_14;
  }

  factorPackId = self->_factorPackId;
  if (factorPackId)
  {
    factorPackId2 = [v5 factorPackId];
    v11 = [(TRIFactorPackId *)factorPackId isEqual:factorPackId2];

    if (!v11)
    {
      goto LABEL_14;
    }
  }

  v12 = self->_treatmentId == 0;
  treatmentId = [v5 treatmentId];
  v14 = treatmentId != 0;

  if (v12 == v14)
  {
    goto LABEL_14;
  }

  treatmentId = self->_treatmentId;
  if (treatmentId)
  {
    treatmentId2 = [v5 treatmentId];
    v17 = [(NSString *)treatmentId isEqual:treatmentId2];

    if (!v17)
    {
      goto LABEL_14;
    }
  }

  v18 = self->_namespaceName == 0;
  namespaceName = [v5 namespaceName];
  v20 = namespaceName != 0;

  if (v18 == v20)
  {
    goto LABEL_14;
  }

  namespaceName = self->_namespaceName;
  if (namespaceName)
  {
    namespaceName2 = [v5 namespaceName];
    v23 = [(NSString *)namespaceName isEqual:namespaceName2];

    if (!v23)
    {
      goto LABEL_14;
    }
  }

  v24 = self->_purgeableAssetFactorNames == 0;
  purgeableAssetFactorNames = [v5 purgeableAssetFactorNames];
  v26 = purgeableAssetFactorNames != 0;

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
      purgeableAssetFactorNames2 = [v5 purgeableAssetFactorNames];
      v29 = [(NSSet *)purgeableAssetFactorNames isEqual:purgeableAssetFactorNames2];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIPurgeableConstruct *)self isEqualToConstruct:v5];
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