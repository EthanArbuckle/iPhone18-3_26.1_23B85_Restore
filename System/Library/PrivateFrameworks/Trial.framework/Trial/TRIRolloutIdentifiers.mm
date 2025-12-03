@interface TRIRolloutIdentifiers
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRolloutIdentifiers:(id)identifiers;
- (TRIRolloutIdentifiers)initWithRolloutId:(id)id deploymentId:(int)deploymentId factorPackId:(id)packId rampId:(id)rampId;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIRolloutIdentifiers

- (TRIRolloutIdentifiers)initWithRolloutId:(id)id deploymentId:(int)deploymentId factorPackId:(id)packId rampId:(id)rampId
{
  idCopy = id;
  packIdCopy = packId;
  rampIdCopy = rampId;
  v17.receiver = self;
  v17.super_class = TRIRolloutIdentifiers;
  v14 = [(TRIRolloutIdentifiers *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_rolloutId, id);
    v15->_deploymentId = deploymentId;
    objc_storeStrong(&v15->_factorPackId, packId);
    objc_storeStrong(&v15->_rampId, rampId);
  }

  return v15;
}

- (BOOL)isEqualToRolloutIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = identifiersCopy;
  if (!identifiersCopy)
  {
    goto LABEL_12;
  }

  v6 = self->_rolloutId == 0;
  rolloutId = [identifiersCopy rolloutId];
  v8 = rolloutId != 0;

  if (v6 == v8)
  {
    goto LABEL_12;
  }

  rolloutId = self->_rolloutId;
  if (rolloutId)
  {
    rolloutId2 = [v5 rolloutId];
    v11 = [(NSString *)rolloutId isEqual:rolloutId2];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  deploymentId = self->_deploymentId;
  if (deploymentId != [v5 deploymentId])
  {
    goto LABEL_12;
  }

  v13 = self->_factorPackId == 0;
  factorPackId = [v5 factorPackId];
  v15 = factorPackId != 0;

  if (v13 == v15)
  {
    goto LABEL_12;
  }

  factorPackId = self->_factorPackId;
  if (factorPackId)
  {
    factorPackId2 = [v5 factorPackId];
    v18 = [(NSString *)factorPackId isEqual:factorPackId2];

    if (!v18)
    {
      goto LABEL_12;
    }
  }

  v19 = self->_rampId == 0;
  rampId = [v5 rampId];
  v21 = rampId != 0;

  if (v19 == v21)
  {
LABEL_12:
    v24 = 0;
  }

  else
  {
    rampId = self->_rampId;
    if (rampId)
    {
      rampId2 = [v5 rampId];
      v24 = [(NSString *)rampId isEqual:rampId2];
    }

    else
    {
      v24 = 1;
    }
  }

  return v24 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIRolloutIdentifiers *)self isEqualToRolloutIdentifiers:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_rolloutId hash];
  v4 = self->_deploymentId - v3 + 32 * v3;
  v5 = [(NSString *)self->_factorPackId hash]- v4 + 32 * v4;
  return [(NSString *)self->_rampId hash]- v5 + 32 * v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  rolloutId = self->_rolloutId;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_deploymentId];
  v6 = [v3 initWithFormat:@"<TRIRolloutIdentifiers | rolloutId:%@ deploymentId:%@ factorPackId:%@ rampId:%@>", rolloutId, v5, self->_factorPackId, self->_rampId];

  return v6;
}

@end