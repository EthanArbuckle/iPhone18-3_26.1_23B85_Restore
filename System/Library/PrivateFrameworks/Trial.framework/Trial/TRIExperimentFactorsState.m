@interface TRIExperimentFactorsState
- (BOOL)_isEqualToState:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TRIExperimentFactorsState)initWithDeployment:(id)a3 treatmentId:(id)a4;
- (id)description;
- (id)experimentIdentifiers;
- (id)persisted;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIExperimentFactorsState

- (TRIExperimentFactorsState)initWithDeployment:(id)a3 treatmentId:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"TRIFactorsState.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"deployment"}];
  }

  v15.receiver = self;
  v15.super_class = TRIExperimentFactorsState;
  v10 = [(TRIExperimentFactorsState *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_deployment, a3);
    objc_storeStrong(&v11->_treatmentId, a4);
    if (([(TRIExperimentFactorsState *)v11 conformsToProtocol:&unk_284371608]& 1) == 0)
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      [v14 handleFailureInMethod:a2 object:v11 file:@"TRIFactorsState.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"[self conformsToProtocol:@protocol(NSSecureCoding)]"}];
    }
  }

  return v11;
}

- (id)experimentIdentifiers
{
  v3 = [TRIFactorsStateExperimentIdentifiers alloc];
  v4 = [(TRIExperimentDeployment *)self->_deployment experimentId];
  v5 = [(TRIFactorsStateExperimentIdentifiers *)v3 initWithExperimentId:v4 deploymentId:[(TRIExperimentDeployment *)self->_deployment deploymentId] treatmentId:self->_treatmentId];

  return v5;
}

- (id)persisted
{
  v3 = objc_opt_new();
  v4 = [(TRIExperimentDeployment *)self->_deployment experimentId];
  v5 = [v3 experiment];
  [v5 setExperimentId:v4];

  v6 = [(TRIExperimentDeployment *)self->_deployment deploymentId];
  v7 = [v3 experiment];
  [v7 setDeploymentId:v6];

  treatmentId = self->_treatmentId;
  v9 = [v3 experiment];
  [v9 setTreatmentId:treatmentId];

  return v3;
}

- (BOOL)_isEqualToState:(id)a3
{
  deployment = self->_deployment;
  v4 = [a3 deployment];
  LOBYTE(deployment) = [(TRIExperimentDeployment *)deployment isEqualToDeployment:v4];

  return deployment;
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
    v6 = v4 && [(TRIExperimentFactorsState *)v4 isMemberOfClass:objc_opt_class()]&& [(TRIExperimentFactorsState *)self _isEqualToState:v5];
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TRIExperimentDeployment *)self->_deployment experimentId];
  v7 = [v3 initWithFormat:@"%@(deployment: %@.%d.%@)", v5, v6, -[TRIExperimentDeployment deploymentId](self->_deployment, "deploymentId"), self->_treatmentId];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  v5 = objc_opt_new();
  v6 = [(TRIExperimentDeployment *)self->_deployment experimentId];
  v7 = [v5 experiment];
  [v7 setExperimentId:v6];

  v8 = [(TRIExperimentDeployment *)self->_deployment deploymentId];
  v9 = [v5 experiment];
  [v9 setDeploymentId:v8];

  treatmentId = self->_treatmentId;
  v11 = [v5 experiment];
  [v11 setTreatmentId:treatmentId];

  v12 = [v5 data];
  if (!v12)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"TRIFactorsState.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  [v14 encodeObject:v12 forKey:@"data"];
}

@end