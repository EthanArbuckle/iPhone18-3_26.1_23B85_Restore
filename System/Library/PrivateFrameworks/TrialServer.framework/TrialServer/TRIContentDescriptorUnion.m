@interface TRIContentDescriptorUnion
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUnion:(id)a3;
- (TRIContentDescriptorUnion)initWithType:(unsigned __int8)a3 experiment:(id)a4 treatment:(id)a5 rollout:(id)a6 factorPackSet:(id)a7;
- (id)copyWithReplacementExperiment:(id)a3;
- (id)copyWithReplacementFactorPackSet:(id)a3;
- (id)copyWithReplacementRollout:(id)a3;
- (id)copyWithReplacementTreatment:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIContentDescriptorUnion

- (TRIContentDescriptorUnion)initWithType:(unsigned __int8)a3 experiment:(id)a4 treatment:(id)a5 rollout:(id)a6 factorPackSet:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = TRIContentDescriptorUnion;
  v17 = [(TRIContentDescriptorUnion *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_type = a3;
    objc_storeStrong(&v17->_experiment, a4);
    objc_storeStrong(&v18->_treatment, a5);
    objc_storeStrong(&v18->_rollout, a6);
    objc_storeStrong(&v18->_factorPackSet, a7);
  }

  return v18;
}

- (id)copyWithReplacementExperiment:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type experiment:v4 treatment:self->_treatment rollout:self->_rollout factorPackSet:self->_factorPackSet];

  return v5;
}

- (id)copyWithReplacementTreatment:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type experiment:self->_experiment treatment:v4 rollout:self->_rollout factorPackSet:self->_factorPackSet];

  return v5;
}

- (id)copyWithReplacementRollout:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type experiment:self->_experiment treatment:self->_treatment rollout:v4 factorPackSet:self->_factorPackSet];

  return v5;
}

- (id)copyWithReplacementFactorPackSet:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type experiment:self->_experiment treatment:self->_treatment rollout:self->_rollout factorPackSet:v4];

  return v5;
}

- (BOOL)isEqualToUnion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_15;
  }

  type = self->_type;
  if (type != [v4 type])
  {
    goto LABEL_15;
  }

  v7 = self->_experiment == 0;
  v8 = [v5 experiment];
  v9 = v8 != 0;

  if (v7 == v9)
  {
    goto LABEL_15;
  }

  experiment = self->_experiment;
  if (experiment)
  {
    v11 = [v5 experiment];
    v12 = [(TRIExperimentDeployment *)experiment isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  v13 = self->_treatment == 0;
  v14 = [v5 treatment];
  v15 = v14 != 0;

  if (v13 == v15)
  {
    goto LABEL_15;
  }

  treatment = self->_treatment;
  if (treatment)
  {
    v17 = [v5 treatment];
    v18 = [(TRITreatmentContentDescriptor *)treatment isEqual:v17];

    if (!v18)
    {
      goto LABEL_15;
    }
  }

  v19 = self->_rollout == 0;
  v20 = [v5 rollout];
  v21 = v20 != 0;

  if (v19 == v21)
  {
    goto LABEL_15;
  }

  rollout = self->_rollout;
  if (rollout)
  {
    v23 = [v5 rollout];
    v24 = [(TRIRolloutDeployment *)rollout isEqual:v23];

    if (!v24)
    {
      goto LABEL_15;
    }
  }

  v25 = self->_factorPackSet == 0;
  v26 = [v5 factorPackSet];
  v27 = v26 != 0;

  if (v25 == v27)
  {
LABEL_15:
    v30 = 0;
  }

  else
  {
    factorPackSet = self->_factorPackSet;
    if (factorPackSet)
    {
      v29 = [v5 factorPackSet];
      v30 = [(TRIFactorPackSetId *)factorPackSet isEqual:v29];
    }

    else
    {
      v30 = 1;
    }
  }

  return v30 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIContentDescriptorUnion *)self isEqualToUnion:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  type = self->_type;
  v4 = [(TRIExperimentDeployment *)self->_experiment hash]- type + 32 * type;
  v5 = [(TRITreatmentContentDescriptor *)self->_treatment hash]- v4 + 32 * v4;
  v6 = [(TRIRolloutDeployment *)self->_rollout hash]- v5 + 32 * v5;
  return [(TRIFactorPackSetId *)self->_factorPackSet hash]- v6 + 32 * v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_type];
  v5 = [v3 initWithFormat:@"<TRIContentDescriptorUnion | type:%@ experiment:%@ treatment:%@ rollout:%@ factorPackSet:%@>", v4, self->_experiment, self->_treatment, self->_rollout, self->_factorPackSet];

  return v5;
}

@end