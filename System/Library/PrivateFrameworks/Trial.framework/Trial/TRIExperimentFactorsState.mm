@interface TRIExperimentFactorsState
- (BOOL)_isEqualToState:(id)state;
- (BOOL)isEqual:(id)equal;
- (TRIExperimentFactorsState)initWithDeployment:(id)deployment treatmentId:(id)id;
- (id)description;
- (id)experimentIdentifiers;
- (id)persisted;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIExperimentFactorsState

- (TRIExperimentFactorsState)initWithDeployment:(id)deployment treatmentId:(id)id
{
  deploymentCopy = deployment;
  idCopy = id;
  if (!deploymentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFactorsState.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"deployment"}];
  }

  v15.receiver = self;
  v15.super_class = TRIExperimentFactorsState;
  v10 = [(TRIExperimentFactorsState *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_deployment, deployment);
    objc_storeStrong(&v11->_treatmentId, id);
    if (([(TRIExperimentFactorsState *)v11 conformsToProtocol:&unk_284371608]& 1) == 0)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v11 file:@"TRIFactorsState.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"[self conformsToProtocol:@protocol(NSSecureCoding)]"}];
    }
  }

  return v11;
}

- (id)experimentIdentifiers
{
  v3 = [TRIFactorsStateExperimentIdentifiers alloc];
  experimentId = [(TRIExperimentDeployment *)self->_deployment experimentId];
  v5 = [(TRIFactorsStateExperimentIdentifiers *)v3 initWithExperimentId:experimentId deploymentId:[(TRIExperimentDeployment *)self->_deployment deploymentId] treatmentId:self->_treatmentId];

  return v5;
}

- (id)persisted
{
  v3 = objc_opt_new();
  experimentId = [(TRIExperimentDeployment *)self->_deployment experimentId];
  experiment = [v3 experiment];
  [experiment setExperimentId:experimentId];

  deploymentId = [(TRIExperimentDeployment *)self->_deployment deploymentId];
  experiment2 = [v3 experiment];
  [experiment2 setDeploymentId:deploymentId];

  treatmentId = self->_treatmentId;
  experiment3 = [v3 experiment];
  [experiment3 setTreatmentId:treatmentId];

  return v3;
}

- (BOOL)_isEqualToState:(id)state
{
  deployment = self->_deployment;
  deployment = [state deployment];
  LOBYTE(deployment) = [(TRIExperimentDeployment *)deployment isEqualToDeployment:deployment];

  return deployment;
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
    v6 = equalCopy && [(TRIExperimentFactorsState *)equalCopy isMemberOfClass:objc_opt_class()]&& [(TRIExperimentFactorsState *)self _isEqualToState:v5];
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  experimentId = [(TRIExperimentDeployment *)self->_deployment experimentId];
  v7 = [v3 initWithFormat:@"%@(deployment: %@.%d.%@)", v5, experimentId, -[TRIExperimentDeployment deploymentId](self->_deployment, "deploymentId"), self->_treatmentId];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_new();
  experimentId = [(TRIExperimentDeployment *)self->_deployment experimentId];
  experiment = [v5 experiment];
  [experiment setExperimentId:experimentId];

  deploymentId = [(TRIExperimentDeployment *)self->_deployment deploymentId];
  experiment2 = [v5 experiment];
  [experiment2 setDeploymentId:deploymentId];

  treatmentId = self->_treatmentId;
  experiment3 = [v5 experiment];
  [experiment3 setTreatmentId:treatmentId];

  data = [v5 data];
  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFactorsState.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  [coderCopy encodeObject:data forKey:@"data"];
}

@end