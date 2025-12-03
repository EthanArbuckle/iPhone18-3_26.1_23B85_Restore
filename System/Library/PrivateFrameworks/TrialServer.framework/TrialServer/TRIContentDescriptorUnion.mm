@interface TRIContentDescriptorUnion
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUnion:(id)union;
- (TRIContentDescriptorUnion)initWithType:(unsigned __int8)type experiment:(id)experiment treatment:(id)treatment rollout:(id)rollout factorPackSet:(id)set;
- (id)copyWithReplacementExperiment:(id)experiment;
- (id)copyWithReplacementFactorPackSet:(id)set;
- (id)copyWithReplacementRollout:(id)rollout;
- (id)copyWithReplacementTreatment:(id)treatment;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIContentDescriptorUnion

- (TRIContentDescriptorUnion)initWithType:(unsigned __int8)type experiment:(id)experiment treatment:(id)treatment rollout:(id)rollout factorPackSet:(id)set
{
  experimentCopy = experiment;
  treatmentCopy = treatment;
  rolloutCopy = rollout;
  setCopy = set;
  v20.receiver = self;
  v20.super_class = TRIContentDescriptorUnion;
  v17 = [(TRIContentDescriptorUnion *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_type = type;
    objc_storeStrong(&v17->_experiment, experiment);
    objc_storeStrong(&v18->_treatment, treatment);
    objc_storeStrong(&v18->_rollout, rollout);
    objc_storeStrong(&v18->_factorPackSet, set);
  }

  return v18;
}

- (id)copyWithReplacementExperiment:(id)experiment
{
  experimentCopy = experiment;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type experiment:experimentCopy treatment:self->_treatment rollout:self->_rollout factorPackSet:self->_factorPackSet];

  return v5;
}

- (id)copyWithReplacementTreatment:(id)treatment
{
  treatmentCopy = treatment;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type experiment:self->_experiment treatment:treatmentCopy rollout:self->_rollout factorPackSet:self->_factorPackSet];

  return v5;
}

- (id)copyWithReplacementRollout:(id)rollout
{
  rolloutCopy = rollout;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type experiment:self->_experiment treatment:self->_treatment rollout:rolloutCopy factorPackSet:self->_factorPackSet];

  return v5;
}

- (id)copyWithReplacementFactorPackSet:(id)set
{
  setCopy = set;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type experiment:self->_experiment treatment:self->_treatment rollout:self->_rollout factorPackSet:setCopy];

  return v5;
}

- (BOOL)isEqualToUnion:(id)union
{
  unionCopy = union;
  v5 = unionCopy;
  if (!unionCopy)
  {
    goto LABEL_15;
  }

  type = self->_type;
  if (type != [unionCopy type])
  {
    goto LABEL_15;
  }

  v7 = self->_experiment == 0;
  experiment = [v5 experiment];
  v9 = experiment != 0;

  if (v7 == v9)
  {
    goto LABEL_15;
  }

  experiment = self->_experiment;
  if (experiment)
  {
    experiment2 = [v5 experiment];
    v12 = [(TRIExperimentDeployment *)experiment isEqual:experiment2];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  v13 = self->_treatment == 0;
  treatment = [v5 treatment];
  v15 = treatment != 0;

  if (v13 == v15)
  {
    goto LABEL_15;
  }

  treatment = self->_treatment;
  if (treatment)
  {
    treatment2 = [v5 treatment];
    v18 = [(TRITreatmentContentDescriptor *)treatment isEqual:treatment2];

    if (!v18)
    {
      goto LABEL_15;
    }
  }

  v19 = self->_rollout == 0;
  rollout = [v5 rollout];
  v21 = rollout != 0;

  if (v19 == v21)
  {
    goto LABEL_15;
  }

  rollout = self->_rollout;
  if (rollout)
  {
    rollout2 = [v5 rollout];
    v24 = [(TRIRolloutDeployment *)rollout isEqual:rollout2];

    if (!v24)
    {
      goto LABEL_15;
    }
  }

  v25 = self->_factorPackSet == 0;
  factorPackSet = [v5 factorPackSet];
  v27 = factorPackSet != 0;

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
      factorPackSet2 = [v5 factorPackSet];
      v30 = [(TRIFactorPackSetId *)factorPackSet isEqual:factorPackSet2];
    }

    else
    {
      v30 = 1;
    }
  }

  return v30 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIContentDescriptorUnion *)self isEqualToUnion:v5];
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