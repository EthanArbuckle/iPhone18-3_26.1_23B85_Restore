@interface TRIRolloutIdentifiers
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRolloutIdentifiers:(id)a3;
- (TRIRolloutIdentifiers)initWithRolloutId:(id)a3 deploymentId:(int)a4 factorPackId:(id)a5 rampId:(id)a6;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIRolloutIdentifiers

- (TRIRolloutIdentifiers)initWithRolloutId:(id)a3 deploymentId:(int)a4 factorPackId:(id)a5 rampId:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = TRIRolloutIdentifiers;
  v14 = [(TRIRolloutIdentifiers *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_rolloutId, a3);
    v15->_deploymentId = a4;
    objc_storeStrong(&v15->_factorPackId, a5);
    objc_storeStrong(&v15->_rampId, a6);
  }

  return v15;
}

- (BOOL)isEqualToRolloutIdentifiers:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = self->_rolloutId == 0;
  v7 = [v4 rolloutId];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_12;
  }

  rolloutId = self->_rolloutId;
  if (rolloutId)
  {
    v10 = [v5 rolloutId];
    v11 = [(NSString *)rolloutId isEqual:v10];

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
  v14 = [v5 factorPackId];
  v15 = v14 != 0;

  if (v13 == v15)
  {
    goto LABEL_12;
  }

  factorPackId = self->_factorPackId;
  if (factorPackId)
  {
    v17 = [v5 factorPackId];
    v18 = [(NSString *)factorPackId isEqual:v17];

    if (!v18)
    {
      goto LABEL_12;
    }
  }

  v19 = self->_rampId == 0;
  v20 = [v5 rampId];
  v21 = v20 != 0;

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
      v23 = [v5 rampId];
      v24 = [(NSString *)rampId isEqual:v23];
    }

    else
    {
      v24 = 1;
    }
  }

  return v24 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIRolloutIdentifiers *)self isEqualToRolloutIdentifiers:v5];
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